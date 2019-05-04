program ThoughtWorks.QRCode;

{$R 'ThoughtWorks.QRCode.Resources.res' 'ThoughtWorks.QRCode.Resources.rc'}

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  ThoughtWorks.QRCode.Codec.Util.Color in 'util\ThoughtWorks.QRCode.Codec.Util.Color.pas',
  ThoughtWorks.QRCode.Codec.Util.ContentConverter in 'util\ThoughtWorks.QRCode.Codec.Util.ContentConverter.pas',
  ThoughtWorks.QRCode.Codec.Util.QRCodeUtility in 'util\ThoughtWorks.QRCode.Codec.Util.QRCodeUtility.pas',
  ThoughtWorks.QRCode.Codec.Data.QRCodeImage in 'data\ThoughtWorks.QRCode.Codec.Data.QRCodeImage.pas',
  ThoughtWorks.QRCode.Codec.Data.QRCodeBitmapImage in 'data\ThoughtWorks.QRCode.Codec.Data.QRCodeBitmapImage.pas',
  ThoughtWorks.QRCode.Codec.QRCodeEncoder in 'ThoughtWorks.QRCode.Codec.QRCodeEncoder.pas',
  GdiPlus in '..\图标Base64生成\GdiPlus\Lib\GdiPlus.pas',
  GdiPlusHelpers in '..\图标Base64生成\GdiPlus\Lib\GdiPlusHelpers.pas',
  QType in 'data\QType.pas',
  ThoughtWorks.QRCode.Codec.QRCodeDecoder in 'ThoughtWorks.QRCode.Codec.QRCodeDecoder.pas',
  ThoughtWorks.QRCode.Codec.Data.QRCodeSymbol in 'data\ThoughtWorks.QRCode.Codec.Data.QRCodeSymbol.pas',
  ThoughtWorks.QRCode.Geom.Point in 'geom\ThoughtWorks.QRCode.Geom.Point.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
