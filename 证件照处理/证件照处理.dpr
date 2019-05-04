program 证件照处理;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  GdiPlus in '..\图标Base64生成\GdiPlus\Lib\GdiPlus.pas',
  GdiPlusHelpers in '..\图标Base64生成\GdiPlus\Lib\GdiPlusHelpers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
