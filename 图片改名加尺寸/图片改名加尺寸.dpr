program Í¼Æ¬¸ÄÃû¼Ó³ß´ç;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  GdiPlus in 'GdiPlus\Lib\GdiPlus.pas',
  GdiPlusHelpers in 'GdiPlus\Lib\GdiPlusHelpers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
