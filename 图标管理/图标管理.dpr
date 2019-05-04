program 图标管理;

{$R *.dres}

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  CUtils in 'CUtils.pas',
  ArrayEx in 'ArrayEx.pas',
  Icon2Base64 in '..\图标Base64生成\Icon2Base64.pas';

{$R *.res}



begin
  //ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

