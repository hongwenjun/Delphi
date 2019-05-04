program test;

uses
  Vcl.Forms,
  main in 'main.pas' {Form2},
  SpeedButtonEx in '..\..\¿Ø¼þ°ü\SpeedButtonEx.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
