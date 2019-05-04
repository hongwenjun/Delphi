unit ThoughtWorks.QRCode.Codec.Data.QRCodeImage;

interface
type
IQRCodeImage = class
  FWidth,FHeight:Integer;
  function getPixel(x,y:Integer):Integer;virtual;abstract;
end;

implementation

end.
