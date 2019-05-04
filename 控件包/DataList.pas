unit DataList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

const
  { Integer のデータサイズ }
  IntegerSize = SizeOf(Integer);

  { バイナリデータ }
  BinaryData: set of Byte = [$00..$08, $0B, $0C, $0E..$1F, $FD..$FF];

  { テキストとして表示すると前後の表示が狂う場合があるデータ }
  BuggyData: set of Byte = [$7F, $80, $A0];

  { 2 バイト文字の 2 バイト目として許されるデータ }
  TrailData: set of Byte = [$20..$FC];

{ 16 進ダンプの表記レイアウト }
{
1---------11--------21--------31--------41--------51--------61--------71----
1234567890123456789012345678901234567890123456789012345678901234567890123456
00000000  00 00 00 00 00 00 00 00-00 00 00 00 00 00 00 00  ................ 
}

  { Shift-JIS の漢字データで 1 バイト目と 2 バイト目に使用するデータ }
  Kanji1Data: set of Byte = [$81..$9F, $E0..$FC]; // 漢字の 1 バイト目
  Kanji2Data: set of Byte = [$40..$7E, $80..$FC]; // 漢字の 2 バイト目

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティにおいて、Items[Index] のデータを ItemStep バイトづつ分割 }
{ して表示する際の ItemStep の下限値 }

  MinStep = 16 * 1024; // この値は、16 の倍数でかつ 32 以上の値にして下さい。

type
  PByte = ^Byte;
  PInteger = ^Integer;

  { データブロック情報(TDataList で使用される基本データ型) }
  PDataBlock = ^TDataBlock;
  TDataBlock = record
    Data: PChar;     // メモリ上のデータのポインタ(PChar 型)
    Size: Integer;   // データのサイズ(バイト単位 = 最大 2GB)
  end;

  { データブロック情報(コメントも付加出来る基本データ型) }
  PInfoBlock = ^TInfoBlock;
  TInfoBlock = record
    Data: PChar;     // メモリ上のデータのポインタ(PChar 型)
    Size: Integer;   // データのサイズ(バイト単位 = 最大 2GB)
    Comment: String; // データに関するコメント(複数行で入力可)
  end;

  { TDataList クラス }
  TDataList = class(TPersistent)
  private
    { Private 宣言 }
    FCount: Integer; // 全データ数
    FMemory: PChar; // 全データを格納したエリアのポインタ(PChar 型)
    FDataSize: Integer; // 全データの合計サイズ(FMemory のサイズ)
    FOffsets: PChar; // FMemory 上の各データのオフセット値を格納するエリア
    FAllowOverlapping: Boolean; // データの重複を許すかどうかを決めるスイッチ
    FBinaryOperation: Boolean; // バイナリ表記文字列を受け入れるか決めるスイッチ
    FDataOption: Boolean; // $20 より小さいデータは、全てバイナリ表記文字列で表記
    FItemPosition: Integer; // データを分割して表示する際のインデックス(-1 以上)
    FItemStep: Integer; // データを分割して表示する際のサイズ(16K バイト以上)
    FAllowEvent: Boolean; // 各イベントの発生を許可するかどうかを決めるフラグ
    FTagStr: String; // 文字列タグ
    FOnChange: TNotifyEvent;
    FOnChanged: TNotifyEvent;
    function GetOffset(Index: Integer): Integer;
    function GetOverlapping: Boolean;
    function GetItem(Index: Integer): TDataBlock;
    function GetTextItem(Index: Integer): String;
    function GetCrystalItem(Index: Integer): String;
    function GetDumpItem(Index: Integer): String;
    function GetBinaryItem(Index: Integer): String;
    function GetMaxPosition(Index: Integer): Integer;
    function GetPositionSize(Index: Integer): Integer;
    procedure SetOffset(Index: Integer; const Value: Integer);
    procedure SetItem(Index: Integer; const Value: TDataBlock);
    procedure SetTextItem(Index: Integer; const Value: String);
    procedure SetDumpItem(Index: Integer; const Value: String);
    procedure SetAllowOverlapping(const Value: Boolean);
    procedure SetItemPosition(const Value: Integer);
    procedure SetItemStep(const Value: Integer);
    function CompareDataBlock(D1: TDataBlock; D2: TDataBlock): Integer;
    function SCompare(Index1, Index2: Integer; Order: Boolean): Integer;
    procedure QuickSort(L, R: Integer; Order: Boolean);
  protected
    { Protected 宣言 }
    procedure Change; dynamic;
    procedure Changed; dynamic;
    function Text2Data(S: String): TDataBlock; virtual;
    function Data2Text(D: TDataBlock): String; virtual;
    function Data2Texts(D: array of TDataBlock): String; virtual;
    function Crystal(D: TDataBlock): String; virtual;
    function Crystals(D: array of TDataBlock): String; virtual;
    function Dump2Data(S: String): TDataBlock; virtual;
    function Dump(D: TDataBlock; Adr: Integer): String; virtual;
    function Dumps(D: array of TDataBlock; Adr: Integer): String; virtual;
    function Binary(D: TDataBlock): String; virtual;
    function Binaries(D: array of TDataBlock): String; virtual;
    { プロパティ宣言 }
    property Offsets[Index: Integer]: Integer read GetOffset write SetOffset;
  public
    { Public 宣言 }
    constructor Create;
    destructor Destroy; override;
    procedure Clear; virtual;
    function Clean: Integer;  virtual;
    function Pack: Integer;  virtual;
    function IsBinary(Index: Integer): Boolean; virtual;
    function BinaryDescription(Index: Integer): Boolean; virtual;
    function Add(const Item: TDataBlock): Integer;
    procedure Assign(Source: TPersistent); override;
    procedure Insert(Index: Integer; const Item: TDataBlock); virtual;
    procedure Delete(Index: Integer); virtual;
    procedure Exchange(Index1, Index2: Integer); virtual;
    procedure Move(CurIndex: Integer; NewIndex: Integer); virtual;
    function Copy(Index: Integer): TDataBlock; virtual;
    function IndexOf(const Item: TDataBlock): Integer; virtual;
    function IndexOfText(const Item: String): Integer; virtual;
    function AddText(const Item: String): Integer; virtual;
    procedure InsertText(Index: Integer; const Item: String); virtual;
    function AddFile(const FileName: String): Integer; virtual;
    procedure InsertFile(Index: Integer; const FileName: String); virtual;
    procedure LoadFromStream(Stream: TStream); virtual;
    procedure LoadFromFile(const FileName: String); virtual;
    procedure LoadFile(Index: Integer; const FileName: String); virtual;
    procedure SaveToStream(Stream: TStream); virtual;
    procedure SaveToFile(const FileName: String); virtual;
    procedure SaveFile(Index: Integer; const FileName: String); virtual;
    procedure Sort(Order: Boolean); virtual;
    { プロパティ宣言 }
    property Overlapping: Boolean read GetOverlapping;
    property Count: Integer read FCount;
    property DataSize: Integer read FDataSize;
    property Memory: PChar read FMemory;
    property Items[Index: Integer]: TDataBlock read GetItem write SetItem; default;
    property TextItems[Index: Integer]: String read GetTextItem write SetTextItem;
    property CrystalItems[Index: Integer]: String read GetCrystalItem;
    property DumpItems[Index: Integer]: String read GetDumpItem write SetDumpItem;
    property BinaryItems[Index: Integer]: String read GetBinaryItem;
    property MaxPosition[Index: Integer]: Integer read GetMaxPosition;
    property PositionSize[Index: Integer]: Integer read GetPositionSize;
    property AllowOverlapping: Boolean read FAllowOverlapping write SetAllowOverlapping default True;
    property BinaryOperation: Boolean read FBinaryOperation write FBinaryOperation default False;
    property DataOption: Boolean read FDataOption write FDataOption default False;
    property ItemPosition: Integer read FItemPosition write SetItemPosition default -1;
    property ItemStep: Integer read FItemStep write SetItemStep default 16384;
    property TagStr: String read FTagStr write FTagStr;
    { イベント宣言 }
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnChanged: TNotifyEvent read FOnChanged write FOnChanged;
  end;

function StrByteTypeX(P: PChar; Size: Integer; Index: Integer): TMbcsByteType;

function ByteTypeX(const S: String; Index: Integer): TMbcsByteType;

function CPos(Ch: Char; const S: String; Index: Integer): Integer;

function IsBinaryData(P: PChar; Size: Integer; Index: Integer): Boolean;

function HasBinary(const P: PChar; Len: Integer): Boolean;

function UseBinaryDescription(const P: PChar; Len: Integer; DataOption: Boolean): Boolean;

implementation

{ StrByteTypeX は，文字列のバイトが 1 バイト文字，2 バイト文字の最初の }
{ バイト，2 バイト文字の 2 番目のバイトのいずれであるかを示します。}
{ この関数は、StrByteType 関数の修正版です。StrByteType では、mbLeadByte }
{ を返してもその次のバイトが、必ずしも2 バイト文字の第 2 バイトではない、}
{ あるいは、mbTrailByte を返してもそのバイトが、必ずしも2 バイト文字の第 2 }
{ バイトではないといった事が、かなりの確率で起こります。$00 が、2 バイト }
{ 文字の第 2 バイトになってしまうという事もしばしぱです。残念ながら完全な }
{ バグ修正版ではありませんが、この様な不具合をかなりの確率で軽減した関数が、}
{ StrByteTypeX です。}

function StrByteTypeX(P: PChar; Size: Integer; Index: Integer): TMbcsByteType;
var
  i: Integer;
begin
  Result := mbSingleByte;

  if (P = Nil) or (Size <= 0) or (Index < 0) or (Index >= Size) or
     (Byte(P[Index]) = $00) then
    Exit;

  if (Index = 0) then
  begin
    if (Size >= 2) and (P[0] in LeadBytes) and (Byte(P[1]) in TrailData) then
      Result := mbLeadByte;
  end
  else
  begin
    i := Index - 1;
    while (i >= 0) and (P[i] in LeadBytes) and (Byte(P[i + 1]) in TrailData) do
      Dec(i);
    if ((Index - i) mod 2) = 0 then
      Result := mbTrailByte
    else if (Index < Size - 1) and (P[Index] in LeadBytes) and
            (Byte(P[Index + 1]) in TrailData) then
      Result := mbLeadByte;
  end;
end;

{ ByteTypeX は，文字列のバイトが 1 バイト文字，2 バイト文字の最初の }
{ バイト，2 バイト文字の 2 番目のバイトのいずれであるかを示します。}
{ この関数は、ByteType 関数の修正版です。ByteType では、mbLeadByte }
{ を返してもその次のバイトが、必ずしも2 バイト文字の第 2 バイトではない、}
{ あるいは、mbTrailByte を返してもそのバイトが、必ずしも2 バイト文字の第 2 }
{ バイトではないといった事が、かなりの確率で起こります。$00 が、2 バイト }
{ 文字の第 2 バイトになってしまうという事もしばしぱです。残念ながら完全な }
{ バグ修正版ではありませんが、この様な不具合をかなりの確率で軽減した関数が、}
{ ByteTypeX です。}

function ByteTypeX(const S: String; Index: Integer): TMbcsByteType;
var
  i: Integer;
  Len: Integer;
begin
  Result := mbSingleByte;
  Len := Length(S);

  if (S = '') or (Index < 1) or (Index > Len) or (Byte(S[Index]) = $00) then
    Exit;

  if (Index = 1) then
  begin
    if (Len >= 2) and (S[1] in LeadBytes) and (Byte(S[2]) in TrailData) then
      Result := mbLeadByte;
  end
  else
  begin
    i := Index - 1;
    while (i >= 1) and (S[i] in LeadBytes) and (Byte(S[i + 1]) in TrailData) do
      Dec(i);
    if ((Index - i) mod 2) = 0 then
      Result := mbTrailByte
    else if (Index < Len) and (S[Index] in LeadBytes) and
            (Byte(S[Index + 1]) in TrailData) then
      Result := mbLeadByte;
  end;
end;

{ 文字列 S の Index バイト目以降で最初に1 バイト文字 Ch が見つかった }
{ 位置を返す関数。エラーあるいは見つからなかった場合の戻り値は、0 です。}

function CPos(Ch: Char; const S: String; Index: Integer): Integer;
var
  i: Integer;
begin
  Result := 0; // エラーあるいは見つからなかった場合の戻り値
  if Index < 1 then
    Exit;
  for i := Index to Length(S) do
  begin
    if (S[i] = Ch) and (ByteTypeX(S, i) = mbSingleByte) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

{ IsBinaryData は，文字列のバイトが、バイナリデータであるかどうかを }
{ 返します。TDataList では、以下の様にバイナリデータを定義します。}
{ 1) BinaryData の場合 }
{ 2) 2 バイト文字の第 1 バイトでかつそれが、末尾のバイトあるいは、 }
{    次のバイトが、$20 より小さい場合 }
{ 3) BuggyData でかつそれが、1 バイト文字の場合 }

function IsBinaryData(P: PChar; Size: Integer; Index: Integer): Boolean;
begin
  Result := False;

  if (P = Nil) or (Size <= 0) or (Index < 0) or (Index >= Size) then
    Exit;

  if StrByteTypeX(P, Size, Index) <> mbSingleByte then
    Exit; // mbLeadByte or mbTrailByte

  if (Byte(P[Index]) in BinaryData) or (Byte(P[Index]) in BuggyData) then
    Result := True
  else if StrByteType(P, Index) = mbLeadByte then
  begin
    if not (Byte(P[Index + 1]) in TrailData) then
      Result := True;
  end
  else if StrByteType(P, Index) = mbTrailByte then
  begin
    if not (Byte(P[Index]) in TrailData) then
      Result := True;
  end;
end;

{ P からの Len バイトにバイナリデータがあるかどうかを調べる関数です。}
{ バイナリデータがあれば、True をそうでなければ、False を返します。}

function HasBinary(const P: PChar; Len: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  if (P = Nil) or (Len <= 0) then
    Exit;

  for i := 0 to Len - 1 do
  begin
    if IsBinaryData(P, Len, i) then // バイナリデータを含んでいた。
    begin
      Result := True;
      Break;
    end;
  end;
end;

{ P からの Len バイトをテキスト表現した場合にバイナリ表記文字列を }
{ 使用するかどうかを調べる関数です。使用する様であれば、True を }
{ そうでなければ、False を返します。}
{ DataOption = True の場合は、バイナリデータでなくとも $20 より小さい }
{ データは、全てバイナリ表記文字列で表記する事を前提とします。}

function UseBinaryDescription(const P: PChar; Len: Integer; DataOption: Boolean): Boolean;
var
  i: Integer;
begin
  Result := False;

  if HasBinary(P, Len) then
  begin
    Result := True;
    Exit;
  end;

  if DataOption = False then
    Exit;

  for i := 0 to Len - 1 do
  begin
    if (Byte(P[i]) < $20) then
    begin
      Result := True;
      Break;
    end;
  end;
end;

{ TDataList クラス }

constructor TDataList.Create;
begin
  inherited Create;
  FMemory := Nil;
  ReallocMem(FMemory, 2);
  ZeroMemory(FMemory, 2);
  FOffsets := Nil;
  ReallocMem(FOffsets, IntegerSize);
  ZeroMemory(FOffsets, IntegerSize);
  FAllowEvent := True; // イベントの発生を許可する。
  FAllowOverlapping := True; // データの重複を許す。
  FBinaryOperation := False; // バイナリ表記文字列を受け入れない。
  FDataOption := False; // $20 より小さいデータを、全てバイナリ表記文字列で表記することはしない。
  FItemPosition := -1; // データを分割して表示する際のインデックス(-1 以上)
  FItemStep := MinStep; // データを分割して表示する際のサイズ(MinStep 以上)
  FTagStr := '';
  Clear;
end;

destructor TDataList.Destroy;
begin
  FOnChange := Nil;
  FOnChanged := Nil;
  ReallocMem(FOffsets, 0);
  ReallocMem(FMemory, 0);
  inherited Destroy;
end;

{ 新しいデータをリストに追加する関数です。戻り値は、リスト内のデータ }
{ の位置です。}

function TDataList.Add(const Item: TDataBlock): Integer;
begin
  Insert(FCount, Item); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ ファイルの内容をデータとしてリストに追加する関数です。戻り値は、}
{ リスト内のデータの位置です。}

function TDataList.AddFile(const FileName: String): Integer;
begin
  InsertFile(FCount, FileName); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ 文字データをリストに追加する関数です。戻り値は、リスト内のデータの }
{ 位置です。BinaryOperation が True のときは、バイナリ表記文字列の変換 }
{ 規則に従ってデータ変換を行なってから追加をします。BinaryOperation が }
{ False のときは、与えられた文字データそのものを追加します。}

function TDataList.AddText(const Item: String): Integer;
begin
  InsertText(FCount, Item); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ 他のオブジェクトの内容をコピーする手続きです。}

procedure TDataList.Assign(Source: TPersistent);
var
  i: Integer;
begin
  Change;    // OnChange イベントをここで発生
  FAllowEvent := False; // 各イベントの発生を禁止する。
  try
    if Source is TDataList then
    begin
      Clear;
      FCount := TDataList(Source).Count; // 全データ数
      FDataSize := TDataList(Source).DataSize; // 全データの合計サイズ(FMemory のサイズ)
      ReallocMem(FOffsets, (FCount + 1) * IntegerSize); // (Count + 1) * 4 バイト
      for i := 0 to FCount do // 各データのオフセット値を書き込む。
        Offsets[i] := TDataList(Source).Offsets[i];
      ReallocMem(FMemory, FDataSize + 2); // 全データを格納するエリア
      FMemory[FDataSize] := Chr($00);
      FMemory[FDataSize + 1] := Chr($00);
      CopyMemory(FMemory, TDataList(Source).Memory, FDataSize);
      FAllowOverlapping := TDataList(Source).AllowOverlapping;
      FBinaryOPeration := TDataList(Source).BinaryOPeration; // バイナリ表記文字列を受け入れるか決めるスイッチ
      if FAllowOverlapping = False then
        Clean;
    end
    else
      inherited Assign(Source);
  finally
    FAllowEvent := True; // 各イベントの発生を許可する。
  end;
  Changed;    // OnChanged イベントをここで発生
end;

{ データをバイナリ表現する関数です。バイナリ表現とは、データ中の }
{ バイナリデータは全て '.' 文字で表現し、それ以外の部分は、そのまま }
{ 表現する表現方法の事です。戻り値は、バイナリ表現したテキストです。}
{ バイナリ表現は、バイナリデータを対象とする場合に、我々が文字として }
{ 認識出来る部分のみを確認する為の手段となります。}

function TDataList.Binary(D: TDataBlock): String;
var
  P: PChar;
  i: Integer;
begin
  Result := '';
  if (D.Data = Nil) or (D.Size <= 0) then
    Exit;

  P := D.Data;
  SetLength(Result, D.Size);
  for i := 0 to (D.Size - 1) do
  begin
    if IsBinaryData(P, D.Size, i) then
      Result[i + 1] := '.' // 表示出来ないデータ
    else
      Result[i + 1] := P[i];
  end;
end;

{ 複数のデータを連続したデータの様に見なしてバイナリ表現する関数です。}
{ D は、データの配列です。戻り値は、バイナリ表現したテキストです。 }

function TDataList.Binaries(D: array of TDataBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Binary(D[i]);
end;

procedure TDataList.Change;
begin
  if Assigned(FOnChange) and FAllowEvent then
    FOnChange(Self);  // イベントハンドラの呼び出し
end;

procedure TDataList.Changed;
begin
  if Assigned(FOnChanged) and FAllowEvent then
    FOnChanged(Self);  // イベントハンドラの呼び出し
end;

{ リスト内の重複データを全て削除する関数です。}
{ 戻り値は、削除したデータの個数です。}

function TDataList.Clean: Integer;
var
  i, j: Integer;
  Allow: Boolean;
begin
  Result := 0;
  if FCount < 2 then
    Exit;

  if FAllowEvent then
    Allow := True
  else
    Allow := False;

  Change;    // OnChange イベントをここで発生
  if Allow then
    FAllowEvent := False; // 各イベントの発生を禁止する。
  try
    i := 0;
    j := FCount - 1;
    while i < j do
    begin
      while i < j do
      begin
        if (Items[i].Size = Items[j].Size) and (CompareDataBlock(Items[i], Items[j]) = 0) then
        begin
          Delete(j);
          Inc(Result);
        end;
        Dec(j);
      end;
      j := FCount - 1;
      Inc(i);
    end;
  finally
    if Allow then
      FAllowEvent := True; // 各イベントの発生を許可する。
  end;
  Changed;    // OnChanged イベントをここで発生
end;

{ リストから全データを削除する手続きです。}

procedure TDataList.Clear;
var
  P: PInteger;
begin
  Change;    // OnChange イベントをここで発生
  FCount := 0;
  FDataSize := 0;
  ReallocMem(FMemory, FDataSize + 2);
  FMemory[FDataSize] := Chr($00);
  FMemory[FDataSize + 1] := Chr($00);
  ReallocMem(FOffsets, (FCount + 1) * IntegerSize); // (Count + 1) * 4 バイト
  PChar(P) := FOffsets + (FCount * IntegerSize); // Count 番目
  P^ := FDataSize; // データの最後尾のオフセット値(全データの合計サイズ)
  Changed;    // OnChanged イベントをここで発生
end;

{ データブロックのデータの大小を比較する関数です。}
{ 戻り値は、以下の様になります。}
{ Result < 0  :  D1 < D2 の場合 }
{ Result = 0  :  D1 = D2 の場合 }
{ Result > 0  :  D1 > D2 の場合 }

function TDataList.CompareDataBlock(D1: TDataBlock; D2: TDataBlock): Integer;
var
  i, n: Integer;
  P1, P2: PChar;
begin
  if (D1.Data = Nil) or (D1.Size < 0) then
    D1.Size := 0;

  if (D2.Data = Nil) or (D2.Size < 0) then
    D2.Size := 0;

  Result := D1.Size - D2.Size;
  P1 := D1.Data;
  P2 := D2.Data;
  if (P1 = Nil) or (P2 = Nil) or // Nil ポインタの場合や
     (P1 = P2) then // 同じポインタのデータを比較しようとしている様な場合
    Exit;

  if D1.Size < D2.Size then
    n := D1.Size
  else
    n := D2.Size;

  Result := 0;
  for i := 0 to n - 1 do
  begin
    if P1[i] <> P2[i] then
    begin
      Result := Ord(P1[i]) - Ord(P2[i]);
      Break;
    end;
  end;
  if Result = 0 then // n バイト目まで、同じデータであった場合
    Result := D1.Size - D2.Size;
end;

{ 動的にメモリを割り当てて、Index 番目のデータブロックのコピーを返します。}
{ 呼び出し側は、使用後は、このコピーされたデータブロックのメモリ(Result.Data) }
{ を解放しなければなりません。}

function TDataList.Copy(Index: Integer): TDataBlock;
var
  Item: TDataBlock;
  P: PChar;
begin
  Item := Items[Index]; // Index 番目のデータブロック
  Result.Data := Nil;
  ReallocMem(Result.Data, Item.Size + 2); // 2 バイト多く確保する。
  CopyMemory(Result.Data, Item.Data, Item.Size);
  P := Result.Data;
  P[Item.Size] := Chr($00);
  P[Item.Size + 1] := Chr($00);
  Result.Size := Item.Size;
end;

{ データをクリスタル表現する関数です。クリスタル表現とは、データ中の }
{ 文字データのみを表現し、それ以外の部分は、何も表現しない表現方法の }
{ 事です。戻り値は、クリスタル表現したテキストです。クリスタル表現は、}
{ バイナリデータを対象とする場合に、サイズも小さくなり我々が文字として }
{ 認識出来る部分のみを確認する為の最良の手段となります。}

function TDataList.Crystal(D: TDataBlock): String;
var
  P: PChar;
  i, a, c: Integer;
begin
  Result := '';
  if (D.Data = Nil) or (D.Size <= 0) then
    Exit;

  a := 1024; // 1k バイト
  c := 0;
  P := D.Data;
  SetLength(Result, a);
  for i := 0 to (D.Size - 1) do
  begin
    if (a - c) < 16 then
    begin
      a := a + 1024;
      SetLength(Result, a);
    end;
    if IsBinaryData(P, D.Size, i) then
    begin
      if (c > 0) and (i < D.Size - 1) and
         (not IsBinaryData(P, D.Size, i + 1)) then
      begin // バイナリデータをはさんで、関係無く存在していた2バイトが
        Result[c + 1] := ' '; // つながった時、他のモードの場合には現われない
        Inc(c); // 2バイト文字として現われる事を防ぐ為の措置です。
      end;
    end
    else
    begin
      Result[c + 1] := P[i];
      Inc(c);
    end;
  end;
  SetLength(Result, c);
end;

{ 複数のデータを連続したデータの様に見なしてクリスタル表現する関数です。}
{ D は、データの配列です。戻り値は、クリスタル表現したテキストです。 }

function TDataList.Crystals(D: array of TDataBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Crystal(D[i]);
end;

{ TDataBlock 形式で与えられたデータを文字データに変換して返す関数です。}
{ データがバイナリデータを含む場合は、その部分をバイナリ表記文字列で表現 }
{ します。バイナリデータを含まない場合は、与えられたデータそのものが }
{ 文字データであるということになりますので、そのまま返します。}
{ 仮に与えられたデータが、バイナリデータを含む様な場合でもそのときの }
{ BinaryOperation プロパティの値は、変化しないという仕様にしてあります }
{ のでご注意下さい。}

function TDataList.Data2Text(D: TDataBlock): String;
var
  i, j: Integer;
  P: PChar;
  CP: PChar;
  Len: Integer;
  H: String;
  inBinary: Boolean;
  bt: TMbcsByteType;
begin
  Result := '';
  if (D.Data = Nil) or (D.Size <= 0) then
    Exit;

  P := D.Data;
  if UseBinaryDescription(D.Data, D.Size, FDataOption) = False then
  begin // バイナリ表記文字列を使用しない場合
    SetLength(Result, D.Size);
    for i := 0 to D.Size - 1 do
      Result[i + 1] := P[i];
    Exit;
  end;

  CP := Nil;
  Len := D.Size + 8;
  ReallocMem(CP, Len);
  i := 0;  // データのインデックス
  j := 0;  // コードのインデックス
  inBinary := False;

  while i < D.Size do
  begin
    if j + 8 > Len then
    begin
      Len := Len + 8;
      ReallocMem(CP, Len);
    end;
    bt := StrByteTypeX(P, D.Size, i);
    if IsBinaryData(P, D.Size, i) or
     ((FDataOption = True) and (Byte(P[i]) < $20)) then
    begin // バイナリデータの時あるいは、DataOption によりバイナリ表記する場合
      if inBinary = False then
      begin
        CP[j] := '~'; // Start of Binary Data
        Inc(j);
        inBinary := True;
      end;
      H := IntToHex(Byte(P[i]), 2);
      CP[j] := H[1];
      Inc(j);
      CP[j] := H[2];
      Inc(j);
    end
    else if bt = mbSingleByte then // １バイト文字
    begin
      if inBinary = True then
      begin
        CP[j] := '~'; // End of Binary Data
        Inc(j);
        inBinary := False;
      end;
      CP[j] := P[i];
      Inc(j);
      if P[i] = '~' then
      begin
        CP[j] := '~';
        Inc(j);
      end;
    end
    else if bt = mbLeadByte then // ２バイト文字の１バイト目
    begin
      if inBinary = True then
      begin
        CP[j] := '~'; // End of Binary Data
        Inc(j);
        inBinary := False;
      end;
      CP[j] := P[i];
      Inc(j);
      Inc(i);
      CP[j] := P[i];
      Inc(j);
    end;
    Inc(i);
  end;
  if inBinary = True then
  begin
    CP[j] := '~'; // End of Binary Data
    Inc(j);
  end;

  CP[j] := Chr($00); // End of String
  Result := CP; // Create String
  ReallocMem(CP, 0); // Free Memory
end;

{ 複数のデータを連続したデータの様に見なして文字データに変換して返す }
{ 関数です。D は、データの配列です。連続したデータ中にバイナリデータ }
{ があれば、その部分をバイナリ表記文字列で表現します。}

function TDataList.Data2Texts(D: array of TDataBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Data2Text(D[i]);
end;

{ Index 番目のデータをリストから削除する手続きです。 }

procedure TDataList.Delete(Index: Integer);
var
  i: Integer;
  d: Integer;
begin
  if (Index < 0) or (Index > FCount - 1) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount - 1]);

  Change;    // OnChange イベントをここで発生
  d := Offsets[Index + 1] - Offsets[Index]; // 削除するデータのサイズ
  if d > 0 then
  begin
    MoveMemory(FMemory + Offsets[Index],
               FMemory + Offsets[Index + 1],
               Offsets[FCount] - Offsets[Index + 1]); // 移動するデータの合計サイズ
    ReallocMem(FMemory, FDataSize - d + 2); // d バイト減らす。
    FMemory[FDataSize - d] := Chr($00);
    FMemory[FDataSize - d + 1] := Chr($00);
  end;

  for i := Index to FCount - 1 do
    Offsets[i] := Offsets[i + 1] - d;
  ReallocMem(FOffsets, FCount * IntegerSize); // IntegerSize バイト減らす。
  FCount := FCount - 1;
  FDataSize := FDataSize - d;
  Changed;    // OnChanged イベントをここで発生
end;

{ データを 16 進ダンプする関数です。Adr は、先頭の表示アドレスです。}
{ 戻り値は、16 進ダンプしたテキストです。}

function TDataList.Dump(D: TDataBlock; Adr: Integer): String;
var
  P: PChar;
  Bar: String;
  i, j: Integer;
  LC, Odd: Integer;
  N, C, A: Integer;
  x, y: Integer;
begin
  Result := '';
  if (D.Data = Nil) or (D.Size <= 0) then
    Exit;

  Bar := '';
  SetLength(Bar, 78); // 78 文字の行
  Bar[77] := #13; Bar[78] := #10; // 改行コード
  LC := D.Size div 16;
  Odd := D.Size mod 16;
  if Odd > 0 then
    Inc(LC);
  P := D.Data;
  i := 0;

  for C := 1 to LC do
  begin
    for j := 1 to 76 do
      Bar[j] := ' ';

    A := Adr;
    //{ アドレス表示部分 }
    for j := 8 downto 1 do
    begin
      x := A and $0F;
      if x < 10 then
        x := x + $30  // $30 = '0'
      else
        x := x + $41 - 10; // $41 = 'A';
      Bar[j] := Chr(x);
      A := A shr 4;
    end;

    { 表示サイズを決める。}
    if (C = LC) and (Odd > 0) then
      N := Odd
    else
      N := 16;

    for j := 1 to N do
    begin
      { 16 進表記部分 }
      y := Integer(P[i]);
      x := y and $0F; // 下位 4 ビット
      if x < 10 then
        x := x + $30 // $30 = '0'
      else
        x := x + $41 - 10; // $41 = 'A';
      Bar[9 + j * 3] := Chr(x);
      x := y shr 4; // 上位 4 ビット
      if x < 10 then
        x := x + $30 // $30 = '0'
      else
        x := x + $41 - 10; // $41 = 'A';
      Bar[8 + j * 3] := Chr(x);

      if j = 9 then
        Bar[34] := '-';

      { キャラクタ表示部分 }
      if (Byte(P[i]) < $20) or IsBinaryData(P, D.Size, i) then
        Bar[59 + j] := '.' // 表示出来ないデータ
      else if StrByteTypeX(P, D.Size, i) = mbLeadByte then
      begin
        Bar[59 + j] := P[i];
        if j = 16 then
          Bar[60 + j] := P[i + 1];
      end
      else
      begin
        if (j = 1) and (StrByteTypeX(P, D.Size, i) = mbTrailByte) then
          Bar[59 + j] := ' '
        else
          Bar[59 + j] := P[i];
      end;

      Inc(i);
    end;

    Result := Result + Bar;
    Adr := Adr + 16;
  end;
  SetLength(Bar, 0);
end;

{ 16 進ダンプ表現されたテキストを TDataBlock 形式のデータに変換して }
{ 返す関数です。呼び出し側は、使用後は、このデータブロックのメモリ }
{ (Result.Data)を解放しなければなりません。}

function TDataList.Dump2Data(S: String): TDataBlock;
var
  i, j, k: Integer;
  p1, p2, p3: Integer;
  Len: Integer;
  H: String;
  e: Integer;
  P: PChar;
begin
  Result.Data := Nil;
  Result.Size := 0;
  if S = '' then
    Exit;

  Len := Length(S);
  Result.Size := (Len div 4) + 1024;
  ReallocMem(Result.Data, Result.Size);
  P := Result.Data;
  i := 1;  // テキストのインデックス
  j := 0;  // データのインデックス
  H := '$00';

  while i <= Len do
  begin
    p1 := 0;
    for k := i to Len - 1 do
    begin
      if (S[k] = ' ') and (S[k + 1] = ' ') then
      begin
        p1 := k;
        Break;
      end;
    end;
    if p1 = 0 then // この様な場合は、S[i] 以降に有効なデータがないと見なす。
      Break;

    p2 := 0;
    for k := p1 + 2 to Len - 1 do
    begin
      if (S[k] = ' ') and (S[k + 1] = ' ') then
      begin
        p2 := k;
        Break;
      end;
    end;
    if p2 = 0 then // この様な場合も、S[i] 以降に有効なデータがないと見なす。
      Break;

    i := p1 + 2;
    while i <= p2 - 2 do
    begin
      if j + 1024 > Result.Size then
      begin
        Result.Size := Result.Size + 1024;
        ReallocMem(Result.Data, Result.Size);
        P := Result.Data;
      end;
      H[2] := S[i];
      Inc(i);
      H[3] := S[i];
      Inc(i);
      e := StrToIntDef(H, 256);
      if e = 256 then // エラー
      begin
        i := 0; // エラーのサイン
        Break;
      end;
      P[j] := Chr(e);
      Inc(j);
      Inc(i);
    end;
    if i = 0 then // このあと有効なデータがないとみなす。
      Break;

    p3 := 0;
    for k := p2 + 2 to Len - 1 do
    begin
      if (S[k] = #13) and (S[k + 1] = #10) then
      begin
        p3 := k;
        Break;
      end;
    end;
    if p3 = 0 then // この場合も、このあと有効なデータがないと見なす。
      Break;

    i := p3 + 2;
  end;

  Result.Size := j;
  ReallocMem(Result.Data, Result.Size);
end;

{ 複数のデータを連続したデータの様に見なして16 進ダンプする関数です。}
{ D は、データの配列で Adr は、先頭に表示するアドレスです。戻り値は、}
{ 16 進ダンプしたテキストです。 }

function TDataList.Dumps(D: array of TDataBlock; Adr: Integer): String;
var
  i, h: Integer;
  DB: TDataBlock;
  P: PChar;
  BSize, DSize, CSize: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;
  P := Nil;
  ReallocMem(P, 1024); // 1K バイトのバッファ
  DB.Data := P;
  DB.Size := 0;
  i := 0; // データのインデックス番号
  h := High(D); // i の最大値
  BSize := 0; // バッファに格納されたデータのサイズ
  DSize := 0; // i 番目のデータからバッファに格納したサイズ

  while i <= h do
  begin
    while BSize < 1024 do
    begin
      CSize := 1024 - BSize; // 今バッファに格納可能なサイズ
      if D[i].Size - DSize <= CSize then
        CSize := D[i].Size - DSize;
      CopyMemory(P + BSize, D[i].Data + DSize, CSize);
      DSize := DSize + CSize;
      BSize := BSize + CSize;
      if DSize = D[i].Size then // D[i] の全データをコピーした。
      begin
        Inc(i); // この場合のみ次のデータへ進む。
        DSize := 0; // DSize を初期化する。
      end;
      if i > h then // BSize が 1K バイトに達しなくてもこの場合 Break する。
        Break;
    end;
    DB.Size := BSize; // 最大 1K バイト
    if Result <> '' then
      Result := Result + #13#10;
    Result := Result + Dump(DB, Adr);
    Adr := Adr + BSize;
    BSize := 0; // BSize を初期化する。
  end;
  ReallocMem(P, 0); // バッファを開放する。
end;

{ リスト内の 2 つのデータの位置を入れ替える手続きです。}

procedure TDataList.Exchange(Index1, Index2: Integer);
begin
  if Index1 = Index2 then
    Exit;
  Move(Index1, Index2);
  if Index1 < Index2 - 1 then
    Move(Index2 - 1, Index1)
  else if Index1 > Index2 + 1 then
    Move(Index2 + 1, Index1);
end;

function TDataList.GetBinaryItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TDataBlock;
  StartPoint, StopPoint, CheckPoint: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
      end
      else
        M.Size := PositionSize[Index] - CheckPoint;
    end
    else if StartPoint < CheckPoint then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint;
      M.Data := M.Data + fw;
      M.Size := PositionSize[Index];
    end;
  end;

begin
  if (Index < -1) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, -1, FCount]);

  Result := '';

  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  { 分割データの先頭の本データ内でのオフセット値 }
  if ItemPosition = -1 then // 分割せずに全てを表示する場合(ディフォルト)
    StartPoint := 0
  else
    StartPoint := ItemPosition * ItemStep;

  if Index < 0 then // Index = -1
  begin
    StopPoint := StartPoint + PositionSize[Index] - 1; // 末尾のオフセット値
    CheckPoint := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント

    P := 'TDataList'; H.Data := P; H.Size := 10; // ファイルヘッダー
    PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; // Count
    PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; // DataSize
    O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; // Offsets[]
    M.Data := FMemory; M.Size := FDataSize; // DataSize

    CheckData;
    Result := Binaries([H, C, S, O, M]);
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    Result := Binary(M);
  end
  else // 0 <= Index <= Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    Result := Binary(M);
  end;
end;

function TDataList.GetCrystalItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TDataBlock;
  StartPoint, StopPoint, CheckPoint: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
      end
      else
        M.Size := PositionSize[Index] - CheckPoint;
    end
    else if StartPoint < CheckPoint then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint;
      M.Data := M.Data + fw;
      M.Size := PositionSize[Index];
    end;
  end;

begin
  if (Index < -1) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, -1, FCount]);

  Result := '';

  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  { 分割データの先頭の本データ内でのオフセット値 }
  if ItemPosition = -1 then // 分割せずに全てを表示する場合(ディフォルト)
    StartPoint := 0
  else
    StartPoint := ItemPosition * ItemStep;

  if Index < 0 then // Index = -1
  begin
    StopPoint := StartPoint + PositionSize[Index] - 1; // 末尾のオフセット値
    CheckPoint := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント

    P := 'TDataList'; H.Data := P; H.Size := 10; // ファイルヘッダー
    PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; // Count
    PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; // DataSize
    O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; // Offsets[]
    M.Data := FMemory; M.Size := FDataSize; // DataSize

    CheckData;
    Result := Crystals([H, C, S, O, M]);
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    Result := Crystal(M);
  end
  else // 0 <= Index <= Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    Result := Crystal(M);
  end;
end;

function TDataList.GetDumpItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TDataBlock;
  StartPoint, StopPoint, CheckPoint: Integer;
  fw: Integer;
  Len: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
      end
      else
        M.Size := PositionSize[Index] - CheckPoint;
    end
    else if StartPoint < CheckPoint then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint;
      M.Data := M.Data + fw;
      M.Size := PositionSize[Index];
    end;
  end;

begin
  if (Index < -1) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, -1, FCount]);

  Result := '';

  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  { 分割データの先頭の本データ内でのオフセット値 }
  if ItemPosition = -1 then // 分割せずに全てを表示する場合(ディフォルト)
    StartPoint := 0
  else
    StartPoint := ItemPosition * ItemStep;

  if Index < 0 then // Index = -1
  begin
    StopPoint := StartPoint + PositionSize[Index] - 1; // 末尾のオフセット値
    CheckPoint := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント

    P := 'TDataList'; H.Data := P; H.Size := 10; // ファイルヘッダー
    PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; // Count
    PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; // DataSize
    O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; // Offsets[]
    M.Data := FMemory; M.Size := FDataSize; // DataSize

    CheckData;
    Result := Dumps([H, C, S, O, M], StartPoint);
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    Result := Dump(M, StartPoint);
  end
  else // 0 <= Index <= Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    Result := Dump(M, StartPoint);
  end;
  if Result = '' then // データサイズが 0 の場合
    Result := Format('%8.8X       ', [StartPoint])
  else
  begin
    Len := Length(Result);
    if (Len >= 78) and (Len mod 78 = 0) then
      SetLength(Result, Len - 2);
  end;
end;

function TDataList.GetItem(Index: Integer): TDataBlock;
begin
  if (Index < 0) or (Index > FCount - 1) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount - 1]);

  Result.Data := FMemory + Offsets[Index];
  Result.Size := Offsets[Index + 1] - Offsets[Index];
end;

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティにおいて、Items[Index] のデータを ItemStep バイトづつ分割 }
{ して表示する場合の、データの最後尾の次の位置が存在する ItemPosition }
{ の値を返します。これは、データを追加する位置は、ここからということです。}

function TDataList.GetMaxPosition(Index: Integer): Integer;
var
  Len: Integer;
begin
  if Index < 0 then
    Len := 10 + (2 + FCount + 1) * IntegerSize + FDataSize
  else if Index > FCount - 1 then
    Len := FDataSize
  else
    Len := Items[Index].Size;

  Result := Len div FItemStep;
end;

function TDataList.GetOffset(Index: Integer): Integer;
var
  P: PInteger;
begin
  if (Index < 0) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount]);

  PChar(P) := FOffsets + Index * IntegerSize;
  Result := P^;
end;

function TDataList.GetOverlapping: Boolean;
var
  i, j: Integer;
begin
  Result := False;
  if FCount < 2 then
    Exit;

  for i := 0 to FCount - 2 do
  begin
    for j := FCount - 1 downto i + 1 do
    begin
      if (Items[i].Size = Items[j].Size) and (CompareDataBlock(Items[i], Items[j]) = 0) then
      begin
        Result := True;
        Break;
      end;
    end;
    if Result = True then
      Break;
  end;
end;

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティにおいて、Items[Index] のデータを ItemStep バイトづつ分割 }
{ して表示する際の ItemPosition 番目の分割領域のサイズを返します。}

function TDataList.GetPositionSize(Index: Integer): Integer;
var
  Len: Integer;
begin
  if Index < 0 then
    Len := 10 + (2 + FCount + 1) * IntegerSize + FDataSize
  else if Index > FCount - 1 then
    Len := FDataSize
  else
    Len := Items[Index].Size;

  if FItemPosition < 0 then
    Result := Len // 全てを表示
  else
  begin
    Result := Len - FItemPosition * FItemStep;
    if Result < 0 then
      Result := 0
    else if Result > FItemStep then
      Result := FItemStep;
  end;
end;

function TDataList.GetTextItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TDataBlock;
  StartPoint, StopPoint, CheckPoint: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
      end
      else
        M.Size := PositionSize[Index] - CheckPoint;
    end
    else if StartPoint < CheckPoint then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint;
      M.Data := M.Data + fw;
      M.Size := PositionSize[Index];
    end;
  end;

begin
  if (Index < -1) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, -1, FCount]);

  Result := '';

  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  { 分割データの先頭の本データ内でのオフセット値 }
  if ItemPosition = -1 then // 分割せずに全てを表示する場合(ディフォルト)
    StartPoint := 0
  else
    StartPoint := ItemPosition * ItemStep;

  if Index < 0 then // Index = -1
  begin
    StopPoint := StartPoint + PositionSize[Index] - 1; // 末尾のオフセット値
    CheckPoint := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント

    P := 'TDataList'; H.Data := P; H.Size := 10; // ファイルヘッダー
    PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; // Count
    PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; // DataSize
    O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; // Offsets[]
    M.Data := FMemory; M.Size := FDataSize; // DataSize

    CheckData;
    Result := Data2Texts([H, C, S, O, M]);
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    Result := Data2Text(M);
  end
  else // 0 <= Index <= Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    Result := Data2Text(M);
  end;
end;

{ Index 番目のデータをテキストに変換するとバイナリ表記文字列が含まれる }
{ かどうか、すなわち ItemPositio = -1 (データを分割しない) の時に }
{ TextItems[Index] にバイナリ表記文字列が含まれるかどうかを返す関数です。}
{ 含まれれば、True をそうでなければ、False を返します。}

function TDataList.BinaryDescription(Index: Integer): Boolean;
var
  D: TDataBlock;
begin
  D := Items[Index];
  Result := UseBinaryDescription(D.Data, D.Size, FDataOption);
end;

{ リスト内のデータの位置を返す関数です。戻り値は、以下の通りです。}
{ 0 ～ Count - 1 : データが見つかった場合 }
{ -1             : データがリスト内にない場合 }

function TDataList.IndexOf(const Item: TDataBlock): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to FCount - 1 do
  begin
    if (Item.Size = Items[i].Size) and (CompareDataBlock(Item, Items[i]) = 0) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

{ テキスト形式で与えられたデータのリスト内の位置を返す関数です。}
{ BinaryOperation = False の場合、与えられたテキストそのものを探し、}
{ BinaryOperation = True の場合、与えられたテキストをバイナリ表記文字列 }
{ の変換規則に従ってデータ変換を行なってからそのデータを探します。}
{ 戻り値は、以下の通りです。}
{ 0 ～ Count - 1 : データが見つかった場合 }
{ -1             : データがリスト内にない場合 }

function TDataList.IndexOfText(const Item: String): Integer;
var
  D: TDataBlock;
begin
  if BinaryOperation = False then
  begin
    D.Data := PChar(Item);
    D.Size := Length(Item);
    Result := IndexOf(D);
  end
  else
  begin
    D := Text2Data(Item);
    try
      Result := IndexOf(D);
    finally
      ReallocMem(D.Data, 0);
    end;
  end;
end;

{ 新しいデータをリストに挿入する手続きです。 }

procedure TDataList.Insert(Index: Integer; const Item: TDataBlock);
var
  i: Integer;
  D: TDataBlock;
begin
  if (Index < 0) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount]);

  if Item.Size < 0 then
    raise ERangeError.CreateFmt('Illegal data size %d', [Item.Size]);

  if (FAllowOverlapping = False) and (IndexOf(Item) <> -1) then
    Exit;

  Change;    // OnChange イベントをここで発生

  { データを挿入する。Item が FMemory 内のデータである可能性もあるので、}
  { Item のコピー D を作っておく。}
  D.Data := Nil;
  D.Size := Item.Size;
  if D.Size > 0 then
  begin
    ReallocMem(D.Data, D.Size);
    CopyMemory(D.Data, Item.Data, Item.Size);
    try
      ReallocMem(FMemory, FDataSize + D.Size + 2); // D.Size バイト増やす。
      FMemory[FDataSize + D.Size] := Chr($00);
      FMemory[FDataSize + D.Size + 1] := Chr($00);
      MoveMemory(FMemory + Offsets[Index] + D.Size,
                 FMemory + Offsets[Index],
                 Offsets[FCount] - Offsets[Index]); // 移動するデータの合計サイズ
      CopyMemory(FMemory + Offsets[Index],
                 D.Data,
                 D.Size);
    finally
      ReallocMem(D.Data, 0); // Free Memory
    end;
  end;

  { データ数、データサイズ、オフセット値を正しくする。}
  FCount := FCount + 1;
  FDataSize := FDataSize + D.Size;
  ReallocMem(FOffsets, (FCount + 1) * IntegerSize); // IntegerSize バイト増やす。
  for i := FCount downto Index + 1 do
    Offsets[i] := Offsets[i - 1] + D.Size;

  Changed;    // OnChanged イベントをここで発生
end;

{ ファイルの内容をデータとしてリストに挿入する手続きです。}

procedure TDataList.InsertFile(Index: Integer; const FileName: String);
var
  MS: TMemoryStream;
  D: TDataBlock;
begin
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile(FileName);
    D.Data := MS.Memory;
    D.Size := MS.Size;
    Insert(Index, D);
  finally
    MS.Free;
  end;
end;

{ 文字データをリストに挿入する手続きです。BinaryOperation が True の }
{ ときは、バイナリ表記文字列の変換規則に従ってデータ変換を行なってから }
{ 挿入をします。BinaryOperation が False のときは、与えられた文字データ }
{ そのものを挿入します。}

procedure TDataList.InsertText(Index: Integer; const Item: String);
var
  D: TDataBlock;
begin
  if FBinaryOperation = True then
  begin
    D := Text2Data(Item); // データ変換を行なう。
    try
      Insert(Index, D);
    finally
      ReallocMem(D.Data, 0); // 変換したデータのメモリを解放する。
    end;
  end
  else // FBinaryOperation = False
  begin
    D.Data := PChar(Item); // 与えられた文字データのポインタ
    D.Size := Length(Item); // データのサイズ
    Insert(Index, D);
  end;
end;

{ Index 番目のデータが、バイナリデータであるかどうかを調べる関数です。}
{ バイナリデータであれば、True をそうでなければ、False を返します。}

function TDataList.IsBinary(Index: Integer): Boolean;
var
  D: TDataBlock;
begin
  if Index < 0 then // Index = -1
    Result := True  // $00 が含まれるので
  else if Index > FCount - 1 then // Index = Count
  begin
    D.Data := FMemory;
    D.Size := FDataSize;
    Result := HasBinary(D.Data, D.Size);
  end
  else // 0 <= Index <= Count - 1
  begin
    D := Items[Index];
    Result := HasBinary(D.Data, D.Size);
  end;
end;

{ ファイルからロードしたデータを Index 番目のデータとする手続きです。}

procedure TDataList.LoadFile(Index: Integer; const FileName: String);
var
  MS: TMemoryStream;
  D: TDataBlock;
begin
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile(FileName);
    D.Data := MS.Memory;
    D.Size := MS.Size;
    Items[Index] := D;
  finally
    MS.Free;
  end;
end;

{ ファイルからデータのリストを取得する手続きです。}

procedure TDataList.LoadFromFile(const FileName: String);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

{ ストリームからデータのリストを取得する手続きです。}
{ ストリームの現在位置からデータを取得します。}

procedure TDataList.LoadFromStream(Stream: TStream);
var
  P: PChar;
  ct, ds, rs: Integer;
begin
  rs := Stream.Size - Stream.Position; // 読み込み可能なデータのサイズ
  if rs < 10 + 3 * IntegerSize then // TDataList のデータの最小サイズ(22 バイト)
    Exit;

  Change;    // OnChange イベントをここで発生
  P := Nil;
  ReallocMem(P, 10);
  try
    Stream.ReadBuffer(P^, 10); // ファイルヘッダー
    rs := rs - 10;
    if String(P) = 'TDataList' then
    begin
      Stream.ReadBuffer(P^, IntegerSize * 2);
      rs := rs - IntegerSize * 2;
      ct := (PInteger(P))^; // データ数
      ds := (PInteger(P + IntegerSize))^; // データサイズ
      if rs >= (ct + 1) * IntegerSize + ds then
      begin
        ReallocMem(P, (ct + 1) * IntegerSize);
        Stream.ReadBuffer(P^, (ct + 1) * IntegerSize);
        if ((PInteger(P))^ = 0) and ((PInteger(P + ct * IntegerSize))^ = ds) then
        begin // この時点でデータが正常なものである事が確認された。
          FCount := ct;
          FDataSize := ds;
          ReallocMem(FOffsets, (ct + 1) * IntegerSize);
          CopyMemory(FOffsets, P, (ct + 1) * IntegerSize);
          ReallocMem(FMemory, ds + 2);
          Stream.ReadBuffer(FMemory^, ds);
          FMemory[ds] := Chr($00);
          FMemory[ds + 1] := Chr($00);
        end;
      end;
    end;
  finally
    ReallocMem(P, 0);
  end;
  if (FAllowOverlapping = False) and Overlapping then // 重複データがあった場合
    FAllowOverlapping := True; // 重複データを許す事とする。
  Changed;    // OnChanged イベントをここで発生
end;

{ CurIndex 番目のデータを NewIndex 番目へ移動する手続きです。 }

procedure TDataList.Move(CurIndex: Integer; NewIndex: Integer);
begin
  if CurIndex < NewIndex then
  begin
    Insert(NewIndex + 1, Items[CurIndex]);
    Delete(CurIndex);
  end
  else if CurIndex > NewIndex then
  begin
    Insert(NewIndex, Items[CurIndex]);
    Delete(CurIndex + 1);
  end;
end;

{ リスト内の空のデータを全て削除する関数です。}
{ 戻り値は、削除したデータの個数です。}

function TDataList.Pack: Integer;
var
  i: Integer;
  Allow: Boolean;
begin
  Result := 0;
  if FCount = 0 then
    Exit;

  if FAllowEvent then
    Allow := True
  else
    Allow := False;

  Change;    // OnChange イベントをここで発生
  if Allow then
    FAllowEvent := False; // 各イベントの発生を禁止する。
  try
    for i := FCount - 1 downto 0 do
    begin
      if Items[i].Size = 0 then
      begin
        Delete(i);
        Inc(Result);
      end;
    end;
  finally
    if Allow then
      FAllowEvent := True; // 各イベントの発生を許可する。
  end;
  Changed;    // OnChanged イベントをここで発生
end;

procedure TDataList.QuickSort(L, R: Integer; Order: Boolean);
var
  I, J, P: Integer;
begin
  repeat
    I := L;
    J := R;
    P := (L + R) shr 1;
    repeat
      while SCompare(I, P, Order) < 0 do Inc(I);
      while SCompare(J, P, Order) > 0 do Dec(J);
      if I <= J then
      begin
        Exchange(I, J);
        if P = I then
          P := J
        else if P = J then
          P := I;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then QuickSort(L, J, Order);
    L := I;
  until I >= R;
end;

{ Index 番目のデータをファイルとして保存する手続きです。}

procedure TDataList.SaveFile(Index: Integer; const FileName: String);
var
  MS: TMemoryStream;
  D: TDataBlock;
begin
  MS := TMemoryStream.Create;
  try
    D := Items[Index];
    MS.WriteBuffer((D.Data)^, D.Size);
    MS.SaveToFile(FileName);
  finally
    MS.Free;
  end;
end;

{ ファイルにデータのリストを保存する手続きです。}

procedure TDataList.SaveToFile(const FileName: String);
var
  Stream: TStream;
begin
  Stream := TFileStream.Create(FileName, fmCreate);
  try
    SaveToStream(Stream);
  finally
    Stream.Free;
  end;
end;

{ ストリームにデータのリストを保存する手続きです。}
{ ストリームの現在位置からデータを保存します。}

procedure TDataList.SaveToStream(Stream: TStream);
var
  P: PChar;
begin
  P := 'TDataList'; // ファイルヘッダー
  { ファイルヘッダー }
  Stream.WriteBuffer(P^, 10); // 文字列終端の #0 も書き込む
  { 全データ数 }
  Stream.WriteBuffer(FCount, IntegerSize);
  { 全データの合計サイズ }
  Stream.WriteBuffer(FDataSize, IntegerSize);
  { 各データのオフセット値 }
  Stream.WriteBuffer(FOffsets^, (FCount + 1) * IntegerSize);
  { 全データ }
  Stream.WriteBuffer(FMemory^, FDataSize);
end;

function TDataList.SCompare(Index1, Index2: Integer; Order: Boolean): Integer;
begin
  Result := CompareDataBlock(Items[Index1], Items[Index2]);
  if Order = False then
    Result := Result * -1;
end;

procedure TDataList.SetAllowOverlapping(const Value: Boolean);
begin
  FAllowOverlapping := Value;
  if Value = False then // データの重複を許さない場合
    Clean; // 全ての重複データを削除する。
end;

procedure TDataList.SetDumpItem(Index: Integer; const Value: String);
var
  O, B, D: TDataBlock;
  fw: Integer;
begin
  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  O := Items[Index]; // もとのデータ
  B := Dump2Data(Value); // O の ItemPosition 番目のブロックと置き換えるデータ
  try
    if ItemPosition = -1 then // 全てを置き換える。
      Items[Index] := B
    else
    begin
      fw := ItemPosition * ItemStep;
      D.Data := Nil;
      D.Size := O.Size + (B.Size - PositionSize[Index]);
      ReallocMem(D.Data, D.Size);
      try
        CopyMemory(D.Data, O.Data, fw);
        CopyMemory(D.Data + fw, B.Data, B.Size);
        CopyMemory(D.Data + fw + B.Size,
                   O.Data + fw + PositionSize[Index],
                   O.Size - (fw + PositionSize[Index]));
        Items[Index] := D;
      finally
        ReallocMem(D.Data, 0);
      end;
    end;
  finally
    ReallocMem(B.Data, 0);
  end;
end;

procedure TDataList.SetItem(Index: Integer; const Value: TDataBlock);
begin
  if (Index < 0) or (Index > FCount - 1) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount - 1]);

  if (FAllowOverlapping = False) and (IndexOf(Value) <> -1) then
    Exit;

  Insert(Index, Value);
  Delete(Index + 1);
end;

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティを使って、Items[Index] のデータを分割して表示する際の }
{ インデックス(ItemPosition)の値を設定します。ItemPosition の値に }
{ よって各配列プロパティの表示は、以下の様になります。}
{ -1: 分割せずに全てを表示(ディフォルト) }
{ 0 ～ MaxPosition[Index]: ItemStep バイトづつ分割表示 }
{ MaxPosition[Index] + 1 ～: 何も表示しない。}

procedure TDataList.SetItemPosition(const Value: Integer);
begin
  if Value > -1 then
    FItemPosition := Value
  else
    FItemPosition := -1; // ディフォルト値
end;

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティを使って、Items[Index] のデータを分割して表示する際の }
{ 個々の分割領域のサイズ(ItemStep)を設定します。ItemStep の値は、}
{ 16 の倍数でかつ MinStep 以上の値でなければなりません。}

procedure TDataList.SetItemStep(const Value: Integer);
begin
  FItemStep := Value;
  if (FItemStep mod 16) <> 0 then
    FItemStep := (FItemStep div 16) * 16; // 16 の倍数にする。
  if FItemStep < MinStep then
    FItemStep := MinStep;
end;

procedure TDataList.SetOffset(Index: Integer; const Value: Integer);
var
  P: PInteger;
begin
  if (Index < 0) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount]);

  if (Value < 0) or (Value > FDataSize) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Value, 0, FDataSize]);

  PChar(P) := FOffsets + Index * IntegerSize;
  P^ := Value;
end;

procedure TDataList.SetTextItem(Index: Integer; const Value: String);
var
  O, B, D: TDataBlock;
  fw: Integer;
begin
  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  O := Items[Index]; // もとのデータ
  B := Text2Data(Value); // O の ItemPosition 番目のブロックと置き換えるデータ
  try
    if ItemPosition = -1 then // 全てを置き換える。
      Items[Index] := B
    else
    begin
      fw := ItemPosition * ItemStep;
      D.Data := Nil;
      D.Size := O.Size + (B.Size - PositionSize[Index]);
      ReallocMem(D.Data, D.Size);
      try
        CopyMemory(D.Data, O.Data, fw);
        CopyMemory(D.Data + fw, B.Data, B.Size);
        CopyMemory(D.Data + fw + B.Size,
                   O.Data + fw + PositionSize[Index],
                   O.Size - (fw + PositionSize[Index]));
        Items[Index] := D;
      finally
        ReallocMem(D.Data, 0);
      end;
    end;
  finally
    ReallocMem(B.Data, 0);
  end;
end;

{ データリストをソートする手続きです。}
{ Order の値によって、以下の様にソートします。}
{ True  : 正順にソート }
{ False : 逆順にソート }

procedure TDataList.Sort(Order: Boolean);
begin
  Change;    // OnChange イベントをここで発生
  FAllowEvent := False; // 各イベントの発生を禁止する。
  try
    if FCount > 1 then
      QuickSort(0, FCount - 1, Order);
  finally
    FAllowEvent := True; // 各イベントの発生を許可する。
  end;
  Changed;    // OnChanged イベントをここで発生
end;

{ 文字データを TDataBlock 形式のデータに変換して返す関数です。}
{ BinaryOperation が True のときは、バイナリ表記文字列の変換規則に }
{ 従ってデータ変換を行ないます。BinaryOperation が False あるいは、}
{ バイナリ表記文字列に誤表現があって変換出来ない場合は、与えられた }
{ 文字データそのものを返します。呼び出し側は、使用後は、このデータ }
{ ブロックのメモリ(Result.Data)を解放しなければなりません。}

function TDataList.Text2Data(S: String): TDataBlock;
var
  i, j: Integer;
  p1, p2: Integer;
  Len: Integer;
  H: String;
  e: Integer;
  P: PChar;
begin
  Result.Data := Nil;
  Result.Size := 0;
  if S = '' then
    Exit;

  Len := Length(S);
  ReallocMem(Result.Data, Len);
  Result.Size := Len;
  P := Result.Data;
  i := 1;  // テキストのインデックス
  j := 0;  // データのインデックス
  H := '$00';

  if FBinaryOperation = True then
  begin
    while i <= Len do
    begin
      p1 := CPos('~', S, i); // i 文字目以降で最初に '~' 文字が見つかった位置
      if p1 = 0 then // 見つからなかった場合は、以後全て通常の文字と見なす。
      begin
        while i <= Len do
        begin
          P[j] := S[i];
          Inc(j);
          Inc(i);
        end;
        Break;
      end;
      p2 := CPos('~', S, p1 + 1); // 次に '~' 文字が見つかった位置
      if (p2 = 0) or ((p2 - p1 - 1) mod 2 <> 0) then // エラー
      begin
        i := 0; // エラーのサイン
        Break;
      end;
      while i < p1 do
      begin
        P[j] := S[i];
        Inc(j);
        Inc(i);
      end;
      if p2 = p1 + 1 then // '~' 文字自身
      begin
        P[j] := '~';
        Inc(j);
      end
      else
      begin
        i := p1 + 1;
        while i <= p2 - 2 do
        begin
          H[2] := S[i];
          Inc(i);
          H[3] := S[i];
          Inc(i);
          e := StrToIntDef(H, 256);
          if e = 256 then // エラー
          begin
            i := 0; // エラーのサイン
            Break;
          end;
          P[j] := Chr(e);
          Inc(j);
        end;
      end;
      if i = 0 then // エラー
        Break;
      i := p2 + 1;
    end;
    if i <> 0 then // i = 0 の場合は、エラーがあって変換不能と見なす。
    begin
      if Len <> j then
      begin
        Len := j; // データのサイズ
        ReallocMem(Result.Data, Len);
        Result.Size := Len;
      end;
      Exit;
    end;
  end;

  { BinaryOperation = False のときあるいは、エラーがあって変換不能の場合 }
  CopyMemory(Result.Data, PChar(S), Len);
end;

end.
