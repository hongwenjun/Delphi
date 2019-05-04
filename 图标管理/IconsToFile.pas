unit IconsToFile;
// version  1.2
interface

uses Classes;

type
  TBitCount = (BitC1, BitC4, BitC8, BitC24, BitC32);
{use the TBitCount to set the Color Depth (number of Colors)
in your saved Icon file}

  PMutiIcon = ^TMutiIcon;
  TMutiIcon = Record
    hIcon: Cardinal;
    BitCount: TBitCount;
    end;
{you need to use this TMutiIcon as an Array in the IconsToStream
function, setting the hIcon and it's Bit Count for each Icon in the file}

{ALL of these Icon To File functions will save an Icon to File AND
it will OVERWRITE an existing file WITHOUT prompting or warning}


function hIconToFile(FileName: String; hIcon: Cardinal;
                      iconBitCount: TBitCount): Integer;
{the hIconToFile fuction
This has a TBitCount parameter, which you set to have this Icon saved in that
color Bit Count (Color Depth). There is no visuall difference in the BitC24
and BitC32 icons except in Windows XP, and then ONLY if Alpha channel shadow
information is included, but win XP will automatically produce the shadow
from any color depth if it is not there}


function autoIconToFile(FileName: String; hIcon: Cardinal): Integer;
{the autoIconToFile function
No TBitCount parameter is in this function. This will attempt to Automatically
calculate a Bit Count, Color Depth, for the hIcon. (a Save Icon for Dumbys)
A Black and White Icon will be BitC1, a standard 16 color or less will be
a BitC4, if the Icon has less than 236 colors plus the 20 standard windows
colors it will be BitC8 with an optimized palette,
more than 236 colors will be BitC24 (Full Color)}


function Icon32To24File(FileName: String; hIcon: Cardinal): Integer;
{the Icon32To24File function is only useful in windows XP or newer
systems, that support 32 bit Icons. If you convert a 32 alpha blend
to 24 bit icon, with the hIconToFile function, it will not look correct.
This Icon32To24File function will try and convert the 32 bit alpha blended
icon to a 24 bit NON-blended icon and take out the areas that are
alpha-blended and appear as black areas if you convert with another function.
This is based on the Microsoft methods of 32 bit icon alpha-blend icon shadow
and may NOT work very well on 32 bit Icons that are NOT done by the
Microsoft methods}


function IconsToStream(Stream: TStream; aryMutiIcon: Array of TMutiIcon;
                        NumIcons: Byte = 1): Integer;
{IconsToStream is included for building a standard windows "Multi" Icon file
AND to use the VCL "Stream" type. A Standard windows Icon file should have
9 icons in it, a 32x32 and a 16x16 SIXTEEN color-BitC4, a 32x32 and
a 16x16 256 Color-BitC8, and a 32x32 and a 16x16 FullColor-BitC24,
and a 48x48 and a 32x32 and a 16x16 32BIT Full Color-BitC32 (for win XP)}

function TestMultiIcons(aryMutiIcon: Array of TMutiIcon; NumIcons: Byte): Cardinal;
{I took this TestMultiIcons out of the IconsToStream, you can save any combination
of hIcons in the IconsToStream fuction, correct or incorrect combinations,
but if you want to test and see if there are any duplicate size and Bit Count,
use this TestMultiIcons fuction, if the result is Zero, all are OK}

function Get48hIcon(FileName: String; icoIndex: Integer = 0): Integer;
{This is a utility function, to get a 48x48 pixel Icon Handle from an
Icon File. It uses the IExtractIcon COM Interface to get the 48x48
Icon Handle, so it can also get an Icon handle from a windows program
executable file (.EXE with an Icon bitmap in the file) or a windows
library file (.DLL with an Icon bitmap in the file). icoIndex must be
Zero for an Icon File (.ICO) }

implementation

uses Windows, ShlObj;

type
  PIconCurHeader = ^TIconCurHeader;
  TIconCurHeader = packed record
    wReserved: Word;
    wType: Word;
    wCount: Word;
  end; // file header for Icon and Cursor

  PIconSpec = ^TIconSpec;
  TIconSpec = packed record
    bWidth: Byte;
    bHeight: Byte;
    wColors: Word;
    wReserved1: Word;
    wReserved2: Word;
    iDIBSize: Integer;
    iDIBOffset: Integer;
  end; // Specifications for each individual Icon in file

  TMulti = Record
    Width: Integer;
    BitCount: TBitCount;
    end;


const
Zero = 0;
One = 1;
Two = 2;
Four = 4;
n16 = 16;
green = $FF00;
white = $FFFFFF;

AryWinColor: Array[Zero..9] of Cardinal =($F0FBFF,$A4A0A0,$808080,MaxByte,
    green,$00FFFF,$FF0000,$FF00FF,$FFFF00,white);

{AryPalColor has a "One Size Fits All" array of palette
 colors for the 8 bit bitmaps, similar to the 256 color
 Netscape web palette, but with wider range of colors}
AryPalColor: Array[Byte] of Cardinal =(Zero,$800000,$008000,$808000,
    $000080,$800080,$008080,$C0C0C0,$C0DCC0,$A6CAF0,$D4F0FF,$B1E2FF,$8ED4FF,
    $6BC6FF,$48B8FF,$00ACFF,$009FEE,$0092DC,$007AB9,$006296,$004A73,$003250,
    $D4E3FF,$B1C7FF,$8EABFF,$6B8FFF,$4A79FF,$0069FF,$0058EE,$0049DC,$003DB9,
    $003196,$002573,$001950,$D4D4FF,$B1B1FF,$8E8EFF,$6B6BFF,$4848FF,$0000EE,
    $0000DE,$0000CC,$0000B6,$000098,$00007A,$000058,$E3D4FF,$C7B1FF,$AB8EFF,
    $8F6BFF,$784AFF,$7600FF,$6F00EE,$6000D6,$3D00B9,$310096,$250073,$190050,
    $F0D4FF,$E2B1FF,$D48EFF,$C66BFF,$B848FF,$AC00FF,$9F00EE,$9200DC,$7A00B9,
    $620096,$4A0073,$320050,$FFD4FF,$FFB1FF,$FF8EFF,$FF6BFF,$FF48FF,$EE00EE,
    $DE00DE,$CC00CC,$B600B6,$980098,$790079,$490049,$FFD4F0,$FFB1E2,$FF8ED4,
    $FF6BC6,$FF48B8,$FF00AA,$EE009F,$DC0092,$B9007A,$960062,$73004A,$500032,
    $FFD4E3,$FFB1C7,$FF8EAB,$FF6B8F,$FF4873,$FF0066,$EE0059,$DC0049,$B9003D,
    $960031,$730025,$500019,$FFD4D4,$FFB1B1,$FF8E8E,$FF6B6B,$FF4848,$EF0000,
    $DE0000,$CC0000,$B80000,$9F0000,$7C0000,$580000,$FFE3D4,$FFC7B1,$FFAB8E,
    $FF8F6B,$FF7348,$FF6600,$EE5800,$DC4900,$B93D00,$963100,$732500,$501900,
    $FFF0D4,$FFE2B1,$FFD48E,$FFC66B,$FFBA48,$FFB100,$EEA300,$DC9200,$B97A00,
    $966200,$734A00,$503200,$FFFFD4,$FFFFB1,$FFFF8E,$FFFF6B,$FFFF48,$EEEE00,
    $DEDE00,$CCCC00,$B6B600,$989800,$747400,$484800,$F0FFD4,$E2FFB1,$D4FF8E,
    $C6FF6B,$B8FF48,$AAFF00,$9FED00,$92DC00,$7AB900,$629600,$4A7300,$325000,
    $E3FFD4,$C7FFB1,$ABFF8E,$8FFF6B,$73FF48,$66FF00,$58EE00,$49DC00,$3DB900,
    $319600,$257300,$194C00,$D4FFD4,$B1FFB1,$8EFF8E,$6BFF6B,$48FF48,$00EF00,
    $00DC00,$00C900,$00B000,$009400,$007600,$005200,$D4FFE3,$B1FFC7,$8EFFAB,
    $6BFF8F,$48FF73,$00FF66,$00EB5A,$00DC49,$00B93D,$009631,$007325,$005019,
    $D4FFF0,$B1FFE2,$8EFFD4,$6BFFC6,$48FFB8,$00FFAA,$00EAA0,$00DC92,$00B97A,
    $009662,$00734A,$005032,$D4FFFF,$B1FFFF,$8EFFFF,$6BFFFF,$48FFFF,$00EEEE,
    $00DEDE,$00CCCC,$00B6B6,$009898,$007979,$004A4A,$F2F2F2,$E6E6E6,$DADADA,
    $CECECE,$C2C2C2,$B6B6B6,$AAAAAA,$9E9E9E,$929292,$868686,$7A7A7A,$6E6E6E,
    $626262,$565656,$4A4A4A,$3E3E3E,$323232,$262626,$1A1A1A,$0E0E0E,$FFFBF0,
    $A0A0A4,$808080,$FF0000,green,$FFFF00,MaxByte,$FF00FF,$00FFFF, white);




function DoDib(hBmp: Cardinal; var pBits: Pointer; var DC1: Cardinal;
               var sSize: Cardinal): Cardinal;
var
BmpInfo1: TBitmapInfo;
tBmp1: tagBitmap;
inDC: Cardinal;
begin
{this function creates a 32 Bit Bitmap, with a Copy of the
Color Icon on it, for scanline testing of the pBits}
Result := Zero;
sSize := Zero;
if GetObject(hBmp, SizeOf(tBmp1), @tBmp1) = Zero then Exit;
ZeroMemory(@BmpInfo1, sizeOf(BmpInfo1));
sSize := (tBmp1.bmWidth * tBmp1.bmHeight)-One;
with BmpInfo1.bmiHeader do
  begin
  biSize := sizeOf(BmpInfo1.bmiHeader);
  biWidth := tBmp1.bmWidth;
  biHeight := tBmp1.bmHeight;
  biPlanes := One;
  biBitCount := 32;
  biCompression := BI_RGB;
  biSizeImage := (biWidth shl Two) * biHeight;
  end;

pBits := nil;
DC1 := CreateCompatibleDC(Zero);
Result := CreateDIBSection(DC1, BmpInfo1, DIB_RGB_COLORS, pBits, Zero, Zero);
if Result = Zero then
  begin
  DeleteDC(DC1);
  Exit;
  end;

SelectObject(DC1, Result);
inDC := CreateCompatibleDC(Zero);
SelectObject(inDC, hBmp);
if not BitBlt(DC1, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, inDC,
              Zero,Zero, SRCCOPY) then
  begin
  DeleteDC(DC1);
  DeleteObject(Result);
  Result := Zero;
  end;
DeleteDC(inDC);
end;


function SetInfo(var BmpInfoHead: TBitmapInfoHeader; Width, Height: Integer;
                 BitCnt: TBitCount): Cardinal;
begin
{this function fills the Bitmap headers (TBitmapInfoHeader) with
the correct information for that bitmap}
ZeroMemory(@BmpInfoHead, sizeof(BmpInfoHead)); 

with BmpInfoHead do
  begin
  biSize := SizeOf(TBitmapInfoHeader);
  biWidth := Width;
  biHeight := Height;
  biPlanes := One;
  biClrUsed := Zero;

  case BitCnt of
    BitC1:
      begin
      biBitCount := One;
      biClrUsed := Two;
      end;
    BitC4:
      begin
      biBitCount := Four;
      biClrUsed := n16;
      end;
    BitC8:
      begin
      biBitCount := 8;
      biClrUsed := 256;
      end;
    BitC32: biBitCount := 32;
    else biBitCount := 24;
    end; // case
    
  biClrImportant := biClrUsed;

  biSizeImage := ((biWidth * biBitCount) + 31) and not 31;
  biSizeImage := Integer((biSizeImage shr 3)) * Abs(biHeight);

  Result := SizeOf(TBitmapInfoHeader);
  if biBitCount < 9 then
  Result := Result + (biClrUsed shl Two);
  end; // with BmpInfo.bmiHeader
end;

function Do1BitDib(var hBmp: HBITMAP): Cardinal;
const
AryColor: Array[Zero..One] of Cardinal = (Zero, white);

var
BmpInfo1: TBitmapInfoHeader;
pBits: Pointer;
DC1, HeaderSize, hNewBmp, inDC, outDC: Cardinal;
tBmp1: tagBitmap;
PntBmpInfo: Pointer;

begin
{ since a black and white, One Bit Icon has only One Bitmap,
instead of Two, this function creates two One Bit DIBs and
copys the upper and lower halves to the new DIBs}
Result := Zero;
ZeroMemory(@BmpInfo1, sizeOf(BmpInfo1));
if GetObject(hBmp, SizeOf(tBmp1), @tBmp1) = Zero then Exit;
tBmp1.bmHeight := tBmp1.bmHeight shr One;
HeaderSize := SetInfo(BmpInfo1, tBmp1.bmWidth, tBmp1.bmHeight, BitC1);
if HeaderSize = Zero then Exit;
GetMem(PntBmpInfo, HeaderSize);
CopyMemory(PntBmpInfo, @BmpInfo1, SizeOf(BmpInfo1));
CopyMemory(@TBitmapInfo(PntBmpInfo^).bmiColors, @AryColor[Zero], 8);

pBits := nil;
DC1 := CreateCompatibleDC(Zero);
try
Result := CreateDIBSection(DC1, TBitmapInfo(PntBmpInfo^),
                DIB_RGB_COLORS, pBits, Zero, Zero);
if Result = Zero then Exit;

hNewBmp := CreateDIBSection(DC1, TBitmapInfo(PntBmpInfo^),
                DIB_RGB_COLORS, pBits, Zero, Zero);
if hNewBmp = Zero then
  begin
  DeleteObject(Result);
  Result := Zero;
  Exit;
  end;
SelectObject(DC1, Result);
inDC := CreateCompatibleDC(Zero);
outDC := CreateCompatibleDC(Zero);
try
  SelectObject(outDC, hNewBmp);
  SelectObject(inDC, hBmp);
  BitBlt(outDC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, inDC,
              Zero, Zero, SRCCOPY);
  BitBlt(DC1, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, inDC,
              Zero, tBmp1.bmHeight, SRCCOPY);

  finally
  DeleteDC(inDC);
  DeleteObject(hBmp);
  DeleteDC(outDC);
  end;
hBmp := hNewBmp;
finally
FreeMem(PntBmpInfo);
DeleteDC(DC1);
end;
end;



function GetInfoAndBits(hBitmap: Cardinal; var PntBmpInfo: Pointer;
      var PntBits: Pointer; BitCount: TBitCount; var hBmp8: Cardinal): Cardinal;
var
HeaderSize, cDC1, inDC: Cardinal;
BmpInfo1: TBitmapInfoHeader;
tBmp1: tagBitmap;
begin
{this fuction will set the TBitmapInfo with the info used to save a Bitmap file,
saved as an Icon in this case, and create the memory block PntBmpInfo and copy
the TBitmapInfo into it. If the Bit Count is BitC8 then a New Bitmap is Created,
with the color Palete from the AryEPalColor. If not then the Icon Bitmap
info is retrived with GetDIBits}
Result := Zero;
{if this function returns zero, it has FAILED to get needed parameters}
if GetObject(hBitmap, SizeOf(tBmp1), @tBmp1) = Zero then Exit;

HeaderSize := SetInfo(BmpInfo1, tBmp1.bmWidth, tBmp1.bmHeight, BitCount);
GetMem(PntBmpInfo, HeaderSize);
CopyMemory(PntBmpInfo, @BmpInfo1, SizeOf(BmpInfo1));

hBmp8 := Zero;
cDC1 := CreateCompatibleDC(Zero);

try
if BitCount = BitC8 then
  begin
  CopyMemory(@TBitmapInfo(PntBmpInfo^).bmiColors, @AryPalColor[Zero], 1024);
  hBmp8 := CreateDIBSection(cDC1, TBitmapInfo(PntBmpInfo^),
                         DIB_RGB_COLORS, PntBits, Zero, Zero);
  if hBmp8 = Zero then
    begin
    Exit;
    end else
    Result := HeaderSize;
  SelectObject(cDC1, hBmp8);
  inDC := CreateCompatibleDC(Zero);
  GdiFlush;
  SelectObject(inDC, hBitmap);
  if not BitBlt(cDC1, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight,
                inDC, Zero, Zero, SRCCOPY) then Result := Zero;
  DeleteDC(inDC);
  end else
  begin
  GetMem(PntBits, BmpInfo1.biSizeImage);
  if GetDIBits(cDC1, hBitmap, Zero, abs(BmpInfo1.biHeight), PntBits,
    TBitmapInfo(PntBmpInfo^), DIB_RGB_COLORS) <> Zero then Result := HeaderSize;
  end;

finally
DeleteDC(cDC1);
end;
end;

function WriteToFile(FileName: Pchar; PcInfo, PcBits, PmBits: Pointer;
                      CHeaderSize, monoImgSize: Cardinal): Integer;
var
hFile1, BytesWrite: Cardinal;
IconCurHd: TIconCurHeader;
IconSpec: TIconSpec;
Total: Cardinal;

  procedure BadWrite;
    begin
    Result := -7;
    CloseHandle(hFile1);
    DeleteFile(FileName);
    end;
begin
{this function writes the Icon Header, the Icon specifications,
color Bitmap specifications, and memory Blocks (Pointers) to an Icon file}
Result := -5;
if (PcInfo = nil) or (PcBits = nil) or (PmBits = nil) then Exit;
IconCurHd.wReserved := Zero;
IconCurHd.wType := One;
IconCurHd.wCount := One;

ZeroMemory(@IconSpec, SizeOf(IconSpec));
with IconSpec, PBitmapInfo(PcInfo).bmiHeader do
  begin
  bWidth := biWidth;
  bHeight := biHeight;
  wColors := biBitCount;

  iDIBOffset := SizeOf(IconCurHd) + SizeOf(IconSpec);
  iDIBSize := CHeaderSize + biSizeImage + monoImgSize;
  biHeight := bHeight shl One;
  end;
hFile1 := CreateFile(FileName,GENERIC_WRITE,FILE_SHARE_READ,nil,
       CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL or FILE_FLAG_SEQUENTIAL_SCAN,Zero);
if hFile1 = INVALID_HANDLE_VALUE then
  begin
  Result := -6;
  Exit;
  end;

try
  if not WriteFile(hFile1, IconCurHd, SizeOf(IconCurHd), BytesWrite, nil) then
    begin
    BadWrite;
    Exit;
    end;
  Total := BytesWrite;
  if not WriteFile(hFile1, IconSpec, SizeOf(IconSpec), BytesWrite, nil) then
    begin
    BadWrite;
    Exit;
    end;
  Total := Total+BytesWrite;
  if Not WriteFile(hFile1,PcInfo^, CHeaderSize, BytesWrite, nil) then
    begin
    BadWrite;
    Exit;
    end;
  Total := Total+BytesWrite;
  if not WriteFile(hFile1,PcBits^, PBitmapInfo(PcInfo).bmiHeader.biSizeImage,
                   BytesWrite, nil) then
    begin
    BadWrite;
    Exit;
    end;
  Total := Total+BytesWrite;
  if not WriteFile(hFile1,PmBits^, monoImgSize, BytesWrite, nil) then
    begin
    BadWrite;
    Exit;
    end;
  Total := Total+BytesWrite;
  Result := Total;
  finally
  CloseHandle(hFile1);
  end;
end;

function hIconToFile(FileName: String; hIcon: Cardinal;
                      iconBitCount: TBitCount): Integer;
var
cIHeaderSize, mIHeaderSize, hBmp8bit, zip: Cardinal;
IconInfo: TIconInfo;
PcBits, PcInfo, PmBits, PmInfo: Pointer;
begin
{this function will use an Icon Handle to get the information and Bytes needed
to make and Icon file, and then create and write that file as the SaveFileName}
Result := -One;
if Length(FileName) < Four then Exit;
if not GetIconInfo(hIcon, IconInfo) then
  begin
  Result := -2;
  Exit;
  end;

if IconInfo.hbmColor < 33 then
  begin
  if IconInfo.hbmMask > 32 then
  IconInfo.hbmColor := Do1BitDib(IconInfo.hbmMask);
  if IconInfo.hbmColor < 33 then
    begin
    Result := -3;
    Exit;
    end;
  end;
try
  PcInfo := nil;
  PcBits := nil;
  PmInfo := nil;
  PmBits := nil;

  hBmp8bit := Zero;
  cIHeaderSize := GetInfoAndBits(IconInfo.hbmColor, PcInfo, PcBits,
                                 iconBitCount, hBmp8bit);
  mIHeaderSize := GetInfoAndBits(IconInfo.hbmMask, PmInfo, PmBits, BitC1, zip);
  try
    if (cIHeaderSize = Zero) or (mIHeaderSize = Zero) then
      begin
      Result := -4;
      Exit;
      end;
    Result := WriteToFile(@FileName[One], PcInfo, PcBits, PmBits, cIHeaderSize,
                          PBitmapInfo(PmInfo).bmiHeader.biSizeImage);
    
    finally
    if hBmp8bit <> Zero then
      DeleteObject(hBmp8bit);
    if iconBitCount <> BitC8 then
    if PcBits <> nil then
      FreeMem(PcBits);
    if PmBits <> nil then
      FreeMem(PmBits);
    if PcInfo <> nil then
      FreeMem(PcInfo);
    if PmInfo <> nil then
      FreeMem(PmInfo);
    end;

  finally
  DeleteObject(IconInfo.hbmMask);
  DeleteObject(IconInfo.hbmColor);
  end;
end;

function TestMultiIcons(aryMutiIcon: Array of TMutiIcon; NumIcons: Byte): Cardinal;
var
IconInfo: TIconInfo;
tBmp1: tagBitmap;
AryMulti: Array[Zero..20] of TMulti;
MultiNum: Integer;
i, j: Cardinal;
InIt: Boolean;
begin
{this fuction will loop through all the hIcons in an Array and test and see if
the Icon handles are valid and if there are any duplicate Icon Sizes with the
same Color Bit Count, if there is a duplicate, then the Result's bit is set for
the index of that duplicate}
Result := 900000000;
if (NumIcons < One) or (NumIcons > 15) then Exit;
if High(aryMutiIcon) < NumIcons-One then
  begin
  Result := 900000001;
  Exit;
  end;

MultiNum := Zero;
Result := Zero;
AryMulti[Zero].Width := -24000;

for i := Zero to NumIcons - One do
  begin 
  if not GetIconInfo(aryMutiIcon[i].hIcon, IconInfo) then
    begin
    Result := 1000000000 + i;
    Exit;
    end;
  try
  if IconInfo.hbmColor < 33 then
    begin
    if IconInfo.hbmMask > 32 then
    IconInfo.hbmColor := Do1BitDib(IconInfo.hbmMask);
    if IconInfo.hbmColor < 33 then
      begin
      Result := 1000000100 + i;;
      Exit;
      end;
    end;

    if GetObject(IconInfo.hbmColor, SizeOf(tBmp1), @tBmp1) = Zero then
      begin
      Result := 1000000200 + i;
      Exit;
      end;
    finally
    DeleteObject(IconInfo.hbmColor);
    DeleteObject(IconInfo.hbmMask);
    end;

  if (tBmp1.bmWidth <> tBmp1.bmHeight) then
    begin
    Result := 2000000000+ i;
    Exit;
    end;
  case tBmp1.bmWidth of
    n16: ;
    32: ;
    48: ;
    else begin
      Result := 2000000000+ i;
      Exit;
      end;
    end;
  case tBmp1.bmHeight of
    n16: ;
    32: ;
    48: ;
    else begin
      Result := 2000000000+ i;
      Exit;
      end;
    end;

  InIt := False;
    for j := Zero to MultiNum do
    if(AryMulti[j].Width = tBmp1.bmWidth) and
      (AryMulti[j].BitCount = aryMutiIcon[i].BitCount) then
      begin
      InIt := True;
      Break;
      end;
    if InIt Then
      begin
      Result := Result or One shl i;
      Continue;
      end;
    Inc(MultiNum);
    AryMulti[MultiNum].Width := tBmp1.bmWidth;
    AryMulti[MultiNum].BitCount := aryMutiIcon[i].BitCount;
  end;
end;

function IconsToStream(Stream: TStream; aryMutiIcon: Array of TMutiIcon;
                       NumIcons: Byte = One): Integer;
var
i, cIHeaderSize, mIHeaderSize, hBmp8bit, EndPos, StartoF, zip: Cardinal;
IconInfo: TIconInfo;
PcBits, PcInfo, PmBits, PmInfo, Pstorage: Pointer;
IconCurHd: TIconCurHeader;
IconSpec: TIconSpec;
begin
{this function uses the VCL Stream type and can put more than
one hIcon in the file. A standard window Icon file is suppose to have an Icon
for each color depth in 32x32 and 16x16,
and win XP adds the 48x48 and the 32 bit}
Result := -One;
if (not Assigned(Stream)) then Exit;
if NumIcons = Zero then
  begin
  Result := -2;
  Exit;
  end;
if NumIcons > 15 then
  begin
  Result := -3;
  Exit;
  end;
if High(aryMutiIcon) < NumIcons-One then
  begin
  Result := -4;
  Exit;
  end;

IconCurHd.wReserved := Zero;
IconCurHd.wType := One;
IconCurHd.wCount := NumIcons;
EndPos := Zero;
Pstorage := nil;

try
for i := Zero to NumIcons - One do
  begin  // for loop
  if not GetIconInfo(aryMutiIcon[i].hIcon, IconInfo) then
    begin
    Result := -5;
    Exit;
    end;
  try
  if IconInfo.hbmColor < 33 then
    begin
    if IconInfo.hbmMask > 32 then
    IconInfo.hbmColor := Do1BitDib(IconInfo.hbmMask);
    if IconInfo.hbmColor < 33 then
      begin
      Result := -6;
      Exit;
      end;
    end;

    PcInfo := nil;
    PcBits := nil;
    PmInfo := nil;
    PmBits := nil;
    hBmp8bit := Zero;

    cIHeaderSize := GetInfoAndBits(IconInfo.hbmColor, PcInfo, PcBits,
                                    aryMutiIcon[i].BitCount, hBmp8bit);

    mIHeaderSize := GetInfoAndBits(IconInfo.hbmMask, PmInfo, PmBits, BitC1, zip);
    try
      if (cIHeaderSize = Zero) or (mIHeaderSize = Zero) then
        begin
        Result := -7;
        Exit;
        end;

      ZeroMemory(@IconSpec, SizeOf(IconSpec));
      with IconSpec, PBitmapInfo(PcInfo).bmiHeader do
        begin
        bWidth := biWidth;
        bHeight := biHeight;
        wColors := biBitCount;

        iDIBOffset := SizeOf(IconCurHd) + SizeOf(IconSpec);
        iDIBSize := cIHeaderSize + biSizeImage+ PBitmapInfo(PmInfo).bmiHeader.biSizeImage;
        biHeight := bHeight shl One;
        end;
      if i = Zero then
        begin
        EndPos := SizeOf(IconCurHd)+ (NumIcons * SizeOf(IconSpec))+ cIHeaderSize+
                 PBitmapInfo(PcInfo).bmiHeader.biSizeImage +
                 PBitmapInfo(PmInfo).bmiHeader.biSizeImage;
        ReAllocMem(Pstorage, EndPos);
        CopyMemory(PStorage, @IconCurHd, SizeOf(IconCurHd));
        StartoF := SizeOf(IconCurHd) + (NumIcons * SizeOf(IconSpec));
        end else
        begin
        StartoF := EndPos;
        EndPos := EndPos + cIHeaderSize + PBitmapInfo(PcInfo).bmiHeader.biSizeImage +
                  PBitmapInfo(PmInfo).bmiHeader.biSizeImage;
        ReAllocMem(Pstorage, EndPos);
        end;
      CopyMemory(Pointer(Cardinal(PStorage)+StartoF), PcInfo, cIHeaderSize);
      CopyMemory(Pointer(Cardinal(PStorage)+StartoF+cIHeaderSize), PcBits,
                  PBitmapInfo(PcInfo).bmiHeader.biSizeImage);
      CopyMemory(Pointer(Cardinal(PStorage)+StartoF+cIHeaderSize+
                  PBitmapInfo(PcInfo).bmiHeader.biSizeImage), PmBits,
                  PBitmapInfo(PmInfo).bmiHeader.biSizeImage);
      with IconSpec, PBitmapInfo(PcInfo).bmiHeader do
        begin
        bWidth := biWidth;
        bHeight := biHeight shr One;
        wColors := biPlanes * biBitCount;
        iDIBSize := cIHeaderSize + biSizeImage +
                   PBitmapInfo(PmInfo).bmiHeader.biSizeImage;
        iDIBOffset := StartoF;
        end;
      CopyMemory(Pointer(Cardinal(PStorage)+SizeOf(IconCurHd) +
                 ((i) * SizeOf(IconSpec))), @IconSpec, SizeOf(IconSpec));

      finally
      if hBmp8bit <> Zero then
      DeleteObject(hBmp8bit);
      if (PcBits <> nil) and
      (aryMutiIcon[i].BitCount <> BitC8) then
      FreeMem(PcBits);
      if PmBits <> nil then
      FreeMem(PmBits);
      if PcInfo <> nil then
      FreeMem(PcInfo);
      if PmInfo <> nil then
      FreeMem(PmInfo);
      end;
    finally
    DeleteObject(IconInfo.hbmColor);
    DeleteObject(IconInfo.hbmMask);
    end;
  end; // for loop
Result := Stream.Write(Pstorage^, EndPos);
if Cardinal(Result) <> EndPos then
Result := -Result;
finally
if Pstorage <> nil then
FreeMem(Pstorage);
end;
end;


{this autoIconToFile is for those who have little or no Idea
of Bit Counts and just want to have a single Icon in a file
that preserves it's visual appearence, beyond the four bit
Icon that Delphi TIcon does}

function autoIconToFile(FileName: String; hIcon: Cardinal): Integer;
var
cIHeaderSize, mIHeaderSize, h8bitBmp, zip: Cardinal;
IconInfo: TIconInfo;
PcBits, PcInfo, PmBits, PmInfo: Pointer;
autoBitCnt: TBitCount;
AryColor: Array[Zero..265] of Cardinal;

//  -  -  -  -  -  -   -  -  -  -  -  -  -   -   -  -   -  -  -  -

{this function determines if there are less than 236 colors beside the
  20 standard windows colors, and then will create an optimized pallete, with
  all of the icons colors, if there are more colors then the result is 238,
  which will result in a Full Color BitC24 Icon file}

function GetNumColors(hBitmap: Cardinal): TBitCount;
var
pBits, pScan: Pointer;
BmpDC, hBmp32, scanS, ReC: Cardinal;
i, j: Integer;
isThere: Boolean;

begin
Result := BitC4;
{this function will create a 32 bit Bitmap and copy the Color
Icon bitmap on it. Then test it's pixel colors for Black and White,
and then the standard 16, four bit, colors, and if there is a color
that is not in the standard 16, then it quits and Returns BitC8}
//AryStandColor
CopyMemory(@AryColor[Zero], @AryWinColor[Zero], SizeOf(AryWinColor));
for i := 0 to MaxByte do
  begin
  ReC := AryPalColor[i];
  AryColor[i+10] :=  (ReC shr n16) or (ReC and green) or ((ReC and MaxByte) shl n16);
  end;

hBmp32 := DoDib(hBitMap, pBits, BmpDC, scanS);
if (hBmp32 = Zero) or (pBits = nil) then Exit;
try
Result := BitC1;
ReC := Zero;
pScan := Pointer(Cardinal(pBits) - Four);
for i := Zero to scanS do
  begin
  Inc(Cardinal(pScan), Four);

  if (Cardinal(pScan^) = white) or
        (Cardinal(pScan^) = Zero) then Continue;
  if (Cardinal(pScan^) > white) then
    begin
    Result := BitC32;
    Break;
    end;
  if Result = BitC1 then
  Result := BitC4;
  if not ((Cardinal(pScan^) = MaxByte) or
         (Cardinal(pScan^) = green) or
         (Cardinal(pScan^) = $FF0000) or
         (Cardinal(pScan^) = $00FFFF) or
         (Cardinal(pScan^) = $FFFF00) or
         (Cardinal(pScan^) = $FF00FF) or
         (Cardinal(pScan^) = $808080) or
         (Cardinal(pScan^) = $C0C0C0) or
         (Cardinal(pScan^) = $000080) or
         (Cardinal(pScan^) = $008000) or
         (Cardinal(pScan^) = $800000) or
         (Cardinal(pScan^) = $008080) or
         (Cardinal(pScan^) = $808000) or
         (Cardinal(pScan^) = $800080))
         then
         begin
         if Result = BitC4 then
         Result := BitC8;
         isThere := False;
         for j := Zero to ReC+19 do
           begin
           if Cardinal(pScan^) = AryColor[j] then
             begin
             isThere := True;
             Break;
             end;
           end;
         if not isThere then
           begin
           if ReC < 236 then
           AryColor[ReC+20] := Cardinal(pScan^);
           Inc(ReC);
           end;
         if ReC = 238 then
           begin
           Result := BitC24;
           Break;
           end;
         end;
  end;

finally
DeleteDC(BmpDC);
DeleteObject(hBmp32);
end;
end;

//   -   -   -    -    -   -    -    -    -   -   -    -   -    -

  function autoInfoAndBits(hBitmap: Cardinal; var PntBmpInfo: Pointer;
                         var PntBits: Pointer): Cardinal;
  var
  HeaderSize, cDC1, inDC: Cardinal;
  DibSec: TDIBSection;
  BmpInfo1: TBitmapInfoHeader;
  i: Integer;
  begin
{this function will get the TBitmapInfo info and pBits for the Icon Bitmap
and do an 8 Bit Count bitmap for an 8 bit Icon, with an optimized pallete}
  Result := Zero;
  DibSec.dsbmih.biSize := Zero;
  if GetObject(hBitmap, SizeOf(DibSec), @DibSec) = Zero then
    begin
    MessageBox(Zero, 'GetObject did NOT work', 'ERROR GetObject', MB_ICONERROR);
    Exit;
    end;

  autoBitCnt := GetNumColors(hBitmap);
  HeaderSize := SetInfo(BmpInfo1, DibSec.dsBm.bmWidth, DibSec.dsBm.bmHeight, autoBitCnt);

  GetMem(PntBmpInfo, HeaderSize);
  CopyMemory(PntBmpInfo, @BmpInfo1, SizeOf(BmpInfo1));

  h8bitBmp := Zero;
  cDC1 := CreateCompatibleDC(Zero);
  try
    if autoBitCnt = BitC8 then
      begin
      for i := Zero to MaxByte do
        begin
        inDC := AryColor[i+10];
        TBitmapInfo(PntBmpInfo^).bmiColors[i] := tagRGBQUAD((inDC shr n16) or
                           (inDC and green) or ((inDC and MaxByte) shl n16));
        end;
      h8bitBmp := CreateDIBSection(cDC1, TBitmapInfo(PntBmpInfo^),
                               DIB_RGB_COLORS, PntBits, Zero, Zero);
      if h8bitBmp = Zero then Exit else
        Result := HeaderSize;
      SelectObject(cDC1, h8bitBmp);
      inDC := CreateCompatibleDC(Zero);
      GdiFlush;
      SelectObject(inDC, hBitmap);
      if not BitBlt(cDC1, Zero, Zero, DibSec.dsBm.bmWidth, DibSec.dsBm.bmHeight, inDC,
                    Zero, Zero, SRCCOPY) then Result := Zero;
      DeleteDC(inDC);
      end else // = BitC8
      begin
      GetMem(PntBits, BmpInfo1.biSizeImage);
      if GetDIBits(cDC1, hBitmap, Zero, abs(BmpInfo1.biHeight), PntBits,
        TBitmapInfo(PntBmpInfo^), DIB_RGB_COLORS) <> Zero then Result := HeaderSize;
      end;
    finally
    DeleteDC(cDC1);
    end;
  end;
//  -   -   -    -    -   -    -   -    -    -    -    -    -    -    -   -   -   -


begin  // autoIconToFile  / / / / / / / / / / / / / / / / / / /
Result := -One;
if Length(FileName) < Four then Exit;
if not GetIconInfo(hIcon, IconInfo) then
  begin
  Result := -2;
  Exit;
  end;

if IconInfo.hbmColor < 33 then
  begin
  if IconInfo.hbmMask > 32 then
  IconInfo.hbmColor := Do1BitDib(IconInfo.hbmMask);
  if IconInfo.hbmColor < 33 then
    begin
    Result := -3;
    Exit;
    end;
  end;

try
  PcInfo := nil;
  PcBits := nil;
  PmInfo := nil;
  PmBits := nil;
  h8bitBmp := Zero;
  cIHeaderSize := autoInfoAndBits(IconInfo.hbmColor, PcInfo, PcBits);
  mIHeaderSize := GetInfoAndBits(IconInfo.hbmMask, PmInfo, PmBits, BitC1, zip);
  try
    if (cIHeaderSize = Zero) or (mIHeaderSize = Zero) then
      begin
      Result := -4;
      Exit;
      end;
    Result := WriteToFile(@FileName[One], PcInfo, PcBits, PmBits, cIHeaderSize,
                           PBitmapInfo(PmInfo).bmiHeader.biSizeImage);

    finally
    if h8bitBmp <> Zero then
      DeleteObject(h8bitBmp);
    if (PcBits <> nil) and (autoBitCnt <> BitC8) then
      FreeMem(PcBits);
    if PmBits <> nil then
      FreeMem(PmBits);
    if PcInfo <> nil then
      FreeMem(PcInfo);
    if PmInfo <> nil then
      FreeMem(PmInfo);
    end;

  finally
  DeleteObject(IconInfo.hbmMask);
  DeleteObject(IconInfo.hbmColor);
  end;
end;

{the Icon32To24File fuction makes a copy of the icon's color bitmap
and scans the alpha channel for values that would be blended in 32 bit
and converts these to the Mask Bitmap additions, to make the mask
bitmap mask area smaller, reducing the Black areas around the 24
bit icon.}
function Icon32To24File(FileName: String; hIcon: Cardinal): Integer;
const
AryColor: Array[Zero..One] of Cardinal = (Zero, white);
var
IconInfo: TIconInfo;
BmpInfo1: TBitmapInfo;
tBmp1: tagBitmap;
pBits, pScan, pMBits, pCBits, PntBmpInfo: Pointer;
DC1, iClDC, mDC, n1DC, n2DC, aBmp, sSize,
nColBmp, nMonBmp, monoImgSize, B1: Cardinal;
i: Integer;
begin
Result := -One;
if Length(FileName) < Four then Exit;
if not GetIconInfo(hIcon, IconInfo) then
  begin
  Result := -2;
  Exit;
  end;
try
  if IconInfo.hbmColor < 33 then
    begin
    Result := -3;
    Exit;
    end;

  if GetObject(IconInfo.hbmColor, SizeOf(tBmp1), @tBmp1) = Zero then
    begin
    Result := -4;
    Exit;
    end;
  if tBmp1.bmBitsPixel <> 32 then
    begin
    Result := -8;
    Exit;
    end;
  ZeroMemory(@BmpInfo1, sizeOf(BmpInfo1));
  sSize := (tBmp1.bmWidth * tBmp1.bmHeight)-One;
  with BmpInfo1.bmiHeader do
    begin
    biSize := sizeOf(BmpInfo1.bmiHeader);
    biWidth := tBmp1.bmWidth;
    biHeight := tBmp1.bmHeight;
    biPlanes := One;
    biBitCount := 32;
    biCompression := BI_RGB;
    biSizeImage := (biWidth shl Two) * biHeight;
    end;

  pBits := nil;
  DC1 := CreateCompatibleDC(Zero);
  aBmp := CreateDIBSection(DC1, BmpInfo1, DIB_RGB_COLORS, pBits, Zero, Zero);
  try
    SelectObject(DC1, aBmp);
    iClDC := CreateCompatibleDC(Zero);
    SelectObject(iClDC, IconInfo.hbmColor);
    BitBlt(DC1, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, iClDC,
              Zero,Zero, SRCCOPY);

     pScan := Pointer(Cardinal(pBits) - Four);
    for i := Zero to Ssize do
      begin
      Inc(Cardinal(pScan), Four);
      B1 := Cardinal(pScan^) shr 24;
      if (Cardinal(pScan^) > white) then
        begin
        if B1 < 116 then
        Cardinal(pScan^) := white else
        Cardinal(pScan^) := Zero;
        end else  Cardinal(pScan^) := Zero;
      end;
    mDC := CreateCompatibleDC(Zero);
    SelectObject(mDC, IconInfo.hbmMask);
    BitBlt(mDC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, DC1,
              Zero,Zero, SRCPAINT);
    finally
    DeleteDC(DC1);
    DeleteObject(aBmp);
    end;
  with BmpInfo1.bmiHeader do
    begin
    biBitCount := One;
    biClrUsed := Two;
    biClrImportant := Two;
    biSizeImage := ((biWidth * biBitCount) + 31) and not 31;
    biSizeImage := Integer((biSizeImage shr 3)) * Abs(biHeight);
    monoImgSize := biSizeImage;
    end;
  GetMem(PntBmpInfo, SizeOf(TBitmapInfoHeader) + 8);
  try
  CopyMemory(PntBmpInfo, @BmpInfo1.bmiHeader, SizeOf(BmpInfo1.bmiHeader));
  CopyMemory(@TBitmapInfo(PntBmpInfo^).bmiColors, @AryColor[Zero], 8);

  pMbits := nil;
  n1DC := CreateCompatibleDC(Zero);
  nMonBmp := CreateDIBSection(n1DC, TBitmapInfo(PntBmpInfo^),
                              DIB_RGB_COLORS, pMbits, Zero, Zero);
  finally
  FreeMem(PntBmpInfo);
  end;

  if nMonBmp = Zero then
    begin
    Result := -9;
    DeleteDC(iClDC);
    DeleteDC(n1DC);
    DeleteDC(mDC);
    Exit;
    end;
  SelectObject(n1DC, nMonBmp);
  BitBlt(n1DC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, mDC,
              Zero,Zero, SRCCOPY);
  DeleteDC(n1DC);
  with BmpInfo1.bmiHeader do
    begin
    biBitCount := 24;
    biClrUsed := Zero;
    biClrImportant := Zero;
    biSizeImage := ((biWidth * biBitCount) + 31) and not 31;
    biSizeImage := Integer((biSizeImage shr 3)) * Abs(biHeight);
    end;
  pCbits := nil;
  n2DC := CreateCompatibleDC(Zero);
  nColBmp := CreateDIBSection(n2DC, BmpInfo1, DIB_RGB_COLORS, pCbits, Zero, Zero);
  if nColBmp = Zero then
    begin
    Result := -9;
    DeleteDC(iClDC);
    DeleteDC(n2DC);
    DeleteObject(nMonBmp);
    Exit;
    end;
  SelectObject(n2DC, nColBmp);
  BitBlt(n2DC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, iClDC,
              Zero,Zero, SRCCOPY);
  BitBlt(mDC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, n2DC,
              Zero,Zero, DSTINVERT);
  BitBlt(n2DC, Zero, Zero, tBmp1.bmWidth, tBmp1.bmHeight, mDC,
              Zero,Zero, SRCAND);
  DeleteDC(mDC);
  DeleteDC(iClDC);
  DeleteDC(n2DC);
  finally
  DeleteObject(IconInfo.hbmMask);
  DeleteObject(IconInfo.hbmColor);
  end;
Result := WriteToFile(@FileName[One], @BmpInfo1, pCBits, pMBits,
                     SizeOf(TBitmapInfoHeader), monoImgSize);

DeleteObject(nMonBmp);
DeleteObject(nColBmp);
end;


function Get48hIcon(FileName: String; icoIndex: Integer = Zero): Integer;
var
DeskTopISF: IShellFolder;
IExIcon: IExtractIcon;
PathPidl: PItemIDList;
hIconL, hIconS: HIcon;

begin
{this function uses the IExtractIcon to get a 48x48 icon Handle from a file
that Has the Icon Bitmaps in it, like an Icon File (.ICO), an executable
(.EXE) and a library (.DLL) }
Result := Zero;
if SHGetDesktopFolder(DeskTopISF) <> NOERROR then
  Exit;

PathPidl := nil;
if DeskTopISF.GetUIObjectOf(Zero, One, PathPidl, IID_IExtractIconA,
                            nil, IExIcon) <> NOERROR then
  Exit;

if (IExIcon.Extract(PChar(FileName), icoIndex, hIconL, hIconS,
                   48 or (n16 shl n16)) = NOERROR) and (hIconL <> Zero) then
  Result := hIconL;
DestroyIcon(hIconS);
end;

end.
