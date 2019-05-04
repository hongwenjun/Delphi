unit ThoughtWorks.QRCode.Codec.Util.ContentConverter;

interface

uses
  System.SysUtils;

type
  TContentConverter = class
  public
    class function convert(targetString: string): string;
  private
    class function convertDocomoBookmark(targetString: string): string;
    class function convertDocomoAddressBook(targetString: string): string;
    class function convertDocomoMailto(targetString: string): string;
    class function replaceString(s, s1, s2: string): string;
    class function removeString(s, s1: string): string;
  end;

implementation

class function TContentConverter.convert(targetString: string): string;
begin
  if targetString = '' then
  begin
    Result := targetString;
    Exit;
  end;
  if targetString.IndexOf('MEBKM:') > -1 then
  begin
    targetString := convertDocomoBookmark(targetString);
  end;
  if targetString.IndexOf('MECARD:') > -1 then
  begin
    targetString := convertDocomoAddressBook(targetString);
  end;
  if targetString.IndexOf('MATMSG:') > -1 then
  begin
    targetString := convertDocomoMailto(targetString);
  end;
  if targetString.IndexOf('http\://') > -1 then
  begin
    targetString := replaceString(targetString, 'http\://', #13'http://');
  end;
  Result := targetString;
end;

class function TContentConverter.convertDocomoBookmark(targetString: string): string;
begin
  targetString := removeString(targetString, 'MEBKM:');
  targetString := removeString(targetString, 'TITLE:');
  targetString := removeString(targetString, ';');
  targetString := removeString(targetString, 'URL');
  Result := targetString;
end;

class function TContentConverter.convertDocomoAddressBook(targetString: string): string;
begin
  targetString := removeString(targetString, 'MECARD:');
  targetString := removeString(targetString, ';');
  targetString := replaceString(targetString, 'N:', 'NAME1:');
  targetString := replaceString(targetString, 'SOUND:', #13'NAME1:');
  targetString := replaceString(targetString, 'TEL:', #13'NAME1:');
  targetString := replaceString(targetString, 'EMAIL:', #13'NAME1:');
  targetString := targetString + #13;
  Result := targetString;
end;

class function TContentConverter.convertDocomoMailto(targetString: string): string;
begin
  targetString := removeString(targetString, 'MATMSG:');
  targetString := removeString(targetString, ';');
  targetString := replaceString(targetString, 'TO:', 'MAILTO:');
  targetString := replaceString(targetString, 'SUB:', #13'SUBJECT:');
  targetString := replaceString(targetString, 'BODY:', #13'BODY:');
  targetString := targetString + #13;
  Result := targetString;
end;

class function TContentConverter.replaceString(s: string; s1: string; s2: string): string;
var
  I: Integer;
begin
  Result := s.Replace(s1, s2);
end;

class function TContentConverter.removeString(s: string; s1: string): string;
begin
  Result := replaceString(s, s1, '');
end;

end.

