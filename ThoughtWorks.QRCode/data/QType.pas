unit QType;

interface

uses
  ThoughtWorks.QRCode.Geom.Point;

type
  TBooleans = TArray<Boolean>;

  T2DBoolean = TArray<TBooleans>;

  TTBytes = TArray<Byte>;

  T2DByte = TArray<TTBytes>;

  TIntegers = TArray<Integer>;

  T2DInteger = TArray<TIntegers>;

  TShortInts = TArray<ShortInt>;

  T2DShorInt = TArray<TShortInts>;

  TTStrings = TArray<string>;

  T2DPoint = array of array of TPoint;

function URShift(number: Integer; bits: Integer): Integer; overload;

implementation

function URShift(number: Integer; bits: Integer): Integer;
begin
  if number >= 0 then
  begin
    Result := number shr bits;
  end
  else
  begin
    Result := (number shr bits) + (2 shl not bits);
  end;
end;

end.

