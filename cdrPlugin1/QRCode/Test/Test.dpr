program Test;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  ScanManager in '..\Decode\ScanManager.pas',
  Binarizer in '..\Decode\Filtering\Binarizer.pas',
  BinaryBitmap in '..\Decode\Filtering\BinaryBitmap.pas',
  GlobalHistogramBinarizer in '..\Decode\Filtering\GlobalHistogramBinarizer.pas',
  HybridBinarizer in '..\Decode\Filtering\HybridBinarizer.pas',
  LuminanceSource in '..\Decode\Filtering\LuminanceSource.pas',
  RGBLuminanceSource in '..\Decode\Filtering\RGBLuminanceSource.Pas',
  BarcodeFormat in '..\Decode\Common\BarcodeFormat.pas',
  BitArray in '..\Decode\Common\BitArray.pas',
  Bitmatrix in '..\Decode\Common\Bitmatrix.pas',
  BitSource in '..\Decode\Common\BitSource.pas',
  CharacterSetECI in '..\Decode\Common\CharacterSetECI.pas',
  DecodeHintType in '..\Decode\Common\DecodeHintType.pas',
  DecoderResult in '..\Decode\Common\DecoderResult.pas',
  DefaultGridSampler in '..\Decode\Common\DefaultGridSampler.pas',
  DetectorResult in '..\Decode\Common\DetectorResult.pas',
  Helpers in '..\Decode\Common\Helpers.pas',
  MathUtils in '..\Decode\Common\MathUtils.pas',
  MultiFormatReader in '..\Decode\Common\MultiFormatReader.pas',
  PerspectiveTransform in '..\Decode\Common\PerspectiveTransform.pas',
  ReadResult in '..\Decode\Common\ReadResult.pas',
  ResultMetadataType in '..\Decode\Common\ResultMetadataType.pas',
  ResultPoint in '..\Decode\Common\ResultPoint.pas',
  StringUtils in '..\Decode\Common\StringUtils.pas',
  Code93Reader in '..\Decode\1D Barcodes\Code93Reader.pas',
  Code128Reader in '..\Decode\1D Barcodes\Code128Reader.pas',
  ITFReader in '..\Decode\1D Barcodes\ITFReader.pas',
  MultiFormatOneDReader in '..\Decode\1D Barcodes\MultiFormatOneDReader.pas',
  OneDReader in '..\Decode\1D Barcodes\OneDReader.pas',
  Reader in '..\Decode\1D Barcodes\Reader.pas',
  QRCodeReader in '..\Decode\2D Barcodes\QRCodeReader.pas',
  BitMatrixParser in '..\Decode\2D Barcodes\Decoder\BitMatrixParser.pas',
  Datablock in '..\Decode\2D Barcodes\Decoder\Datablock.pas',
  Datamask in '..\Decode\2D Barcodes\Decoder\Datamask.pas',
  DecodedBitStreamParser in '..\Decode\2D Barcodes\Decoder\DecodedBitStreamParser.pas',
  ErrorCorrectionLevel in '..\Decode\2D Barcodes\Decoder\ErrorCorrectionLevel.pas',
  FormatInformation in '..\Decode\2D Barcodes\Decoder\FormatInformation.pas',
  GenericGF in '..\Decode\2D Barcodes\Decoder\GenericGF.pas',
  Mode in '..\Decode\2D Barcodes\Decoder\Mode.pas',
  QRCodeDecoderMetadata in '..\Decode\2D Barcodes\Decoder\QRCodeDecoderMetadata.pas',
  QRDecoder in '..\Decode\2D Barcodes\Decoder\QRDecoder.pas',
  ReedSolomonDecoder in '..\Decode\2D Barcodes\Decoder\ReedSolomonDecoder.pas',
  Version in '..\Decode\2D Barcodes\Decoder\Version.pas',
  AlignmentPattern in '..\Decode\2D Barcodes\Detector\AlignmentPattern.pas',
  AlignmentPatternFinder in '..\Decode\2D Barcodes\Detector\AlignmentPatternFinder.pas',
  Detector in '..\Decode\2D Barcodes\Detector\Detector.pas',
  FinderPattern in '..\Decode\2D Barcodes\Detector\FinderPattern.pas',
  FinderPatternFinder in '..\Decode\2D Barcodes\Detector\FinderPatternFinder.pas',
  FinderPatternInfo in '..\Decode\2D Barcodes\Detector\FinderPatternInfo.pas',
  DelphiZXIngQRCode in '..\Encode\DelphiZXIngQRCode.pas',
  QR_URL in '..\Encode\QR_URL.pas',
  QR_Win1251 in '..\Encode\QR_Win1251.pas',
  QRGraphics in '..\Encode\QRGraphics.pas',
  SVGImage in '..\Encode\SVGImage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
