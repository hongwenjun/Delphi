program Í¼±êBase64Éú³É;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  GdiPlus in 'GdiPlus\Lib\GdiPlus.pas',
  GdiPlusHelpers in 'GdiPlus\Lib\GdiPlusHelpers.pas',
  Icon2Base64 in 'Icon2Base64.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
