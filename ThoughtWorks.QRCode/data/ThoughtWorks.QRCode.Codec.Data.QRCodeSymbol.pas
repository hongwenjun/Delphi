unit ThoughtWorks.QRCode.Codec.Data.QRCodeSymbol;

interface

uses
  QType;

type
  TQRCodeSymbol = class
  private
    version: Integer;
    errorCollectionLevel: Integer;
    maskPattern: Integer;
    dataCapacity: Integer;
    moduleMatrix: T2DBoolean;
    width, height: Integer;
    alignmentPattern: T2DPoint;
    class var
      numErrorCollectionCode: T2DInteger;
    class var
      numRSBlocks: T2DInteger;
  private
    class procedure InitClass; static;
  end;

implementation

class procedure TQRCodeSymbol.InitClass;
begin
end;

initialization
  TQRCodeSymbol.InitClass;

end.

