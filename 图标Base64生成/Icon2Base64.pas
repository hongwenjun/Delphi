unit Icon2Base64;

interface

uses
  Winapi.Windows, System.Classes, System.SysUtils, Soap.EncdDecd, Vcl.Graphics,
  System.IOUtils,  ArrayEx;

const
  WCMN: string = 'WCmnUI_UIItemBmp';

type
  TIcon2Base64 = class
    class function GetBase64(fileName: string; width: Integer = 16; height: Integer = 16): string;
 end;

type
  TIconDirEntry = packed record
    bWidth: Byte;
    bHeight: Byte;
    bColorCount: Byte;
    bReserved: Byte;
    wPlanes: Word;
    wBitCount: Word;
    dwBytesInRes: DWord;
    dwImageOffset: DWord;
  end;

  TIcondir = packed record
    idReserved: Word;
    idType: Word;
    idCount: Word;
    IdEntries: array[1..20] of TIconDirEntry;
  end;

implementation

class function TIcon2Base64.GetBase64(fileName: string; width, height: Integer): string;
var
  fs: TFileStream;
  b: TBytes;
  bw: TBinaryWriter;
  tp: Integer;
  ss: TStringStream;
  bmp1: TBitmap;
  img: TWICImage;
begin
  img := TWICImage.Create;
  img.LoadFromFile(fileName);

  bmp1 := TBitmap.Create;
  bmp1.PixelFormat := pf8bit;
  bmp1.Width := width;
  bmp1.Height := height;
  bmp1.Canvas.Brush.Color := TColor($c3c3c3);
  bmp1.Canvas.FillRect(bmp1.Canvas.ClipRect);

  SetStretchBltMode(bmp1.Canvas.Handle, HALFTONE);
  bmp1.Canvas.StretchDraw(Rect(0, 0, bmp1.Width, bmp1.Height), img);

  bmp1.SaveToFile(Format('%s_%dx%d.bmp', [fileName, width, height]));
  fs := TFileStream.Create(Format('%s_%dx%d.bmp', [fileName, width, height]), fmOpenRead);
  SetLength(b, fs.Size);
  fs.ReadBuffer(b, fs.Size);
  fs.Free;
  bw := TBinaryWriter.Create(TMemoryStream.Create);
  bw.Write($FF);
  bw.Write($FF);
  bw.Write(Integer($00100001));
  bw.Write(BytesOf(WCMN));
  bw.Write(Integer(0));
  bw.Write(0);
  bw.Write(0);
  tp := bw.BaseStream.Position;
  bw.Write(b);
  bw.Seek(tp, TSeekOrigin.soBeginning);
  bw.Write(SmallInt(0));
  bw.Write($28);
  bw.Write(0);
  bw.Write(SmallInt(0));
  bw.Write(0);
  bw.Write(4);
  bw.Write(SmallInt(0));
  bw.Write(Integer(width * height));
  //bw.Seek(20, TSeekOrigin.soCurrent);
  bw.BaseStream.Position := bw.BaseStream.Size;
  bw.Write(Integer($00F0F0F0));
  bw.Write(Integer($00A0A0A0));
  bw.Write(Integer($00F0F0F0));
  bw.Write(Integer(0));
  ss := TStringStream.Create;
  bw.BaseStream.Seek(0, TSeekOrigin.soBeginning);
  EncodeStream(bw.BaseStream, ss);
  bw.Free;
  Result := Format('%s', [ss.DataString]);
  ss.Free;
  bmp1 := nil;
  img := nil;
  DeleteFile(Format('%s_%dx%d.bmp', [fileName, width, height]));
end;

end.

