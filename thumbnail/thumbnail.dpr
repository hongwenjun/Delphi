library thumbnail;

{$R *.dres}

uses
  ComServ,
  thumbnail_TLB in 'thumbnail_TLB.pas',
  TSThumbnail in 'TSThumbnail.pas' {TSThumbnail: CoClass},
  Base in 'Thumbnail\Base.pas',
  ImagePSD in 'Thumbnail\ImagePSD.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
