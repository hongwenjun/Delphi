unit GetData;

interface

uses
  BookInfo, byteinfo, blockinfoModel, System.Threading, Ebk3_Data, Util;

type
  TGetData = class
  private
    ebk3_Data: TEbk3_data;
  public
    constructor Create;
    function decodeingtext(buff: TArray<Byte>; key: Integer): TArray<Byte>;
    function encodeingtext(buff: TArray<Byte>; key: Integer): TArray<Byte>;
  end;

implementation

constructor TGetData.Create;
begin
  Self.ebk3_Data := TEbk3_Data.Create;
end;

function TGetData.decodeingtext(buff: TArray<Byte>; key: Integer): TArray<Byte>;
var
  len: Integer;
  data, buffer2: TArray<Byte>;
begin
  len := $10;
  if Length(buff) < $10 then
  begin
    len := Length(buff);
  end;
  SetLength(data, len);
  TUtil.ArrayCopy(buff[0], 0, data[0], 0, len);
  buffer2 := self.ebk3_data.pbk_sys_data_decode(data, key);
  TUtil.ArrayCopy(buffer2[0], 0, buff[0], 0, Length(buffer2));
  SetLength(Result, Length(buff));
  TUtil.ArrayCopy(buff[0], 0, Result[0], 0, Length(Result));
end;

function TGetData.encodeingtext(buff: TArray<Byte>; key: Integer): TArray<Byte>;
var
  len: Integer;
  data, buffer2: TArray<Byte>;
begin
  len := $10;
  if Length(buff) < $10 then
  begin
    len := Length(buff);
  end;
  SetLength(data, len);
  TUtil.ArrayCopy(buff[0], 0, data[0], 0, len);
  buffer2 := self.ebk3_data.pbk_sys_data_encode(data, key);
  TUtil.ArrayCopy(buffer2[0], 0, buff[0], 0, Length(buffer2));
  Result := buff;
end;

end.

