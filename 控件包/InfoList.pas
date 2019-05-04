unit InfoList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DataList;

type
  { TInfoList クラス }
  TInfoList = class(TComponent)
  private
    { Private 宣言 }
    FCount: Integer; // 全データ数
    FMemory: PChar; // 全データを格納するエリアのポインタ(PChar 型)
    FDataSize: Integer; // 全データの合計サイズ(FMemory のサイズ)
    FOffsets: PChar; // FMemory 上の各データのオフセット値を格納するエリア
    FComments: TDataList; // 全データのコメントを格納するクラス(TDataList 型)
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
    function GetItem(Index: Integer): TInfoBlock;
    function GetTextItem(Index: Integer): String;
    function GetCrystalItem(Index: Integer): String;
    function GetComment(Index: Integer): String;
    function GetDumpItem(Index: Integer): String;
    function GetBinaryItem(Index: Integer): String;
    function GetMaxPosition(Index: Integer): Integer;
    function GetPositionSize(Index: Integer): Integer;
    procedure SetOffset(Index: Integer; const Value: Integer);
    procedure SetItem(Index: Integer; const Value: TInfoBlock);
    procedure SetTextItem(Index: Integer; const Value: String);
    procedure SetDumpItem(Index: Integer; const Value: String);
    procedure SetComment(Index: Integer; const Value: String);
    procedure SetComments(const Value: TDataList);
    procedure SetAllowOverlapping(const Value: Boolean);
    procedure SetItemPosition(const Value: Integer);
    procedure SetItemStep(const Value: Integer);
    function CompareInfoBlock(D1: TInfoBlock; D2: TInfoBlock): Integer;
    function SCompare(Index1, Index2: Integer; Order: Boolean): Integer;
    procedure QuickSort(L, R: Integer; Order: Boolean);
  protected
    { Protected 宣言 }
    procedure Change; dynamic;
    procedure Changed; dynamic;
    function Text2Data(S: String): TInfoBlock; virtual;
    function Data2Text(D: TInfoBlock): String; virtual;
    function Data2Texts(D: array of TInfoBlock): String; virtual;
    function Crystal(D: TInfoBlock): String; virtual;
    function Crystals(D: array of TInfoBlock): String; virtual;
    function Dump2Data(S: String): TInfoBlock; virtual;
    function Dump(D: TInfoBlock; Adr: Integer): String; virtual;
    function Dumps(D: array of TInfoBlock; Adr: Integer): String; virtual;
    function Binary(D: TInfoBlock): String; virtual;
    function Binaries(D: array of TInfoBlock): String; virtual;
    { プロパティ宣言 }
    property Offsets[Index: Integer]: Integer read GetOffset write SetOffset;
  public
    { Public 宣言 }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Clear; virtual;
    function Clean: Integer;  virtual;
    function Pack: Integer;  virtual;
    function IsBinary(Index: Integer): Boolean; virtual;
    function BinaryDescription(Index: Integer): Boolean; virtual;
    function Add(const Item: TInfoBlock): Integer;
    procedure Assign(Source: TPersistent); override;
    procedure Insert(Index: Integer; const Item: TInfoBlock); virtual;
    procedure Delete(Index: Integer); virtual;
    procedure Exchange(Index1, Index2: Integer); virtual;
    procedure Move(CurIndex: Integer; NewIndex: Integer); virtual;
    function Copy(Index: Integer): TInfoBlock; virtual;
    function IndexOf(const Item: TInfoBlock): Integer; virtual;
    function IndexOfText(const Item: String): Integer; virtual;
    function AddText(const Item: String; Comment: String): Integer; virtual;
    procedure InsertText(Index: Integer; const Item: String; Comment: String); virtual;
    function AddFile(const FileName: String; Comment: String): Integer; virtual;
    procedure InsertFile(Index: Integer; const FileName: String; Comment: String); virtual;
    procedure LoadFromStream(Stream: TStream); virtual;
    procedure LoadFromFile(const FileName: String); virtual;
    procedure LoadFile(Index: Integer; const FileName: String; Comment: String); virtual;
    procedure SaveToStream(Stream: TStream); virtual;
    procedure SaveToFile(const FileName: String); virtual;
    procedure SaveFile(Index: Integer; const FileName: String); virtual;
    procedure Sort(Order: Boolean); virtual;
    { プロパティ宣言 }
    property Overlapping: Boolean read GetOverlapping;
    property Count: Integer read FCount;
    property DataSize: Integer read FDataSize;
    property Memory: PChar read FMemory;
    property Items[Index: Integer]: TInfoBlock read GetItem write SetItem; default;
    property TextItems[Index: Integer]: String read GetTextItem write SetTextItem;
    property CrystalItems[Index: Integer]: String read GetCrystalItem;
    property DumpItems[Index: Integer]: String read GetDumpItem write SetDumpItem;
    property BinaryItems[Index: Integer]: String read GetBinaryItem;
    property Comment[Index: Integer]: String read GetComment write SetComment;
    property Comments: TDataList read FComments write SetComments;
    property MaxPosition[Index: Integer]: Integer read GetMaxPosition;
    property PositionSize[Index: Integer]: Integer read GetPositionSize;
  published
    { Published 宣言(プロパティ宣言) }
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

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ToolBox', [TInfoList]);
end;

{ TInfoList クラス }

constructor TInfoList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMemory := Nil;
  ReallocMem(FMemory, 2);
  ZeroMemory(FMemory, 2);
  FOffsets := Nil;
  ReallocMem(FOffsets, IntegerSize);
  ZeroMemory(FOffsets, IntegerSize);
  FComments := TDataList.Create;
  FComments.AllowOverlapping := True;
  FComments.BinaryOperation := False;
  FComments.DataOption := False;
  FAllowEvent := True; // イベントの発生を許可する。
  FAllowOverlapping := True; // データの重複を許す。
  FBinaryOperation := False; // バイナリ表記文字列を受け入れない。
  FDataOption := False; // $20 より小さいデータを、全てバイナリ表記文字列で表記することはしない。
  FItemPosition := -1; // データを分割して表示する際のインデックス(-1 以上)
  FItemStep := MinStep; // データを分割して表示する際のサイズ(MinStep 以上)
  FTagStr := '';
  Clear;
end;

destructor TInfoList.Destroy;
begin
  FComments.Free;
  FOnChange := Nil;
  FOnChanged := Nil;
  ReallocMem(FOffsets, 0);
  ReallocMem(FMemory, 0);
  inherited Destroy;
end;

{ 新しいデータをリストに追加する関数です。戻り値は、リスト内のデータ }
{ の位置です。}

function TInfoList.Add(const Item: TInfoBlock): Integer;
begin
  Insert(FCount, Item); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ ファイルの内容をデータとしてリストに追加する関数です。戻り値は、}
{ リスト内のデータの位置です。このデータのコメントも同時に指定出来ます。}

function TInfoList.AddFile(const FileName: String; Comment: String): Integer;
begin
  InsertFile(FCount, FileName, Comment); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ 文字データをリストに追加する関数です。戻り値は、リスト内のデータの }
{ 位置です。BinaryOperation が True のときは、バイナリ表記文字列の変換 }
{ 規則に従ってデータ変換を行なってから追加をします。BinaryOperation が }
{ False のときは、与えられた文字データそのものを追加します。このデータ }
{ のコメントも同時に指定出来ます。}

function TInfoList.AddText(const Item: String; Comment: String): Integer;
begin
  InsertText(FCount, Item, Comment); // 最後尾の次に Insert する。
  Result := FCount - 1; // 新しい最後尾のインデックス番号
end;

{ 他のオブジェクトの内容をコピーする手続きです。}

procedure TInfoList.Assign(Source: TPersistent);
var
  i: Integer;
begin
  Change;    // OnChange イベントをここで発生
  FAllowEvent := False; // 各イベントの発生を禁止する。
  try
    if Source is TInfoList then
    begin
      Clear;
      FCount := TInfoList(Source).Count; // 全データ数
      FDataSize := TInfoList(Source).DataSize; // 全データの合計サイズ(FMemory のサイズ)
      ReallocMem(FOffsets, (FCount + 1) * IntegerSize); // (Count + 1) * 4 バイト
      for i := 0 to FCount do // 各データのオフセット値を書き込む。
        Offsets[i] := TInfoList(Source).Offsets[i];
      ReallocMem(FMemory, FDataSize+ 2); // 全データを格納するエリア
      FMemory[FDataSize] := Chr($00);
      FMemory[FDataSize + 1] := Chr($00);
      CopyMemory(FMemory, TInfoList(Source).Memory, FDataSize);
      FAllowOverlapping := TInfoList(Source).AllowOverlapping;
      FBinaryOPeration := TInfoList(Source).BinaryOPeration; // バイナリ表記文字列を受け入れるか決めるスイッチ
      FComments.Assign(TInfoList(Source).Comments); // コメントをコピーする。
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

function TInfoList.Binary(D: TInfoBlock): String;
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
{ D は、データの配列です。戻り値は、バイナリ表現したテキストです。}

function TInfoList.Binaries(D: array of TInfoBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Binary(D[i]);
end;

procedure TInfoList.Change;
begin
  if Assigned(FOnChange) and FAllowEvent then
    FOnChange(Self);  // イベントハンドラの呼び出し
end;

procedure TInfoList.Changed;
begin
  if Assigned(FOnChanged) and FAllowEvent then
    FOnChanged(Self);  // イベントハンドラの呼び出し
end;

{ リスト内の重複データを全て削除する関数です。}
{ 戻り値は、削除したデータの個数です。}

function TInfoList.Clean: Integer;
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
        if (Items[i].Size = Items[j].Size) and (CompareInfoBlock(Items[i], Items[j]) = 0) then
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

procedure TInfoList.Clear;
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
  FComments.Clear; // 全てのコメントを削除する。
  Changed;    // OnChanged イベントをここで発生
end;

{ データブロックのデータの大小を比較する関数です。}
{ コメントの部分は、比較の対象となりません。}
{ 戻り値は、以下の様になります。}
{ Result < 0  :  D1 < D2 の場合 }
{ Result = 0  :  D1 = D2 の場合 }
{ Result > 0  :  D1 > D2 の場合 }

function TInfoList.CompareInfoBlock(D1: TInfoBlock; D2: TInfoBlock): Integer;
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
{ とコメント部分のメモリ(Result.Comment)を解放しなければなりません。}

function TInfoList.Copy(Index: Integer): TInfoBlock;
var
  Item: TInfoBlock;
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
  Result.Comment := Item.Comment;
end;

{ データをクリスタル表現する関数です。クリスタル表現とは、データ中の }
{ 文字データのみを表現し、それ以外の部分は、何も表現しない表現方法の }
{ 事です。戻り値は、クリスタル表現したテキストです。クリスタル表現は、}
{ バイナリデータを対象とする場合に、サイズも小さくなり我々が文字として }
{ 認識出来る部分のみを確認する為の最良の手段となります。}

function TInfoList.Crystal(D: TInfoBlock): String;
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
{ D は、データの配列です。戻り値は、クリスタル表現したテキストです。}

function TInfoList.Crystals(D: array of TInfoBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Crystal(D[i]);
end;

{ TInfoBlock 形式で与えられたデータを文字データに変換して返す関数です。}
{ データがバイナリデータを含む場合は、その部分をバイナリ表記文字列で表現 }
{ します。バイナリデータを含まない場合は、与えられたデータそのものが }
{ 文字データであるということになりますので、そのまま返します。}
{ 仮に与えられたデータが、バイナリデータを含む様な場合でもそのときの }
{ BinaryOperation プロパティの値は、変化しないという仕様にしてあります }
{ のでご注意下さい。}

function TInfoList.Data2Text(D: TInfoBlock): String;
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

function TInfoList.Data2Texts(D: array of TInfoBlock): String;
var
  i: Integer;
begin
  Result := '';
  if Length(D) = 0 then
    Exit;

  for i := 0 to High(D) do
    Result := Result + Data2Text(D[i]);
end;

{ Index 番目のデータをリストから削除する手続きです。}

procedure TInfoList.Delete(Index: Integer);
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
  FComments.Delete(Index); // Index 番目のコメントを削除する。
  Changed;    // OnChanged イベントをここで発生
end;

{ データを 16 進ダンプする関数です。Adr は、先頭の表示アドレスです。}
{ 戻り値は、16 進ダンプしたテキストです。}

function TInfoList.Dump(D: TInfoBlock; Adr: Integer): String;
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
    { アドレス表示部分 }
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

function TInfoList.Dump2Data(S: String): TInfoBlock;
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
  Result.Comment := '';
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
{ 16 進ダンプしたテキストです。}

function TInfoList.Dumps(D: array of TInfoBlock; Adr: Integer): String;
var
  i, h: Integer;
  DB: TInfoBlock;
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
  DB.Comment := '';
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

procedure TInfoList.Exchange(Index1, Index2: Integer);
begin
  if Index1 = Index2 then
    Exit;
  Move(Index1, Index2);
  if Index1 < Index2 - 1 then
    Move(Index2 - 1, Index1)
  else if Index1 > Index2 + 1 then
    Move(Index2 + 1, Index1);
end;

function TInfoList.GetBinaryItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TInfoBlock;
  MS: TMemoryStream;
  CM: TInfoBlock;
  StartPoint, StopPoint: Integer;
  CheckPoint1, CheckPoint2: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index] - CheckPoint1;
        CM.Size := 0;
      end
      else
        CM.Size := PositionSize[Index] - CheckPoint2;
    end
    else if StartPoint < CheckPoint1 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
        CM.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        CM.Size := PositionSize[Index] - O.Size - M.Size;
      end;
    end
    else if StartPoint < CheckPoint2 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint1;
      M.Data := M.Data + fw;
      if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index];
        CM.Size := 0;
      end
      else
      begin
        M.Size := M.Size - fw;
        CM.Size := PositionSize[Index] - M.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0; M.Size := 0;
      fw := StartPoint - CheckPoint2;
      CM.Data := CM.Data + fw;
      CM.Size := PositionSize[Index];
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
    CheckPoint1 := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント1
    CheckPoint2 := CheckPoint1 + FDataSize; // チェックポイント2

    MS := TMemoryStream.Create;
    try
      P := 'TInfoList'; H.Data := P; H.Size := 10; H.Comment := ''; // ファイルヘッダー
      PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; C.Comment := ''; // Count
      PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; S.Comment := ''; // DataSize
      O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; O.Comment := ''; // Offsets[]
      M.Data := FMemory; M.Size := FDataSize; M.Comment := ''; // DataSize
      Comments.SaveToStream(MS);
      CM.Data := PChar(MS.Memory);
      CM.Size := MS.Size;
      CM.Comment := '';

      CheckData;
      Result := Binaries([H, C, S, O, M, CM]);
    finally
      MS.Free;
    end;
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Binary(M);
  end
  else // 0 < Index < Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Binary(M);
  end;
end;

function TInfoList.GetComment(Index: Integer): String;
begin
  Result := FComments.TextItems[Index]; // コメントは、テキストなので
end;

function TInfoList.GetCrystalItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TInfoBlock;
  MS: TMemoryStream;
  CM: TInfoBlock;
  StartPoint, StopPoint: Integer;
  CheckPoint1, CheckPoint2: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index] - CheckPoint1;
        CM.Size := 0;
      end
      else
        CM.Size := PositionSize[Index] - CheckPoint2;
    end
    else if StartPoint < CheckPoint1 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
        CM.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        CM.Size := PositionSize[Index] - O.Size - M.Size;
      end;
    end
    else if StartPoint < CheckPoint2 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint1;
      M.Data := M.Data + fw;
      if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index];
        CM.Size := 0;
      end
      else
      begin
        M.Size := M.Size - fw;
        CM.Size := PositionSize[Index] - M.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0; M.Size := 0;
      fw := StartPoint - CheckPoint2;
      CM.Data := CM.Data + fw;
      CM.Size := PositionSize[Index];
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
    CheckPoint1 := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント1
    CheckPoint2 := CheckPoint1 + FDataSize; // チェックポイント2

    MS := TMemoryStream.Create;
    try
      P := 'TInfoList'; H.Data := P; H.Size := 10; H.Comment := ''; // ファイルヘッダー
      PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; C.Comment := ''; // Count
      PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; S.Comment := ''; // DataSize
      O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; O.Comment := ''; // Offsets[]
      M.Data := FMemory; M.Size := FDataSize; M.Comment := ''; // DataSize
      Comments.SaveToStream(MS);
      CM.Data := PChar(MS.Memory);
      CM.Size := MS.Size;
      CM.Comment := '';

      CheckData;
      Result := Crystals([H, C, S, O, M, CM]);
    finally
      MS.Free;
    end;
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Crystal(M);
  end
  else // 0 < Index < Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Crystal(M);
  end;
end;

function TInfoList.GetDumpItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TInfoBlock;
  MS: TMemoryStream;
  CM: TInfoBlock;
  StartPoint, StopPoint: Integer;
  CheckPoint1, CheckPoint2: Integer;
  fw: Integer;
  Len: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index] - CheckPoint1;
        CM.Size := 0;
      end
      else
        CM.Size := PositionSize[Index] - CheckPoint2;
    end
    else if StartPoint < CheckPoint1 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
        CM.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        CM.Size := PositionSize[Index] - O.Size - M.Size;
      end;
    end
    else if StartPoint < CheckPoint2 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint1;
      M.Data := M.Data + fw;
      if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index];
        CM.Size := 0;
      end
      else
      begin
        M.Size := M.Size - fw;
        CM.Size := PositionSize[Index] - M.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0; M.Size := 0;
      fw := StartPoint - CheckPoint2;
      CM.Data := CM.Data + fw;
      CM.Size := PositionSize[Index];
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
    CheckPoint1 := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント1
    CheckPoint2 := CheckPoint1 + FDataSize; // チェックポイント2

    MS := TMemoryStream.Create;
    try
      P := 'TInfoList'; H.Data := P; H.Size := 10; H.Comment := ''; // ファイルヘッダー
      PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; C.Comment := ''; // Count
      PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; S.Comment := ''; // DataSize
      O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; O.Comment := ''; // Offsets[]
      M.Data := FMemory; M.Size := FDataSize; M.Comment := ''; // DataSize
      Comments.SaveToStream(MS);
      CM.Data := PChar(MS.Memory);
      CM.Size := MS.Size;
      CM.Comment := '';

      CheckData;
      Result := Dumps([H, C, S, O, M, CM], StartPoint);
    finally
      MS.Free;
    end;
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Dump(M, StartPoint);
  end
  else // 0 < Index < Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
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

function TInfoList.GetItem(Index: Integer): TInfoBlock;
begin
  if (Index < 0) or (Index > FCount - 1) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount - 1]);

  Result.Data := FMemory + Offsets[Index];
  Result.Size := Offsets[Index + 1] - Offsets[Index];
  Result.Comment := FComments.TextItems[Index]; // コメントは、テキストなので
end;

{ TextItems[], CrystalItems[], DumpItems[], BinaryItems[] の各配列 }
{ プロパティにおいて、Items[Index] のデータを ItemStep バイトづつ分割 }
{ して表示する場合の、データの最後尾の次の位置が存在する ItemPosition }
{ の値を返します。これは、データを追加する位置は、ここからということです。}

function TInfoList.GetMaxPosition(Index: Integer): Integer;
var
  Len: Integer;
begin
  if Index < 0 then
    Len := 10 + (2 + FCount + 1) * IntegerSize + FDataSize +
           10 + (2 + Comments.Count + 1) * IntegerSize + Comments.DataSize
  else if Index > FCount - 1 then
    Len := FDataSize
  else
    Len := Items[Index].Size;

  Result := Len div FItemStep;
end;

function TInfoList.GetOffset(Index: Integer): Integer;
var
  P: PInteger;
begin
  if (Index < 0) or (Index > FCount) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount]);

  PChar(P) := FOffsets + Index * IntegerSize;
  Result := P^;
end;

function TInfoList.GetOverlapping: Boolean;
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
      if (Items[i].Size = Items[j].Size) and (CompareInfoBlock(Items[i], Items[j]) = 0) then
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

function TInfoList.GetPositionSize(Index: Integer): Integer;
var
  Len: Integer;
begin
  if Index < 0 then
    Len := 10 + (2 + FCount + 1) * IntegerSize + FDataSize +
           10 + (2 + Comments.Count + 1) * IntegerSize + Comments.DataSize
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

function TInfoList.GetTextItem(Index: Integer): String;
var
  P: PChar;
  PC, PS: PInteger;
  H, C, S, O, M: TInfoBlock;
  MS: TMemoryStream;
  CM: TInfoBlock;
  StartPoint, StopPoint: Integer;
  CheckPoint1, CheckPoint2: Integer;
  fw: Integer;

  procedure CheckData;
  begin
    if StartPoint = 0 then // ItemPositio = 0 or -1 の時
    begin
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index] - (10 + 2 * IntegerSize);
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index] - CheckPoint1;
        CM.Size := 0;
      end
      else
        CM.Size := PositionSize[Index] - CheckPoint2;
    end
    else if StartPoint < CheckPoint1 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0;
      fw := StartPoint - (10 + 2 * IntegerSize);
      O.Data := O.Data + fw;
      if StopPoint < CheckPoint1 then
      begin
        O.Size := PositionSize[Index];
        M.Size := 0;
        CM.Size := 0;
      end
      else if StopPoint < CheckPoint2 then
      begin
        O.Size := O.Size - fw;
        M.Size := PositionSize[Index] - O.Size;
        CM.Size := 0;
      end
      else
      begin
        O.Size := O.Size - fw;
        CM.Size := PositionSize[Index] - O.Size - M.Size;
      end;
    end
    else if StartPoint < CheckPoint2 then
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0;
      fw := StartPoint - CheckPoint1;
      M.Data := M.Data + fw;
      if StopPoint < CheckPoint2 then
      begin
        M.Size := PositionSize[Index];
        CM.Size := 0;
      end
      else
      begin
        M.Size := M.Size - fw;
        CM.Size := PositionSize[Index] - M.Size;
      end;
    end
    else
    begin
      H.Size := 0; C.Size := 0; S.Size := 0; O.Size := 0; M.Size := 0;
      fw := StartPoint - CheckPoint2;
      CM.Data := CM.Data + fw;
      CM.Size := PositionSize[Index];
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
    CheckPoint1 := 10 + (2 + FCount + 1) * IntegerSize; // チェックポイント1
    CheckPoint2 := CheckPoint1 + FDataSize; // チェックポイント2

    MS := TMemoryStream.Create;
    try
      P := 'TInfoList'; H.Data := P; H.Size := 10; H.Comment := ''; // ファイルヘッダー
      PC := @FCount; C.Data := PChar(PC); C.Size := IntegerSize; C.Comment := ''; // Count
      PS := @FDataSize; S.Data := PChar(PS); S.Size := IntegerSize; S.Comment := ''; // DataSize
      O.Data := FOffsets; O.Size := (FCount + 1) * IntegerSize; O.Comment := ''; // Offsets[]
      M.Data := FMemory; M.Size := FDataSize; M.Comment := ''; // DataSize
      Comments.SaveToStream(MS);
      CM.Data := PChar(MS.Memory);
      CM.Size := MS.Size;
      CM.Comment := '';

      CheckData;
      Result := Data2Texts([H, C, S, O, M, CM]);
    finally
      MS.Free;
    end;
  end
  else if Index > FCount - 1 then // Index = Count
  begin
    M.Data := FMemory + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Data2Text(M);
  end
  else // 0 < Index < Count - 1
  begin
    M := Items[Index];
    M.Data := M.Data + StartPoint;
    M.Size := PositionSize[Index];
    M.Comment := '';
    Result := Data2Text(M);
  end;
end;

{ Index 番目のデータをテキストに変換するとバイナリ表記文字列が含まれる }
{ かどうか、すなわち ItemPositio = -1 (データを分割しない) の時に }
{ TextItems[Index] にバイナリ表記文字列が含まれるかどうかを返す関数です。}
{ 含まれれば、True をそうでなければ、False を返します。}

function TInfoList.BinaryDescription(Index: Integer): Boolean;
var
  D: TInfoBlock;
begin
  D := Items[Index];
  Result := UseBinaryDescription(D.Data, D.Size, FDataOption);
end;

{ リスト内のデータの位置を返す関数です。戻り値は、以下の通りです。}
{ 0 ～ Count - 1 : データが見つかった場合 }
{ -1             : データがリスト内にない場合 }

function TInfoList.IndexOf(const Item: TInfoBlock): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to FCount - 1 do
  begin
    if (Item.Size = Items[i].Size) and (CompareInfoBlock(Item, Items[i]) = 0) then
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

function TInfoList.IndexOfText(const Item: String): Integer;
var
  D: TInfoBlock;
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

{ 新しいデータをリストに挿入する手続きです。}

procedure TInfoList.Insert(Index: Integer; const Item: TInfoBlock);
var
  i: Integer;
  D: TInfoBlock;
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
  D.Comment := Item.Comment;
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

  { コメントを挿入する。}
  FComments.InsertText(Index, D.Comment);

  { データ数、データサイズ、オフセット値を正しくする。}
  FCount := FCount + 1;
  FDataSize := FDataSize + D.Size;
  ReallocMem(FOffsets, (FCount + 1) * IntegerSize); // IntegerSize バイト増やす。
  for i := FCount downto Index + 1 do
    Offsets[i] := Offsets[i - 1] + D.Size;

  Changed;    // OnChanged イベントをここで発生
end;

{ ファイルの内容をデータとしてリストに挿入する手続きです。}
{ このデータのコメントも同時に指定出来ます。}

procedure TInfoList.InsertFile(Index: Integer; const FileName: String; Comment: String);
var
  MS: TMemoryStream;
  D: TInfoBlock;
begin
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile(FileName);
    D.Data := MS.Memory;
    D.Size := MS.Size;
    D.Comment := Comment;
    Insert(Index, D);
  finally
    MS.Free;
  end;
end;

{ 文字データをリストに挿入する手続きです。BinaryOperation が True の }
{ ときは、バイナリ表記文字列の変換規則に従ってデータ変換を行なってから }
{ 挿入をします。BinaryOperation が False のときは、与えられた文字データ }
{ そのものを挿入します。このデータのコメントも同時に指定出来ます。}

procedure TInfoList.InsertText(Index: Integer; const Item: String; Comment: String);
var
  D: TInfoBlock;
begin
  if FBinaryOperation = True then
  begin
    D := Text2Data(Item); // データ変換を行なう。
    D.Comment := Comment;
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
    D.Comment := Comment;
    Insert(Index, D);
  end;
end;

{ Index 番目のデータが、バイナリデータであるかどうかを調べる関数です。}
{ バイナリデータであれば、True をそうでなければ、False を返します。}

function TInfoList.IsBinary(Index: Integer): Boolean;
var
  D: TInfoBlock;
begin
  if Index < 0 then // Index = -1
    Result := True  // $00 が含まれるので
  else if Index > FCount - 1 then // Index = Count
  begin
    D.Data := FMemory;
    D.Size := FDataSize;
    D.Comment := '';
    Result := HasBinary(D.Data, D.Size);
  end
  else // 0 <= Index <= Count - 1
  begin
    D := Items[Index];
    Result := HasBinary(D.Data, D.Size);
  end;
end;

{ ファイルからロードしたデータを Index 番目のデータとする手続きです。}
{ このデータのコメントも同時に指定出来ます。}

procedure TInfoList.LoadFile(Index: Integer; const FileName: String; Comment: String);
var
  MS: TMemoryStream;
  D: TInfoBlock;
begin
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile(FileName);
    D.Data := MS.Memory;
    D.Size := MS.Size;
    D.Comment := Comment;
    Items[Index] := D;
  finally
    MS.Free;
  end;
end;

{ ファイルからデータのリストを取得する手続きです。}

procedure TInfoList.LoadFromFile(const FileName: String);
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

procedure TInfoList.LoadFromStream(Stream: TStream);
var
  P: PChar;
  ct, ds, rs: Integer;
begin
  rs := Stream.Size - Stream.Position; // 読み込み可能なデータのサイズ
  if rs < (10 + 3 * IntegerSize) * 2 then // TInfoList のデータの最小サイズ(44 バイト)
    Exit;

  Change;    // OnChange イベントをここで発生
  P := Nil;
  ReallocMem(P, 10);
  try
    Stream.ReadBuffer(P^, 10); // ファイルヘッダー
    rs := rs - 10;
    if String(P) = 'TInfoList' then
    begin
      Stream.ReadBuffer(P^, IntegerSize * 2);
      rs := rs - IntegerSize * 2;
      ct := (PInteger(P))^; // データ数
      ds := (PInteger(P + IntegerSize))^; // データサイズ
      if rs >= (ct + 1) * IntegerSize + ds + (10 + 3 * IntegerSize) then
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
          FComments.LoadFromStream(Stream); // コメントのデータを取得する。
          { データ数とコメント数が違う場合は一致させる。}
          While FCount < FComments.Count do FComments.Delete(FComments.Count - 1);
          While FCount > FComments.Count do FComments.AddText('');
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

{ CurIndex 番目のデータを NewIndex 番目へ移動する手続きです。}

procedure TInfoList.Move(CurIndex: Integer; NewIndex: Integer);
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

function TInfoList.Pack: Integer;
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

procedure TInfoList.QuickSort(L, R: Integer; Order: Boolean);
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

procedure TInfoList.SaveFile(Index: Integer; const FileName: String);
var
  MS: TMemoryStream;
  D: TInfoBlock;
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

procedure TInfoList.SaveToFile(const FileName: String);
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

procedure TInfoList.SaveToStream(Stream: TStream);
var
  P: PChar;
begin
  P := 'TInfoList'; // ファイルヘッダー
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
  { コメント }
  FComments.SaveToStream(Stream);
end;

function TInfoList.SCompare(Index1, Index2: Integer; Order: Boolean): Integer;
begin
  Result := CompareInfoBlock(Items[Index1], Items[Index2]);
  if Order = False then
    Result := Result * -1;
end;

procedure TInfoList.SetAllowOverlapping(const Value: Boolean);
begin
  FAllowOverlapping := Value;
  if Value = False then // データの重複を許さない場合
    Clean; // 全ての重複データを削除する。
end;

procedure TInfoList.SetComment(Index: Integer; const Value: String);
begin
  FComments.TextItems[Index] := Value; // コメントは、テキストなので
end;

procedure TInfoList.SetComments(const Value: TDataList);
var
  BO: Boolean;
  AO: Boolean;
begin
  if (Value = Nil) then
    raise Exception.Create('Illegal Data');

  BO := Value.BinaryOperation; AO := Value.AllowOverlapping;
  if (BO = True) or (AO = False) then
  begin // コメントデータは、常にこうでなければならないので一時的に変更する。
    Value.BinaryOperation := False; Value.AllowOverlapping := True;
  end;

  FComments.Assign(Value); // コメントデータをコピーする。

  { データ数とコメント数が違う場合は一致させる。}
  While FCount < FComments.Count do FComments.Delete(FComments.Count - 1);
  While FCount > FComments.Count do FComments.AddText('');

  if (BO = True) or (AO = False) then
  begin // Value の各プロパティ値をもとに戻す。
    Value.BinaryOperation := BO; Value.AllowOverlapping := AO;
  end;
end;

procedure TInfoList.SetDumpItem(Index: Integer; const Value: String);
var
  O, B, D: TInfoBlock;
  fw: Integer;
begin
  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  O := Items[Index]; // もとのデータ
  B := Dump2Data(Value); // O の ItemPosition 番目のブロックと置き換えるデータ
  B.Comment := O.Comment;
  try
    if ItemPosition = -1 then // 全てを置き換える。
      Items[Index] := B
    else
    begin
      fw := ItemPosition * ItemStep;
      D.Data := Nil;
      D.Size := O.Size + (B.Size - PositionSize[Index]);
      D.Comment := O.Comment;
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
        D.Comment := '';
      end;
    end;
  finally
    ReallocMem(B.Data, 0);
    B.Comment := '';
  end;
end;

procedure TInfoList.SetItem(Index: Integer; const Value: TInfoBlock);
var
  i: Integer;
begin
  if (Index < 0) or (Index > FCount - 1) then
    raise ERangeError.CreateFmt('%d is not within the valid range of %d..%d',
     [Index, 0, FCount - 1]);

  if FAllowOverlapping = False then // 重複データを許さない場合
  begin
    i := IndexOf(Value);
    if i <> -1 then // 重複データが見つかった場合
    begin
      if i = Index then // 対象データと同じ場合は、コメントだけを変更する。
        Comment[Index] := Value.Comment;
      Exit;
    end;
  end;

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

procedure TInfoList.SetItemPosition(const Value: Integer);
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

procedure TInfoList.SetItemStep(const Value: Integer);
begin
  FItemStep := Value;
  if (FItemStep mod 16) <> 0 then
    FItemStep := (FItemStep div 16) * 16; // 16 の倍数にする。
  if FItemStep < MinStep then
    FItemStep := MinStep;
end;

procedure TInfoList.SetOffset(Index: Integer; const Value: Integer);
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

procedure TInfoList.SetTextItem(Index: Integer; const Value: String);
var
  O, B, D: TInfoBlock;
  fw: Integer;
begin
  if ItemPosition > MaxPosition[Index] then
    Exit; // ItemPosition は、データが存在しない部分の値であった。

  O := Items[Index]; // もとのデータ
  B := Text2Data(Value); // O の ItemPosition 番目のブロックと置き換えるデータ
  B.Comment := O.Comment;
  try
    if ItemPosition = -1 then // 全てを置き換える。
      Items[Index] := B
    else
    begin
      fw := ItemPosition * ItemStep;
      D.Data := Nil;
      D.Size := O.Size + (B.Size - PositionSize[Index]);
      D.Comment := O.Comment;
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
        D.Comment := '';
      end;
    end;
  finally
    ReallocMem(B.Data, 0);
    B.Comment := '';
  end;
end;

{ データリストをソートする手続きです。}
{ Order の値によって、以下の様にソートします。}
{ True  : 正順にソート }
{ False : 逆順にソート }

procedure TInfoList.Sort(Order: Boolean);
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

{ 文字データを TInfoBlock 形式のデータに変換して返す関数です。}
{ BinaryOperation が True のときは、バイナリ表記文字列の変換規則に }
{ 従ってデータ変換を行ないます。BinaryOperation が False あるいは、}
{ バイナリ表記文字列に誤表現があって変換出来ない場合は、与えられた }
{ 文字データそのものを返します。呼び出し側は、使用後は、このデータ }
{ ブロックのメモリ(Result.Data)を解放しなければなりません。}

function TInfoList.Text2Data(S: String): TInfoBlock;
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
  Result.Comment := '';
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
