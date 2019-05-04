unit GridSampler;

interface

uses
  Bitmatrix, PerspectiveTransform, Math, DefaultGridSampler;

type
  TGridSampler = class
  private
    class var
      FGridSampler: TGridSampler;
  public
    class procedure SetGridSampler(newGridSampler: TGridSampler); static;
    class function GetInstance: TDefaultGridSampler; static;
  protected
    function sampleGrid(image: TBitMatrix; dimensionX: Integer; dimensionY: Integer; transform: TPerspectiveTransform): TBitMatrix; overload; virtual; abstract;
    function sampleGrid(image: TBitMatrix; dimensionX: Integer; dimensionY: Integer; p1ToX: Single; p1ToY: Single; p2ToX: Single; p2ToY: Single; p3ToX: Single; p3ToY: Single; p4ToX: Single; p4ToY: Single; p1FromX: Single; p1FromY: Single; p2FromX: Single; p2FromY: Single; p3FromX: Single; p3FromY: Single; p4FromX: Single; p4FromY: Single): TBitMatrix; overload; virtual; abstract;
    class function checkAndNudgePoints(image: TBitMatrix; points: TArray<Single>): boolean; static;
  end;

implementation

class procedure TGridSampler.SetGridSampler(newGridSampler: TGridSampler);
begin
  TGridSampler.FGridSampler := newGridSampler;
end;

class function TGridSampler.GetInstance: TGridSampler;
begin
  Result := TGridSampler.FGridSampler;
end;

class function TGridSampler.checkAndNudgePoints(image: TBitMatrix; points: TArray<Single>): boolean;
var
  offset, x, y, width, height: Integer;
  nudged: boolean;
begin
  width := image.width;
  height := image.height;
  nudged := true;
  offset := 0;
  while ((offset < Length(points)) and nudged) do
  begin
    x := Floor(points[offset]);
    y := Floor(points[(offset + 1)]);
    if ((((x < -1) or (x > width)) or (y < -1)) or (y > height)) then
    begin
      Result := false;
      exit
    end;
    nudged := false;
    if (x = -1) then
    begin
      points[offset] := 0;
      nudged := true
    end
    else if (x = width) then
    begin
      points[offset] := (width - 1);
      nudged := true
    end;
    if (y = -1) then
    begin
      points[(offset + 1)] := 0;
      nudged := true
    end
    else if (y = height) then
    begin
      points[(offset + 1)] := (height - 1);
      nudged := true
    end;
    inc(offset, 2)
  end;

  nudged := true;
  offset := (Length(points) - 2);
  while ((offset >= 0) and nudged) do
  begin
    x := Floor(points[offset]);
    y := Floor(points[(offset + 1)]);
    if ((((x < -1) or (x > width)) or (y < -1)) or (y > height)) then
    begin
      Result := false;
      exit
    end;
    nudged := false;
    if (x = -1) then
    begin
      points[offset] := 0;
      nudged := true
    end
    else if (x = width) then
    begin
      points[offset] := (width - 1);
      nudged := true
    end;
    if (y = -1) then
    begin
      points[(offset + 1)] := 0;
      nudged := true
    end
    else if (y = height) then
    begin
      points[(offset + 1)] := (height - 1);
      nudged := true
    end;
    dec(offset, 2)
  end;
  Result := true;
end;

end.

