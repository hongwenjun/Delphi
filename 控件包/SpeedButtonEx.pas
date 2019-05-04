unit SpeedButtonEx;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Buttons, Vcl.Graphics;

type
  TSpeedButtonEx = class(TSpeedButton)
  public
    constructor Create(AOwner: TComponent); override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tisn', [TSpeedButtonEx]);
end;

constructor TSpeedButtonEx.Create(AOwner: TComponent);
begin
  inherited;
  Width := 28;
  Height := 28;
  Flat := True;
  Self.ShowHint := True;
end;

end.

