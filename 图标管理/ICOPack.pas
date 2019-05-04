//Windows Icon(Cursor) R/W Class  βバージョン
//
//Load 1/4/8/15(16)/24/32bit
//Save none

unit ICOPack;

interface
uses
  Windows,Messages,SysUtils,Classes,Graphics;


type
  // 6Byte
  pIconFileHeader = ^TIconFileHeader;
  TIconFileHeader = packed record
    Reserved  : Word; // 予約
    wType     : Word; // リソースタイプ  [1 アイコン] [2カーソル]
    Count     : Word; // アイコンの枚数
  end;

  // 16Byte
  pIconInfoHeader = ^TIconInfoHeader;
  TIconInfoHeader = packed record
    Width      : Byte;     // アイコンの幅
    Height     : Byte;     // アイコンの高さ
    Colors     : Byte;     // カラー数
    Reserved   : Byte;     // 予約値
    Reserved1  : Word;     // アイコンの場合 : 常に1     カーソルの場合 : X ホットスポット
    Reserved2  : Word;     // アイコンの場合 : ビット数  カーソルの場合 : Y ホットスポット
    DIBSize    : DWord;    // BitmapInfoHeaderとピクセルデータのサイズ
    DIBOffset  : DWord;    // ファイルの先頭からBItmapInfoHeaderまでのオフセット
  end;

 type
  pIconData =^TIconData;
  TIconData =packed record
   IsIcon   : Word;    // リソースタイプ
   Width    : Byte;    // 幅
   Height   : Byte;    // 高さ
   Colors   : Byte;    // カラー数
   BitCount : Byte;    // ビット深度
   HotSpot  : TPoint;  // カーソルの場合のみ有効
   hBMP     : HBitmap; // ビットマップのハンドル
   FileMem  : Pointer; // ファイルアクセス用ポインタ
   FileSize : Dword;   // ファイルのサイズ
 end;

 type

 TRGBA=packed record
   B,G,R,A : BYTE;
 end;

 TRGB=packed record
   B,G,R : BYTE;
 end;

 //24bit用ポインタ
 pRGB24 = ^TRGB24;
 TRGB24 = array[0..0] of TRGB;
 //32bit用ポインタ
 pRGB32    =^TRGB32;
 TRGB32    = array[0..0] of TRGBA;

 type
  TPaletteData =packed record
   Count : Word;
   RGBs  : array [0..256] of TRGB;
 end;



{

　[アイコンファイルフォーマット概要]

  -----------------------------
   IconFileHeader   (6Byte)
  -----------------------------
   IconInfoHeader   (16Byte)
  -----------------------------
   BitmapInfoHeader (40Byte)
  -----------------------------
   カラーパレット   (可変)
  -----------------------------
   カラーデータ     (可変)
  -----------------------------
   マスクデータ     (可変)       1bitデータ  ビットがセットされていると透明になる
  -----------------------------

    透明色 ... 透明フラグがある場合はその部分が透明になる
    反転色 ... 透明フラグがあり色が[白]の場合は反転色になる。

    1/4/8bit ...  カラーパレットあり
    16bit    ...  カラーパレットなし 32x32x32    RGB
    24bit    ...  カラーパレットなし 256x256x256 RGB
    32bit    ...  24bitに8bitアルファを付加したもの


  複数枚の画像がある場合はこのようになる。

   -----------------------------
   IconFileHeader   (6Byte)
  -----------------------------
   IconInfoHeader   (16Byte)   1枚目
  -----------------------------
   IconInfoHeader   (16Byte)   2枚目
  -----------------------------
   IconInfoHeader   (16Byte)   ・・・
  -----------------------------
   IconInfoHeader   (16Byte)   N 枚目
  -----------------------------
   この後にBitmapInfoHeaderは続くのでファイルポインタをSeekする必要がある。


}


{ TIconImageEx }
   Type
    TIconImageEx = class(TBitmap)
    private
      PaletteData : TPaletteData;
      FUsesAlphlaBlend : Boolean;
      FLoad24bitBitmap : Boolean;
      FBackColor : Dword;
      FHostSpot  : TPoint;
      FIsIcon    : Boolean;
      FNotColor  : Boolean;
      FFileCount : Word;
      function  SeachColorIndex(R,G,B : Byte):Byte;
      procedure CreateBitmapPalette(Stream : TStream; PalSize : WORD; BMP :TBitmap);
      function  CreateXorBitmap(Stream : TStream; BitsSize : Dword;BI:TBitmapInfoHeader):HBitmap;
      function  CreateAndBitmap(Stream: TStream; MaskSize : Dword;BI:TBitmapInfoHeader):HBitmap;
      function  AlphlaBlend32(hXor,hAnd: HBitmap; R,G,B : Byte):HBitmap;
    public
      constructor Create; override;
      destructor Destroy; override;
      procedure LoadFromStream(Stream: TStream); override;
      procedure SaveToStream(Stream:   TStream); override;
    published
      property  HostSpot  : TPoint  read FHostSpot;     // ホットスポット
      property  IsIcon    : Boolean read FIsIcon;       // アイコンイメージ?
      property  FileCount : Word    read FFileCount;    // ファイル数
      property  NotColor  : Boolean read FNotColor ;    // 反転色があるかどうか？(Load24bitBitmapがTrueになっている場合のみ有効)
      property  UsesAlphlaBlend : Boolean read FUsesAlphlaBlend write FUsesAlphlaBlend;
      property  BackColor : Dword read FBackColor write FBackColor;
      property  Load24bitBitmap : Boolean read FLoad24bitBitmap write FLoad24bitBitmap;
  end;

  type
  TIconEx = class(TComponent)
  private
    FStretchMode :Boolean;
    procedure WriteIcon(Stream: TStream; Icon: HICON; WriteLength: Boolean);
    function  BytesPerScanline(PixelsPerScanline, BitsPerPixel,Alignment: Integer): Longint;
    procedure CheckBool(Result: Bool);
    procedure InitializeBitmapInfoHeader(Bitmap: HBITMAP;  var BI: TBitmapInfoHeader; Colors: Integer);
    function  InternalGetDIB(Bitmap: HBITMAP; Palette: HPALETTE; var BitmapInfo; var Bits; Colors: Integer): Boolean;
    procedure InternalGetDIBSizesA(Bitmap: HBITMAP; var InfoHeaderSize,ImageSize: DWORD; Colors: Integer);
    procedure InvalidBitmap;
    procedure WinError;
  protected
  public
    function  CreateIcon(ABitmap:TBitmap):TIcon;
    procedure SaveToFileIcon16(AIcon:Ticon;Afile:string);
    procedure SaveToFileIcon256(AIcon:Ticon;Afile:string);
    property  StretchMode : Boolean read FStretchMode write FStretchMode;
  published
  end;


implementation

////////
function Set255(Value :Integer) : Byte;
begin
  if Value>255 then
  begin
    Result:=255;
    Exit;
    end
  else if  Value<0  then
  begin
    Result:=0;
    exit;
  end;
    Result:=Value;
end;

/////////  1bitマスクを24bit化して透過フラグを取得
procedure GetMask24Bits(hBMP : HBitmap; Var Source : PByteArray);
Var
 BMP    : TBitmap;
 Dest24 : pRGB24;
 X,Y,BitsCnt  : Dword;
begin

 BMP :=TBitmap.Create;

 Try
   BMP.handle:=hBMP;
   BitsCnt:=0;

   BMP.pixelformat:=pf24bit;
   for Y := 0 to BMP.Height-1   do
   begin
      Dest24 :=BMP.ScanLine[Y];
      for X := 0 to bmp.Width - 1  do
      begin
        Source[BitsCnt]:=Dest24[x].B and $1;
        inc(BitsCnt);
      end;
   end;
 finally
  BMP.free;
 end;

end;

//////// 4の倍数(?)対策(ビットマップの幅を取得)
function GetLineWidth(BitCount,Width : WORD ):DWORD;
Var
 Dummy :DWORD;
begin
  Dummy :=0;
  case BitCount of
   1  : Dummy :=((Width + 7) div 8)  ;
   4  : Dummy :=((Width + 7) div 8)  shl 2;
   8  : Dummy :=Width;
  end;

  if(Dummy and $003)<>0 then Dummy := (Dummy or 3) + 1;

  Result :=Dummy;
end;

// 以下16bitファイルのビット操作
//function GetRValueW(Value : WORD):Byte; begin Result:=(Value AND $001F);end;
//function GetGValueW(Value : WORD):Byte; begin Result:=(Value AND $03E0) shr 5;end;
//function GetBValueW(Value : WORD):Byte; begin Result:=(Value AND $7C00) shr 10;end;
function ColorSpace32(R,G,B :Byte):Word;begin Result:=(((B) shr 3) shl 10) or (((G) shr 3) shl 5) or ((R) shr 3);end;

{ ---------- }
{ TIconImageEx }
{ ---------- }

constructor TIconImageEx.Create;
begin
  inherited Create;
  ZeroMemory(@PaletteData,sizeof(TPaletteData));

  FLoad24bitBitmap :=False;
  FUsesAlphlaBlend :=False;
  FIsIcon          :=False;
  FNotColor        :=False;
  FFileCount       :=0;
  FHostSpot.x :=0;
  FHostSpot.y :=0;
  FBackColor  :=RGB(255,255,255);
end;

destructor TIconImageEx.Destroy;
begin
  inherited Destroy;
end;


function TIconImageEx.SeachColorIndex(R,G,B : Byte):Byte;
Var
 i :Integer;
begin
  // パレットから指定されたカラーのインデックス値を検索

  Result :=0;
  for i:= 0 to PaletteData.Count -1 do
  begin
    if  (PaletteData.RGBs[i].B =B) and (PaletteData.RGBs[i].G =G) and (PaletteData.RGBs[i].R =R) then
    begin
      Result :=i;
      Exit;
    end;
  end;
end;

procedure TIconImageEx.CreateBitmapPalette(Stream : TStream; PalSize : WORD; BMP :TBitmap);
var
  i: Integer;
  LogPalette: TMaxLogPalette;
  RGBQUA :array [0..256] of TRGBQUAD;
begin

  //パレットの読み込み&作成

  FillChar(LogPalette, SizeOf(LogPalette), 0);
  LogPalette.palVersion := $300;

  ZeroMemory(@RGBQUA ,sizeof(TRGBQUAD)*256);
  Stream.Read(RGBQUA,PalSize*4);

  LogPalette.palNumEntries := PalSize;

  // キャッシュに格納
  PaletteData.Count := PalSize;

  for i := 0 to PalSize-1 do
  begin
    LogPalette.palPalEntry[i].peBlue   := RGBQUA[i].rgbBlue;
    LogPalette.palPalEntry[i].peGreen  := RGBQUA[i].rgbGreen;
    LogPalette.palPalEntry[i].peRed    := RGBQUA[i].rgbRed;

    // キャッシュに格納
    PaletteData.RGBs[i].B:= RGBQUA[i].rgbBlue;
    PaletteData.RGBs[i].G:= RGBQUA[i].rgbGreen;
    PaletteData.RGBs[i].R:= RGBQUA[i].rgbRed;
  end;

  BMP.Palette := CreatePalette(PLogPalette(@LogPalette)^);
end;



function TIconImageEx.CreateXorBitmap(Stream : TStream; BitsSize : Dword;BI:TBitmapInfoHeader):HBitmap;
Var
 x,y :Integer;
 SrcRow,DestRow  : pByte;
 Dest16          : pWord;
 Dest24          : pRGB24;
 Dest32          : pRGB32;
 SrcMem          : Pointer;
 BMP  : TBitmap;
 MemoryStream : TMemoryStream;
 LineWidth : DWord;
begin

    // XorBitmap作成
    BMP :=TBitmap.Create;

    // ビット深度等の設定
    case BI.biBitCount of
       1     : BMP.PixelFormat := pf1Bit;
       4     : BMP.PixelFormat := pf4Bit;
       8     : BMP.PixelFormat := pf8Bit;
       16    : BMP.PixelFormat := pf15Bit;
       24    : BMP.PixelFormat := pf24Bit;
       32    : BMP.PixelFormat := pf32Bit;
    end;

    BMP.Width       := BI.biWidth;
    BMP.Height      := BI.biHeight;

    // パレットの構築
    if BI.biClrUsed<>0 then  CreateBitmapPalette(Stream,BI.biClrUsed,BMP);

    //SrcRow
    MemoryStream:=TMemoryStream.create;
    Try
     MemoryStream.CopyFrom(Stream,BitsSize);
     MemoryStream.Position:=0;
     GetMem(SrcMem,BitsSize);
     Move(MemoryStream.Memory^,SrcMem^,BitsSize);
    finally
     MemoryStream.Free;
    end;

 try

    SrcRow:=PByte(SrcMem);
    if BI.biBitCount in [1,4,8] then
    begin
        // 横幅のサイズ(Byte単位)を算出
        LineWidth := GetLineWidth(BI.biBitCount,BI.biWidth);
        for Y := BMP.Height-1 downto 0  do
        begin
           DestRow :=BMP.ScanLine[Y];
           Move(SrcRow^,DestRow^, LineWidth);
           inc(SrcRow,LineWidth);
        end;
    end
    else if  BI.biBitCount=16 then
    begin
        for Y := BMP.Height-1 downto 0  do
        begin
          Dest16 :=BMP.ScanLine[Y];
          Move(SrcRow^,Dest16^,BMP.Width*2);
          inc(SrcRow,BMP.Width*2);
        end;
     end
    else if  BI.biBitCount=24 then
    begin
        for Y := BMP.Height-1 downto 0  do
        begin
          Dest24 :=BMP.ScanLine[Y];
          for X := 0 to BMP.width-1  do
          begin
               Dest24[x].B   :=SrcRow^; inc(SrcRow);
               Dest24[x].G   :=SrcRow^; inc(SrcRow);
               Dest24[x].R   :=SrcRow^; inc(SrcRow);
          end;
        end;
     end
    else if  BI.biBitCount=32 then
    begin
        for Y := BMP.Height-1 downto 0  do
        begin
          Dest32 :=BMP.ScanLine[Y];
          for X := 0 to BMP.width-1  do
          begin
               Dest32[x].B :=SrcRow^ ;inc(SrcRow);
               Dest32[x].G :=SrcRow^ ;inc(SrcRow);
               Dest32[x].R :=SrcRow^ ;inc(SrcRow);
               // αチャンネル(0 は完全な透明、255 は完全な不透明)
               Dest32[x].A :=SrcRow^;inc(SrcRow);
          end;
        end;
     end;

    Result:=BMP.ReleaseHandle;
 finally
   BMP.Free;
   FreeMem(SrcMem);
 end;
end;

///////// マスクビットマップの作成
function TIconImageEx.CreateAndBitmap(Stream: TStream; MaskSize : Dword;BI:TBitmapInfoHeader):HBitmap;
Var
 y :Integer;
 MaskRow,DestRow  : pByte;
 MaskMem  : Pointer;
 BMP :TBitmap;
 MemoryStream : TMemoryStream;
 LineWidth : DWord;
 LogPalette: TMaxLogPalette;
begin

    //MaskRow
    MemoryStream:=TMemoryStream.create;
       MemoryStream.CopyFrom(Stream,MaskSize);
       MemoryStream.Position:=0;
       GetMem(MaskMem,MaskSize);
       Move(MemoryStream.Memory^,MaskMem^,MaskSize);
       MaskRow:=PByte(MaskMem);
    MemoryStream.Free;

    BMP :=TBitmap.Create;
    BMP.PixelFormat := pf1Bit;
    BMP.Width       := BI.biWidth;
    BMP.Height      := BI.biHeight;

    // パレットを構築
    ZeroMemory(@LogPalette, SizeOf(LogPalette));
    LogPalette.palVersion := $300;
    LogPalette.palNumEntries := 2;
    LogPalette.palPalEntry[1].peBlue   := 255;
    LogPalette.palPalEntry[1].peGreen  := 255;
    LogPalette.palPalEntry[1].peRed    := 255;

    BMP.Palette := CreatePalette(PLogPalette(@LogPalette)^);

   try
        // 横幅のサイズ(Byte単位)を算出
        LineWidth := GetLineWidth(1,BI.biWidth);

        // データを格納
        for Y := BMP.Height-1 downto 0  do
        begin
           DestRow :=BMP.ScanLine[Y];
           Move(MaskRow^,DestRow^, LineWidth);
           inc(MaskRow,LineWidth);
        end;

        Result:=BMP.ReleaseHandle

   finally
     BMP.Free; FreeMem(MaskMem);
   end;
end;

/////////
function TIconImageEx.AlphlaBlend32(hXor,hAnd: HBitmap; R,G,B : Byte):HBitmap;
Var
 XorBitmap,AndBitmap:TBitmap;
 MaskMem : Pointer;
 MaskRow : PByteArray;
 Dest8   : PByteArray;
 Dest16  : PWordArray;
 Dest24  : pRGB24;
 Dest32  : pRGB32;
 x,y,i   : Dword;
 PalNo,Bytes :Byte;
 Sub,MaskCnt : Dword;
 amount : Extended;
begin

  // ブレンド

  XorBitmap :=TBitmap.Create;
  AndBitmap :=TBitmap.Create;

  XorBitmap.Handle:= hXor;
  AndBitmap.Handle:= hAnd;

    GetMem(MaskMem,XorBitmap.Width*XorBitmap.Height);
    MaskRow :=PByteArray(Maskmem);

  Try
    // マスクビットを取得
    GetMask24Bits(AndBitmap.ReleaseHandle,MaskRow);

    MaskCnt:=0;

    if XorBitmap.PixelFormat = pf1bit then
    begin
        // 1bitの場合はパレットは黒->白の順になっているはずなので「xor」だけで可能なはず。
        for Y :=  0 to XorBitmap.Height-1  do
        begin
             Dest8 :=XorBitmap.ScanLine[Y];
             for X := 0 to (XorBitmap.width div 8)-1  do
             begin
                   Bytes :=0;
                   for i:= 1 to 8 do
                   begin
                      Bytes :=Bytes or (MaskRow[MaskCnt] shl (8-i));
                      inc(MaskCnt);
                   end;
                   Dest8[x] :=Dest8[x] xor Bytes;

             end;

             // 端数が出る場合があるので修正する。
             Sub:= XorBitmap.width - ((XorBitmap.width div 8) * 8) ;
             if ( Sub<>0 )then
             begin
                   Bytes :=0;
                   // 端数が出る場合は1-7までしかでない。
                   for i:= 1 to sub do
                   begin
                       Bytes :=Bytes or (MaskRow[MaskCnt] shl (8-i));
                       inc(MaskCnt);
                   end;
                   Dest8[(XorBitmap.width div 8)] :=Dest8[(XorBitmap.width div 8)] xor Bytes;
             end;
         end;
    end
    else if XorBitmap.PixelFormat = pf4bit then
    begin
        // パレット番号
        palNo:=SeachColorIndex(R,G,B);

        for Y :=  0 to XorBitmap.Height-1  do
        begin
             Dest8 :=XorBitmap.ScanLine[Y];

             for x := 0 to  (XorBitmap.width div 2)-1 do
             begin
               // 上位4bit
               if MaskRow[MaskCnt]<>0 then  Dest8[x] := ((palNo shl 4) and $F0) or (Dest8[x] and $0F);
               inc(MaskCnt);

               // 下位4bit
               if MaskRow[MaskCnt]<>0 then  Dest8[x] := ((palNo) and $0F) or (Dest8[x] and $F0);
               inc(MaskCnt);
             end;

             // 端数が出る場合があるので修正する。
             Sub:= XorBitmap.width - ((XorBitmap.width div 2) * 2) ;
             if ( Sub<>0 )then
             begin
                if MaskRow[MaskCnt]<>0 then
                begin
                   // 端数が出る場合は必ず上位4bitしかでない。
                   Dest8[(XorBitmap.width div 2)] := ((palNo shl 4) and $F0) or (Dest8[(XorBitmap.width div 2)] and $00);
                end;
                inc(MaskCnt);
             end;
        end;
    end
    else if XorBitmap.PixelFormat = pf8bit then
    begin
        // パレット番号
        palNo:=SeachColorIndex(R,G,B);
        for Y :=  0 to XorBitmap.Height-1  do
        begin
             Dest8 :=XorBitmap.ScanLine[Y];
             for X := 0 to XorBitmap.width-1  do
             begin
               if MaskRow[MaskCnt]<>0 then
               begin
                 Dest8[x] :=palNo;
               end;

               inc(MaskCnt);
             end;
        end;
    end
    else if  XorBitmap.PixelFormat = pf15bit then
    begin
        for Y := 0 to XorBitmap.Height-1  do
        begin
          Dest16 :=XorBitmap.ScanLine[Y];
          for X := 0 to XorBitmap.width-1  do
          begin
               if MaskRow[MaskCnt]<>0 then
                 Dest16[x]  :=ColorSpace32(R,G,B);
               inc(MaskCnt);
          end;
        end;
    end
    else if  XorBitmap.PixelFormat = pf24bit then
    begin
        for Y := 0 to XorBitmap.Height-1  do
        begin
          Dest24 :=XorBitmap.ScanLine[Y];
          for X := 0 to XorBitmap.width-1  do
          begin
               if MaskRow[MaskCnt]<>0 then
               begin

                    // 透明フラグがあり色が[白]の場合は反転色になる。
                    if ((Dest24[x].B=255) and  (Dest24[x].G=255) and (Dest24[x].R=255)) then
                      FNotColor :=True;

                     Dest24[x].B  := B;
                     Dest24[x].G  := G;
                     Dest24[x].R  := R;
               end;
               inc(MaskCnt);
          end;
        end;
    end
    else if XorBitmap.PixelFormat = pf32bit then
    begin
        if FUsesAlphlaBlend then
        begin
             for Y := 0 to XorBitmap.Height-1 do
             begin
               Dest32 :=XorBitmap.ScanLine[Y];
               for X := 0 to XorBitmap.width-1  do
               begin
                     // アルファブレンド(イメージの合成方法が若干、違うかも)
                     amount := Dest32[x].A / 255;
                     Dest32[x].R  :=set255(Round ( ((1-amount)*R)+(amount*Dest32[x].R)));
                     Dest32[x].G  :=set255(Round ( ((1-amount)*G)+(amount*Dest32[x].G)));
                     Dest32[x].B  :=set255(Round ( ((1-amount)*B)+(amount*Dest32[x].B)));

                     // 背景色の設定
                     if MaskRow[MaskCnt]<>0 then
                     begin
                         Dest32[x].R :=R;
                         Dest32[x].G :=G;
                         Dest32[x].B :=B;
                     end;

                     inc(MaskCnt);
               end;
             end;
        end
        else
        begin
             for Y := 0 to XorBitmap.Height-1 do
             begin
               Dest32 :=XorBitmap.ScanLine[Y];
               for X := 0 to XorBitmap.width-1  do
               begin
                    // 透明な色は透明にするだけ
                    if Dest32[x].A=0 then
                    begin
                      Dest32[x].R :=R;
                      Dest32[x].G :=G;
                      Dest32[x].B :=B;
                    end;

                    // 背景色の設定
                    if MaskRow[MaskCnt]<>0 then
                    begin
                       Dest32[x].R :=R;
                       Dest32[x].G :=G;
                       Dest32[x].B :=B;
                    end;

                    inc(MaskCnt);
               end;
             end;
        end;
     end;

    Result:=XorBitmap.ReleaseHandle;

  finally
     FreeMem(MaskMem) ;
     XorBitmap.Free;  AndBitmap.Free;
  end;
end;

///////
procedure TIconImageEx.LoadFromStream(Stream: TStream);
Var
 IconFileHeader   : TIconFileHeader;
 IconInfoHeader   : TIconInfoHeader;
 BI : TBitmapInfoHeader;
 XorBitmap,AndBitmap :TBitmap;
 MskBitsSize,BitsSize :DWord;
begin
  // 初期化
  ZeroMemory(@PaletteData,sizeof(TPaletteData));
  ZeroMemory(@IconFileHeader,sizeof(TIconFileHeader)) ;
  ZeroMemory(@IconInfoHeader,sizeof(TIconInfoHeader)) ;
  ZeroMemory(@BI,sizeof(TBitmapInfoHeader)) ;

  FNotColor   :=False; FHostSpot.x :=0;  FHostSpot.y :=0;

  // ファイルヘッダーの取得
  Stream.Read(IconFileHeader,sizeof(TIconFileHeader));
  Stream.Read(IconInfoHeader,sizeof(TIconInfoHeader));

  // アイコンかカーソル
  if IconFileHeader.wType =1 then
     FIsIcon :=True
  else if IconFileHeader.wType =2 then
  begin
     FIsIcon :=False;
     FHostSpot.x :=IconInfoHeader.Reserved1;
     FHostSpot.y :=IconInfoHeader.Reserved2;
  end
  else
     raise Exception.Create('このファイルはアイコン/カーソルではありません。');

  FFileCount :=IconFileHeader.Count;

  // 複数毎のイメージが格納されている可能性があるので注意が必要。
  Stream.Position:=IconInfoHeader.DIBOffset;
  Stream.Read(BI,sizeof(TBitmapInfoHeader));

  // BitmapInfoHeader.biHeightにはマスク分のデータも入っているで変更
  BI.biWidth         := IconInfoHeader.Width;
  BI.biHeight        := IconInfoHeader.Height;

  // マスクデータと画像データのサイズを計算
  MskBitsSize := Cardinal(((1 * BI.biWidth + 31) div 32) * 4 * abs(BI.biHeight)) ;
  BitsSize    := Cardinal(((BI.biBitCount * BI.biWidth + 31) div 32) * 4 * abs(BI.biHeight)) ;

  // パレットのサイズが違うので修正する。
  Case  BI.biBitCount of
     1 : BI.biClrUsed:= 2;
     4 : BI.biClrUsed:= 16;
     8 : BI.biClrUsed:= 256;
  end;


  XorBitmap  := TBitmap.Create;
  AndBitmap  := TBitmap.Create;

  Try
        // Xor Bitmap取得
        XorBitmap.Handle:= CreateXorBitmap(Stream,BitsSize,BI);
        // AND Bitmap取得
        AndBitmap.Handle:= CreateAndBitmap(Stream,MskBitsSize,BI);

        // Xor BitmapとAND Bitmapを合成
        if FLoad24bitBitmap then
          if XorBitmap.PixelFormat <>pf32bit then
             XorBitmap.PixelFormat :=pf24bit;

        Self.handle := AlphlaBlend32(XorBitmap.ReleaseHandle,AndBitmap.ReleaseHandle,
                   GetRValue(FBackColor),GetGValue(FBackColor), GetBValue(FBackColor));

  finally
      XorBitmap.free;
      AndBitmap.Free;
  end;

end;

/////////
procedure TIconImageEx.SaveToStream(Stream: TStream);
begin
 // none
end;



////////////////////////////////////////////////////////////////////////////////

{ TIconEx }

////////
procedure TIconEx.SaveToFileIcon16(AIcon:Ticon;Afile:string);
begin
     AIcon.SaveToFile (Afile);
end;

/////////
procedure TIconEx.SaveToFileIcon256(AIcon:Ticon;Afile:string);
var
   fs:TFilestream;
begin
     fs:=Tfilestream.Create (afile, fmcreate or fmopenwrite);
     writeIcon(fs,AIcon.handle,false);
     fs.Free;
end;

////////
function TIconEx.CreateIcon(ABitmap:TBitmap):TIcon;
var
  IconSizeX : integer;
  IconSizeY : integer;
  XOrMask : TBitmap;
  MonoMask:TBitmap;
  BlackMask:TBitmap;
  IconInfo : TIconInfo;
  R:trect;
  transcolor:Tcolor;
begin
 {Get the icon size}
  IconSizeX := GetSystemMetrics(SM_CXICON);
  IconSizeY := GetSystemMetrics(SM_CYICON);
  R:=Rect(0, 0, IconSizeX, IconSizeY);


 {Create the "XOr" mask}
  XOrMask := TBitmap.Create;
  XOrMask.Width := IconSizeX;
  XOrMask.Height := IconSizeY;

  {stretchdraw mypaint}
  XorMask.canvas.draw(0,0,Abitmap);
  //透明色の設定
  transcolor:=XorMask.Canvas.Pixels [0,IconSizeY-1];

 {Create the Monochrome mask}
  MonoMask := TBitmap.Create;
  MonoMask.Width := IconSizeX;
  MonoMask.Height := IconSizeY;
  MonoMask.Canvas.Brush.Color := Clwhite;
  MonoMask.Canvas.FillRect(R);

 {Create the Black mask}
  BlackMask := TBitmap.Create;
  BlackMask.Width := IconSizeX;
  BlackMask.Height := IconSizeY;


 {if black is not the transcolor we must replace black
  with a temporary color}
  if transcolor<>clblack then
  begin
   BlackMask.Canvas.Brush.Color := $F8F9FA;
   BlackMask.Canvas.FillRect(R);
   BlackMask.canvas.BrushCopy(R,XorMask,R,clblack);
   XorMask.Assign (BlackMask);
  end;

  {now make the black mask}
  BlackMask.Canvas.Brush.Color := Clblack;
  BlackMask.Canvas.FillRect(R);

 {draw the XorMask with brushcopy}
  BlackMask.canvas.BrushCopy(R,XorMask,R,transcolor);
  XorMask.Assign (BlackMask);

 {Assign and draw the mono mask}
  XorMask.Transparent:=true;
//  XorMask.TransparentColor :=transcolor;
  XorMask.TransparentColor :=clblack;
  MonoMask.Canvas.draw(0,0,XorMask);
  MonoMask.canvas.copymode:=cmsrcinvert;
  MonoMask.canvas.CopyRect (R,XorMask.canvas,R);
  MonoMask.monochrome:=true;

//  XorMask.transparent:=false;

  {restore the black color in the image}
  BlackMask.Canvas.Brush.Color := Clblack;
  BlackMask.Canvas.FillRect(R);
  BlackMask.canvas.BrushCopy(R,XorMask,R,$F8F9FA);
  XorMask.Assign (BlackMask);


 {Create a icon}
  result := TIcon.Create;
  IconInfo.fIcon := true;
  IconInfo.xHotspot := 0;
  IconInfo.yHotspot := 0;
  IconInfo.hbmMask := MonoMask.Handle;
  IconInfo.hbmColor := XOrMask.Handle;
  result.Handle := CreateIconIndirect(IconInfo);

 {Destroy the temporary bitmaps}
  XOrMask.Free;
  MonoMask.free;
  BlackMask.free;
end;

/////////
procedure TIconEx.WinError;
begin
end;


////////
procedure TIconEx.CheckBool(Result: Bool);
begin
  if not Result then WinError;
end;

////////
function TIconEx.BytesPerScanline(PixelsPerScanline, BitsPerPixel, Alignment: Longint): Longint;
begin
  Dec(Alignment);
  Result := ((PixelsPerScanline * BitsPerPixel) + Alignment) and not Alignment;
  Result := Result div 8;
end;


////////
procedure TIconEx.InvalidBitmap;
begin
  raise Exception.Create('失敗しちゃった!!');
end;

////////
procedure TIconEx.InitializeBitmapInfoHeader(Bitmap: HBITMAP; var BI: TBitmapInfoHeader;
  Colors: Integer);
var
  DS: TDIBSection;
  Bytes: Integer;
begin
  DS.dsbmih.biSize := 0;
  Bytes := GetObject(Bitmap, SizeOf(DS), @DS);
  if Bytes = 0 then InvalidBitmap
  else if (Bytes >= (sizeof(DS.dsbm) + sizeof(DS.dsbmih))) and
    (DS.dsbmih.biSize >= DWORD(sizeof(DS.dsbmih))) then
    BI := DS.dsbmih
  else
  begin
    FillChar(BI, sizeof(BI), 0);
    with BI, DS.dsbm do
    begin
      biSize := SizeOf(BI);
      biWidth := bmWidth;
      biHeight := bmHeight;
    end;
  end;
  if Colors <> 0 then
    case Colors of
      2: BI.biBitCount := 1;
      16: BI.biBitCount := 4;
      256: BI.biBitCount := 8;
    end
  else BI.biBitCount := DS.dsbm.bmBitsPixel * DS.dsbm.bmPlanes;
  BI.biPlanes := 1;
  if BI.biSizeImage = 0 then
    BI.biSizeImage := BytesPerScanLine(BI.biWidth, BI.biBitCount, 32) * Abs(BI.biHeight);
end;

/////////
procedure TIconEx.InternalGetDIBSizesA(Bitmap: HBITMAP; var InfoHeaderSize: DWORD;
  var ImageSize: DWORD; Colors: Integer);
var
  BI: TBitmapInfoHeader;
begin
  InitializeBitmapInfoHeader(Bitmap, BI, Colors);
  if BI.biBitCount > 8 then
  begin
    InfoHeaderSize := SizeOf(TBitmapInfoHeader);
    if (BI.biCompression and BI_BITFIELDS) <> 0 then
      Inc(InfoHeaderSize, 12);
  end
  else
    InfoHeaderSize := SizeOf(TBitmapInfoHeader) + SizeOf(TRGBQuad) *
      (1 shl BI.biBitCount);
  ImageSize := BI.biSizeImage;
end;

////////
function TIconEx.InternalGetDIB(Bitmap: HBITMAP; Palette: HPALETTE;
  var BitmapInfo; var Bits; Colors: Integer): Boolean;
var
  OldPal: HPALETTE;
  DC: HDC;
begin
  InitializeBitmapInfoHeader(Bitmap, TBitmapInfoHeader(BitmapInfo), Colors);
  OldPal := 0;
  DC := CreateCompatibleDC(0);
  try
    if Palette <> 0 then
    begin
      OldPal := SelectPalette(DC, Palette, False);
      RealizePalette(DC);
    end;
    Result := GetDIBits(DC, Bitmap, 0, TBitmapInfoHeader(BitmapInfo).biHeight, @Bits,
      TBitmapInfo(BitmapInfo), DIB_RGB_COLORS) <> 0;
  finally
    if OldPal <> 0 then SelectPalette(DC, OldPal, False);
    DeleteDC(DC);
  end;
end;

/////////
procedure TIconEx.WriteIcon(Stream: TStream; Icon: HICON; WriteLength: Boolean);
type
  TCursorOrIcon = packed record
    Reserved: Word;
    wType: Word;
    Count: Word;
  end;
  PIconRec = ^TIconRec;
  TIconRec = packed record
    Width: Byte;
    Height: Byte;
    Colors: Word;
    Reserved1: Word;
    Reserved2: Word;
    DIBSize: Longint;
    DIBOffset: Longint;
  end;

var
  IconInfo: TIconInfo;
  MonoInfoSize, ColorInfoSize: DWORD;
  MonoBitsSize, ColorBitsSize: DWORD;
  MonoInfo, MonoBits, ColorInfo, ColorBits: Pointer;
  CI: TCursorOrIcon;
  List: TIconRec;
  Length: Longint;
begin
  FillChar(CI, SizeOf(CI), 0);
  FillChar(List, SizeOf(List), 0);
  CheckBool(GetIconInfo(Icon, IconInfo));
  try
    InternalGetDIBSizesA(IconInfo.hbmMask, MonoInfoSize, MonoBitsSize, 2);
    InternalGetDIBSizesA(IconInfo.hbmColor, ColorInfoSize, ColorBitsSize, 256);
    MonoInfo := nil;
    MonoBits := nil;
    ColorInfo := nil;
    ColorBits := nil;
    try
      MonoInfo := AllocMem(MonoInfoSize);
      MonoBits := AllocMem(MonoBitsSize);
      ColorInfo := AllocMem(ColorInfoSize);
      ColorBits := AllocMem(ColorBitsSize);
      InternalGetDIB(IconInfo.hbmMask, 0, MonoInfo^, MonoBits^, 2);
      InternalGetDIB(IconInfo.hbmColor, 0, ColorInfo^, ColorBits^, 256);
      if WriteLength then
      begin
        Length := SizeOf(CI) + SizeOf(List) + ColorInfoSize +
          ColorBitsSize + MonoBitsSize;
        Stream.Write(Length, SizeOf(Length));
      end;
      with CI do
      begin
        CI.wType := 1;
        CI.Count := 1;
      end;
      Stream.Write(CI, SizeOf(CI));
      with List, PBitmapInfoHeader(ColorInfo)^ do
      begin
        Width := biWidth;
        Height := biHeight;
        if (biBitCount = 1) then
        begin
           Colors := 2;
        end
        else if (biBitCount = 4) then
        begin
           Colors := 16;
        end
        else
        begin
          Colors := 0;
        end;
        Reserved1 := 1;
        Reserved2 := biBitCount;
        DIBSize := ColorInfoSize + ColorBitsSize + MonoBitsSize;
        DIBOffset := SizeOf(CI) + SizeOf(List);
      end;
      Stream.Write(List, SizeOf(List));
      with PBitmapInfoHeader(ColorInfo)^ do
        Inc(biHeight, biHeight); { color height includes mono bits }
      Stream.Write(ColorInfo^, ColorInfoSize);
      Stream.Write(ColorBits^, ColorBitsSize);

      ZeroMEmory(MonoBits,MonoBitsSize) ;

      Stream.Write(MonoBits^, MonoBitsSize);
    finally
      FreeMem(ColorInfo, ColorInfoSize);
      FreeMem(ColorBits, ColorBitsSize);
      FreeMem(MonoInfo, MonoInfoSize);
      FreeMem(MonoBits, MonoBitsSize);
    end;
  finally
    DeleteObject(IconInfo.hbmColor);
    DeleteObject(IconInfo.hbmMask);
  end;
end;
end.


