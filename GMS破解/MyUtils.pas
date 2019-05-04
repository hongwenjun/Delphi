unit MyUtils;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type
  HexUtility = class
  public
    class function Replace(var all: TBytes; s, t: TBytes): Integer;
  end;

implementation

class function HexUtility.Replace(var all: TBytes; s, t: TBytes): Integer;
var
  replace_count, I, J, K, L: Integer;
  temp: TList;
  catch_s: WordBool;
begin
  temp := TList.Create;
  if Length(s) > Length(all) then
  begin
    Result := 0;
    Exit;
  end;
  replace_count := 0;
  I := 0;
  while I < (Length(all) - Length(s)) + 1 do
  begin
    catch_s := True;
    if all[I] = $43 then
    begin
      I := I;
    end;
    for J := 0 to Length(s) - 1 do
    begin
      if all[i + j] <> s[j] then
      begin
        catch_s := False;
        break;
      end;
    end;
    if catch_s then
    begin
      Inc(replace_count);
      for K := 0 to Length(t) - 1 do
      begin
        temp.Add(PByte(t[K]));
      end;
      i := i + Length(s);
      Continue;
    end
    else
    begin
      temp.Add(PByte(all[I]));
    end;
    if I = Length(all) - Length(s) then
    begin
      if not catch_s then
      begin
        temp.Add(PByte(all[Length(all) - 2]));
        temp.Add(PByte(all[Length(all) - 1]));
      end;
    end;
    Inc(I);
  end;
  for I := 0 to (Length(all) - Length(s)) + 1 do
  begin

  end;
  for L := 0 to temp.Count - 1 do
  begin
    all[L] := Byte(temp.Items[L]);
  end;
end;

end.

