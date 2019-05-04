unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ThoughtWorks.QRCode.Codec.QRCodeEncoder,
  Vcl.StdCtrls, GdiPlus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    img1: TImage;
    lbl1: TLabel;
    edtData: TEdit;
    btnEncode: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnEncodeClick(Sender: TObject);
  private
    encoder: TQRCodeEncoder;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEncodeClick(Sender: TObject);
var
  img: IGPBitmap;
begin
  encoder.QrcodeVersion := 0;
  encoder.QrCodeScale := 5;
  img := encoder.Encode(edtData.Text);
  img1.Picture.Bitmap := nil;
  img1.Picture.Bitmap.Handle := img.GetHBitmap(TGPCOlor.White);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  encoder := TQRCodeEncoder.Create;
end;

end.

