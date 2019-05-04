unit Util;

interface

type
  TUtil = class
    class procedure ArrayCopy(const Source; sourceIndex: NativeInt; var Dest; destIndex: NativeInt; Count: NativeInt);
  end;

implementation

class procedure TUtil.ArrayCopy(const Source; sourceIndex: NativeInt; var Dest; destIndex: NativeInt; Count: NativeInt);
var
  S, D: PByte;
  I, J: Integer;
begin
  S := PByte(@Source);
  D := PByte(@Dest);
  if S = D then
    Exit;
  J := 0;
  for I := sourceIndex to (Count + sourceIndex) do
  begin
    D[destIndex + J] := S[I];
    Inc(J);
  end;
end;

end.

