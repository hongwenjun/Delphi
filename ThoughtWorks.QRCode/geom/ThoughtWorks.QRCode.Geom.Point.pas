unit ThoughtWorks.QRCode.Geom.Point;

interface

uses
  System.Classes, System.SysUtils, System.Math;

type
  TPoint = class
  public
    const
      RIGHT = 1;
      BOTTOM = 2;
      LEFT = 4;
      TOP = 8;
  public
    X, Y: Integer;
    constructor Create; overload;
    constructor Create(x, y: Integer); overload;
    procedure translate(dx, dy: Integer);
    procedure set_Renamed(x, y: Integer);
    function ToString: string; override;
    function getCenter(p1, p2: TPoint): TPoint;
    function equals(compare: Tpoint): Boolean;
    function distanceOf(other: Tpoint): Integer;
  end;

implementation

constructor TPoint.Create;
begin
  Self.X := 0;
  Self.Y := 0;
end;

constructor TPoint.Create(x: Integer; y: Integer);
begin
  Self.X := x;
  Self.Y := y;
end;

procedure TPoint.translate(dx: Integer; dy: Integer);
begin
  Inc(Self.X, dx);
  Inc(Self.Y, dy);
end;

procedure TPoint.set_Renamed(x: Integer; y: Integer);
begin
  Self.X := x;
  Self.Y := y;
end;

function TPoint.ToString;
begin
  Result := '(' + IntToStr(x) + ',' + IntToStr(y) + ')';
end;

function TPoint.getCenter(p1: TPoint; p2: TPoint): TPoint;
begin
  Result := TPoint.Create((p1.X + p2.X) div 2, (p1.Y + p2.Y) div 2);
end;

function TPoint.equals(compare: TPoint): Boolean;
begin
  Result := ((x = compare.X) and (y = compare.Y));
end;

function TPoint.distanceOf(other: TPoint): Integer;
var
  x2, y2: Integer;
begin
  x2 := other.X;
  y2 := other.Y;
  Result := Round(Sqrt((x - x2) * (x - x2) + (y - y2) * (y - y2)));
end;

end.

