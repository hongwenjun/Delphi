unit ImagePSD;

interface

uses
  System.SysUtils, Winapi.Windows, System.Classes;

type
  TPSDFileHeader = packed record
    Signature: array[0..3] of Byte;
    Version: Word;
    Reserved: Longword;
    Reserved1: Word;
    ChannelsCount: Word;
    Height: Longword;
    Width: Longword;
    Depth: Word;
    ColorMode: Word;
  end;

type
  TPSDColorMode = packed record
    Len: LongWord;
    content: array of Byte;
  end;

  TImagePSD = class
  private
    FFileHeader: TPSDFileHeader;
  public
    constructor Create; overload;
    constructor Create(AFileName: string); overload;
  end;

implementation

constructor TImagePSD.Create;
begin

end;

constructor TImagePSD.Create(AFileName: string);
var
  _PSD: TFileStream;
  len: LongWord;
begin
  if not FileExists(AFileName) then
    Exit;
  _PSD := TFileStream.Create(AFileName, fmOpenRead);
  _PSD.ReadBuffer(FFileHeader, SizeOf(TPSDFileHeader));
  _PSD.ReadBuffer(len, 4);
  _PSD.Seek(len, TSeekOrigin.soCurrent);
end;

end.

