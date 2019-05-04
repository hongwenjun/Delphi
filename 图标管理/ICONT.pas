unit ICONT;

interface

uses
  Vcl.Graphics, Winapi.Windows, System.Classes;

type
  TIconDir = record
    idReserved: Word;
    idType: Word;
    idCount: Word;
  end;

  TIconDirEntry = record
    bWidth: Byte;
    bHeight: Byte;
    bColorCount: Byte;
    bReserved: Byte;
    wPlanes: Word;
    wBitCount: Word;
    dwBytesInRes: DWORD;
    dwImageOffset: DWORD;
  end;

type
  TTNIcon = class(TIcon)
  public
    Count: Integer;
  public
    procedure AddIconImage(source: TGraphic);
    procedure LoadFromStream(Stream: TStream); override;
  end;

implementation

procedure TTNIcon.LoadFromStream(Stream: TStream);
var
  Image: TMemoryStream;
  IconDir: TIconDir;
  IconDirEntry: TIconDirEntry;
  I: Integer;
begin
  Image := TMemoryStream.Create;
  try
    Image.SetSize(Stream.Size - Stream.Position);
    Stream.ReadBuffer(Image.Memory^, Image.Size);
    Image.ReadBuffer(IconDir, SizeOf(IconDir));
    if not (IconDir.idType in [RC3_STOCKICON, RC3_ICON]) then
      InvalidIcon;
    for I := 0 to IconDir.idCount - 1 do
    begin
      Image.ReadBuffer(IconDirEntry^, SizeOf(IconDirEntry));
    end;
    //NewImage(0, Image);
  except
    Image.Free;
    raise;
  end;
  Changed(Self);
end;

end.

