unit ThoughtWorks.QRCode.Codec.util.QRCodeUtility;

interface

uses
  QType, System.SysUtils;

type
  TQRCodeUtility = class
  public
    class function AsciiStringToByteArray(str: string): TTBytes; static;
    class function FromASCIIByteArray(characters: TTBytes): string; static;
    class function FromUnicodeByteArray(characters: TTBytes): string; static;
    class function IsUnicode(byteData: TTBytes): boolean; overload; static;
    class function IsUniCode(value: string): boolean; overload; static;
    //class function sqrt(val: Integer): Integer; static;
    class function UnicodeStringToByteArray(str: string): TTBytes; static;
    class procedure ArrayCopy(const Source; sourceIndex: NativeInt; var Dest; destIndex: NativeInt; Count: NativeInt);
  end;

implementation

class function TQRCodeUtility.AsciiStringToByteArray(str: string): TTBytes;
begin
  Result := TEncoding.ASCII.GetBytes(str);
end;

class function TQRCodeUtility.UnicodeStringToByteArray(str: string): TTBytes;
begin
  Result := TEncoding.UTF8.GetBytes(str);
end;

class function TQRCodeUtility.FromASCIIByteArray(characters: TTBytes): string;
begin
  Result := TEncoding.ASCII.GetString(characters);
end;

class function TQRCodeUtility.FromUnicodeByteArray(characters: TTBytes): string;
begin
  Result := TEncoding.UTF8.GetString(characters);
end;

class function TQRCodeUtility.IsUnicode(byteData: TTBytes): boolean;
var
  ascii, unicode: TTBytes;
  value1, value2: string;
begin
  value1 := TQRCodeUtility.FromASCIIByteArray(byteData);
  value2 := TQRCodeUtility.FromUnicodeByteArray(byteData);
  ascii := TQRCodeUtility.AsciiStringToByteArray(value1);
  unicode := TQRCodeUtility.UnicodeStringToByteArray(value2);
  if ascii[0] <> unicode[0] then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

class function TQRCodeUtility.IsUniCode(value: string): boolean;
var
  ascii, unicode: TTBytes;
  value1, value2: string;
begin
  ascii := TQRCodeUtility.AsciiStringToByteArray(value);
  unicode := TQRCodeUtility.UnicodeStringToByteArray(value);
  value1 := TQRCodeUtility.FromASCIIByteArray(ascii);
  value2 := TQRCodeUtility.FromUnicodeByteArray(unicode);
  if value1 <> value2 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

class procedure TQRCodeUtility.ArrayCopy(const Source; sourceIndex: NativeInt; var Dest; destIndex: NativeInt; Count: NativeInt);
var
  S, D: PByte;
  I, J: Integer;
begin
  S := PByte(@Source);
  D := PByte(@Dest);
  if S = D then
    Exit;
  J := 0;
  for I := sourceIndex to Count do
  begin
    D[destIndex + J] := S[I];
    Inc(J);
  end;
end;

end.

