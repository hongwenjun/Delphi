unit ThoughtWorks.QRCode.Codec.Data.QRCodeBitmapImage;

interface

uses
  Vcl.Graphics, ThoughtWorks.QRCode.Codec.Data.QRCodeImage;

type
  TQRCodeBitmapImage = class(IQRCodeImage)
  private
    FImage:TBitmap;
  public
    constructor Create(image: TBitmap);
    function getPixel(x, y: Integer): Integer; override;
  end;

implementation

constructor TQRCodeBitmapImage.Create(image: TBitmap);
begin
  FImage := image;
end;

function TQRCodeBitmapImage.getPixel(x: Integer; y: Integer): Integer;
begin
end;

end.

