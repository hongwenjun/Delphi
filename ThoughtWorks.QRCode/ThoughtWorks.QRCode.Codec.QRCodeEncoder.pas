unit ThoughtWorks.QRCode.Codec.QRCodeEncoder;

interface

uses
  GdiPlus, QType, System.Classes, System.Generics.Collections, System.Variants,
  System.SysUtils, Winapi.Windows, ThoughtWorks.QRCode.Codec.Util.QRCodeUtility;

type
  TQRCodeEncoder = class
  public
    type
      ENCODE_MODE = (ALPHA_NUMERIC, NUMERIC, BYTE);

      ERROR_CORRECTION = (L, M, Q, H);
  private
    FQrcodeErrorCorrect: ERROR_CORRECTION;
    FQrcodeEncodeMode: ENCODE_MODE;
    FQrcodeVersion: Integer;
    FQrcodeStructureappendN, FQrcodeStructureappendM, FQrcodeStructureappendParity: Integer;
    FQrCodeBackgroundColor, FQrCodeForegroundColor: TGPColor;
    FQrCodeScale: Integer;
    FQrcodeStructureappendOriginaldata: string;
  public
    constructor Create;
    property QrcodeErrorCorrect: ERROR_CORRECTION read FQrcodeErrorCorrect write FQrcodeErrorCorrect;
    property QrcodeEncodeMode: ENCODE_MODE read FQrcodeEncodeMode write FQrcodeEncodeMode;
    property QrcodeVersion: Integer read FQrcodeVersion write FQrcodeVersion;
    property QrCodeScale: Integer read FQrCodeScale write FQrCodeScale;
  public
    procedure setStructureappend(m: Integer; n: Integer; p: Integer);
    function calStructureappendParity(originaldata: TShortInts): Integer;
    function calQrcode(qrcodeData: TTBytes): T2DBoolean;
    function Encode(content: string): IGPBitmap; overload;
    function Encode(content: string; encoding: TEncoding): IGPBitmap; overload;
  private
    class function divideDataBy8Bits(data: TIntegers; bits: TShortInts; maxDataCodewords: Integer): TShortInts; static;
    class function calculateRSECC(codewords: TShortInts; rsEccCodewords: ShortInt; rsBlockOrder: TShortInts; maxDataCodewords: Integer; maxCodewords: Integer): TShortInts;
    class function calculateByteArrayBits(xa: TShortints; xb: TShortints; ind: string): TShortints; static;
    class function selectMask(matrixContent: T2DShorInt; maxCodewordsBitWithRemain: Integer): Shortint; static;
  end;

implementation

constructor TQRCodeEncoder.Create;
begin
  FQrcodeErrorCorrect := ERROR_CORRECTION.M;
  FQrcodeEncodeMode := ENCODE_MODE.BYTE;
  FQrcodeVersion := 7;

  FQrcodeStructureappendN := 0;
  FQrcodeStructureappendM := 0;
  FQrcodeStructureappendParity := 0;
  FQrcodeStructureappendOriginaldata := '';

  FQrCodeScale := 4;

  FQrCodeBackgroundColor := TGPCOlor.White;
  FQrCodeForegroundColor := TGPColor.Black;
end;

procedure TQRCodeEncoder.setStructureappend(m: Integer; n: Integer; p: Integer);
begin
  if (((((n > 1) and (n <= $10)) and ((m > 0) and (m <= $10))) and (p >= 0)) and (p <= $ff)) then
  begin
    FQrcodeStructureappendM := m;
    FQrcodeStructureappendN := n;
    FQrcodeStructureappendParity := p
  end
end;

function TQRCodeEncoder.calStructureappendParity(originaldata: TShortInts): Integer;
var
  originaldataLength, i, structureappendParity: Integer;
begin
  i := 0;
  structureappendParity := 0;
  originaldataLength := Length(originaldata);

  if (originaldataLength > 1) then
  begin
    structureappendParity := 0;
    while ((i < originaldataLength)) do
    begin
      structureappendParity := (structureappendParity xor (originaldata[i] and $ff));
      inc(i)
    end;
  end;
  begin
    structureappendParity := -1;
  end;
  Result := structureappendParity;
end;

function TQRCodeEncoder.calQrcode(qrcodeData: TTBytes): T2DBoolean;
var
  dataLength: Integer;
  dataCounter: Integer;
  dataValue: TIntegers;
  dataBits: TShortInts;
  rec: T2DBoolean;
  codewordNumPlus: TIntegers;
  codewordNumCounterValue: Integer;
  I, J: Integer;
  chr: ShortInt;
  chrValue: System.Byte;
  totalDataBits: Integer;
  tmpVersion: Integer;
  ec: Integer;
  maxDataBitsArray: T2DInteger;
  maxDataBits: Integer;
  maxCodewordsArray: TIntegers;
  maxCodewords, maxModules1side: Integer;
  matrixRemainBit: TIntegers;
  byte_num: Integer;
  matrixX, matrixY, maskArray, formatInformationX2, formatInformationY2, rsEccCodewords, rsBlockOrderTemp: TShortInts;
  fileName: string;
  memoryStream: TResourceStream;
  bis: TBufferedFileStream;
  rsBlockOrderLength: System.Byte;
  rsBlockOrder: TShortInts;
  formatInformationX1, formatInformationY1: TShortInts;
  maxDataCodewords, modules1Side, matrixTotalBits: Integer;
  frameData: TShortInts;
  dataCodewords, codewords: TShortInts;
  matrixContent: T2DShorInt;
  i2, i3: Integer;
  codeword_i: ShortInt;
  codewordBitsNumber: Integer;
  matrixRemain: Integer;
  remainBitTemp: Integer;
  maskNumber: ShortInt;
  maskContent: ShortInt;
  formatInformationValue: ShortInt;
  formatInformationArray: TTStrings;
  content: ShortInt;
  out_Renamed: T2DBoolean;
  c: Integer;
begin
  dataCounter := 0;
  dataLength := Length(qrcodeData);

  SetLength(dataValue, dataLength + 32);
  SetLength(dataBits, dataLength + 32);

  if dataLength <= 0 then
  begin
    SetLength(rec, 1);
    Result := rec;
    Exit;
  end;

  if FQrcodeStructureappendN > 1 then
  begin
    dataValue[0] := 3;
    dataBits[0] := 4;

    dataValue[1] := FQrcodeStructureappendM - 1;
    dataBits[1] := 4;

    dataValue[2] := FQrcodeStructureappendM - 1;
    dataBits[2] := 4;

    dataValue[3] := FQrcodeStructureappendParity;
    dataBits[3] := 8;

    dataCounter := 4;
  end;
  dataBits[dataCounter] := 4;

  case FQrcodeEncodeMode of
    ALPHA_NUMERIC:
      begin
        codewordNumPlus := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4);
        dataValue[dataCounter] := 2;
        Inc(dataCounter);
        dataValue[dataCounter] := dataLength;

        dataBits[dataCounter] := 9;
        codewordNumCounterValue := dataCounter;

        Inc(dataCounter);
        for I := 0 to dataLength - 1 do
        begin
          chr := ShortInt(qrcodeData[I]);
          chrValue := 0;
          if (chr >= 48) and (chr < 58) then
          begin
            chrValue := System.Byte(chr - 48);
          end
          else
          begin
            if (chr >= 65) and (chr < 91) then
            begin
              chrValue := System.Byte(chr - 55);
            end
            else
            begin
              if chr = 32 then
              begin
                chrValue := 36;
              end;
              if chr = 36 then
              begin
                chrValue := 37;
              end;
              if chr = 37 then
              begin
                chrValue := 38;
              end;
              if chr = 42 then
              begin
                chrValue := 39;
              end;
              if chr = 43 then
              begin
                chrValue := 40;
              end;
              if chr = 45 then
              begin
                chrValue := 41;
              end;
              if chr = 46 then
              begin
                chrValue := 42;
              end;
              if chr = 47 then
              begin
                chrValue := 43;
              end;
              if chr = 58 then
              begin
                chrValue := 44;
              end;
            end;
          end;
          if I mod 2 = 0 then
          begin
            dataValue[dataCounter] := chrValue;
            dataBits[dataCounter] := 6;
          end
          else
          begin
            dataValue[dataCounter] := dataValue[dataCounter] * 45 + chrValue;
            dataBits[dataCounter] := 1;
            if I < dataLength - 1 then
            begin
              Inc(dataCounter);
            end;
          end;
        end;
        Inc(dataCounter);
      end;
    NUMERIC:
      begin
        codewordNumPlus := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4);
        dataValue[dataCounter] := 1;
        Inc(dataCounter);
        dataValue[dataCounter] := dataLength;

        dataBits[dataCounter] := 10;
        codewordNumCounterValue := dataCounter;

        Inc(dataCounter);
        for I := 0 to dataLength - 1 do
        begin
          if I mod 3 = 0 then
          begin
            dataValue[dataCounter] := qrcodeData[i] - $30;
            dataBits[dataCounter] := 4;
          end
          else
          begin
            dataValue[dataCounter] := dataValue[dataCounter] * 10 + (qrcodeData[i] - $30);

            if I mod 3 = 1 then
            begin
              dataBits[dataCounter] := 7;
            end
            else
            begin
              dataBits[dataCounter] := 10;
              if I < dataLength - 1 then
              begin
                Inc(dataCounter);
              end;
            end;
          end;
        end;
        Inc(dataCounter);
      end;
  else
    begin
      codewordNumPlus := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8);
      dataValue[dataCounter] := 4;
      Inc(dataCounter);
      dataValue[dataCounter] := dataLength;

      dataBits[dataCounter] := 8;
      codewordNumCounterValue := dataCounter;

      Inc(dataCounter);
      for I := 0 to dataLength - 1 do
      begin
        dataValue[i + dataCounter] := (qrcodeData[i] and $FF);
        dataBits[i + dataCounter] := 8;
      end;
      Inc(dataCounter, dataLength);
    end;
  end;

  totalDataBits := 0;
  for I := 0 to dataCounter - 1 do
  begin
    Inc(totalDataBits, dataBits[I]);
  end;

  case FQrcodeErrorCorrect of
    L:
      ec := 1;
    Q:
      ec := 3;
    H:
      ec := 2;
  else
    ec := 0;
  end;
  SetLength(maxDataBitsArray, 4);
  maxDataBitsArray[0] := TIntegers.Create(0, 128, 224, 352, 512, 688, 864, 992, 1232, 1456, 1728, 2032, 2320, 2672, 2920, 3320, 3624, 4056, 4504, 5016, 5352, 5712, 6256, 6880, 7312, 8000, 8496, 9024, 9544, 10136, 10984, 11640, 12328, 13048, 13800, 14496, 15312, 15936, 16816, 17728, 18672);
  maxDataBitsArray[1] := TIntegers.Create(0, 152, 272, 440, 640, 864, 1088, 1248, 1552, 1856, 2192, 2592, 2960, 3424, 3688, 4184, 4712, 5176, 5768, 6360, 6888, 7456, 8048, 8752, 9392, 10208, 10960, 11744, 12248, 13048, 13880, 14744, 15640, 16568, 17528, 18448, 19472, 20528, 21616, 22496, 23648);
  maxDataBitsArray[2] := TIntegers.Create(0, 72, 128, 208, 288, 368, 480, 528, 688, 800, 976, 1120, 1264, 1440, 1576, 1784, 2024, 2264, 2504, 2728, 3080, 3248, 3536, 3712, 4112, 4304, 4768, 5024, 5288, 5608, 5960, 6344, 6760, 7208, 7688, 7888, 8432, 8768, 9136, 9776, 10208);
  maxDataBitsArray[3] := TIntegers.Create(0, 104, 176, 272, 384, 496, 608, 704, 880, 1056, 1232, 1440, 1648, 1952, 2088, 2360, 2600, 2936, 3176, 3560, 3880, 4096, 4544, 4912, 5312, 5744, 6032, 6464, 6968, 7288, 7880, 8264, 8920, 9368, 9848, 10288, 10832, 11408, 12016, 12656, 13328);

  maxDataBits := 0;

  tmpVersion := 1;
  for I := 1 to 40 do
  begin
    if maxDataBitsArray[ec][I] >= totalDataBits + codewordNumPlus[tmpVersion] then
    begin
      Break;
    end;
    Inc(tmpVersion);
  end;

  if (FQrcodeVersion < tmpVersion) then
  begin
    FQrcodeVersion := tmpVersion;
  end;

  if FQrcodeVersion = 0 then
  begin
    FQrcodeVersion := 1;
    for I := 1 to 40 do
    begin
      if maxDataBitsArray[ec][I] >= totalDataBits + codewordNumPlus[FQrcodeVersion] then
      begin
        maxDataBits := maxDataBitsArray[ec][I];
        Break;
      end;
      Inc(FQrcodeVersion);
    end;
  end
  else
  begin
    maxDataBits := maxDataBitsArray[ec][FQrcodeVersion];
  end;
  Inc(totalDataBits, codewordNumPlus[FQrcodeVersion]);
  dataBits[codewordNumCounterValue] := dataBits[codewordNumCounterValue] + codewordNumPlus[FQrcodeVersion];
  maxCodewordsArray := TIntegers.Create(0, 26, 44, 70, 100, 134, 172, 196, 242, 292, 346, 404, 466, 532, 581, 655, 733, 815, 901, 991, 1085, 1156, 1258, 1364, 1474, 1588, 1706, 1828, 1921, 2051, 2185, 2323, 2465, 2611, 2761, 2876, 3034, 3196, 3362, 3532, 3706);

  maxCodewords := maxCodewordsArray[FQrcodeVersion];
  maxModules1side := 17 + (FQrcodeVersion shl 2);

  matrixRemainBit := TIntegers.Create(0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0);

  byte_num := matrixRemainBit[FQrcodeVersion] + (maxCodewords shl 3);

  SetLength(matrixX, byte_num);
  SetLength(matrixY, byte_num);
  SetLength(maskArray, byte_num);
  SetLength(formatInformationX2, 15);
  SetLength(formatInformationY2, 15);
  SetLength(rsEccCodewords, 1);
  SetLength(rsBlockOrderTemp, 128);

  try
    begin
      fileName := Format('qrv%d_%d', [FQrcodeVersion, ec]);
      memoryStream := TResourceStream.Create(HInstance, fileName, RT_RCDATA);
      memoryStream.Read(matrixX[0], Length(matrixX));
      memoryStream.Read(matrixY[0], Length(matrixY));
      memoryStream.Read(maskArray[0], Length(maskArray));
      memoryStream.Read(formatInformationX2[0], Length(formatInformationX2));
      memoryStream.Read(formatInformationY2[0], Length(formatInformationY2));
      memoryStream.Read(rsEccCodewords[0], Length(rsEccCodewords));
      memoryStream.Read(rsBlockOrderTemp[0], Length(rsBlockOrderTemp));

      //memoryStream.Destroy;
    end;
  except

  end;

  rsBlockOrderLength := 1;
  for I := 1 to 127 do
  begin
    if rsBlockOrderTemp[I] = 0 then
    begin
      rsBlockOrderLength := I;
      Break;
    end;
  end;
  SetLength(rsBlockOrder, rsBlockOrderLength);
  TQRCodeUtility.ArrayCopy(rsBlockOrderTemp[0], 0, rsBlockOrder[0], 0, Length(rsBlockOrder));

  formatInformationX1 := TShortInts.Create(0, 1, 2, 3, 4, 5, 7, 8, 8, 8, 8, 8, 8, 8, 8);
  formatInformationY1 := TShortInts.Create(8, 8, 8, 8, 8, 8, 8, 8, 7, 5, 4, 3, 2, 1, 0);

  maxDataCodewords := maxDataBits shr 3;

  modules1Side := 4 * FQrcodeVersion + 17;
  matrixTotalBits := modules1Side * modules1Side;
  SetLength(frameData, matrixTotalBits + modules1Side);

  try
    begin
      fileName := Format('qrvfr%d', [FQrcodeVersion]);
      memoryStream := TResourceStream.Create(HInstance, fileName, RT_RCDATA);
      memoryStream.ReadBuffer(frameData[0], Length(frameData));
      //memoryStream.Destroy;
    end;
  except

  end;

  if totalDataBits <= maxDataBits - 4 then
  begin
    dataValue[dataCounter] := 0;
    dataBits[dataCounter] := 4;
  end
  else
  begin
    if totalDataBits < maxDataBits then
    begin
      dataValue[dataCounter] := 0;
      dataBits[dataCounter] := maxDataBits - totalDataBits;
    end
    else
    begin
      if totalDataBits > maxDataBits then
      begin

      end;
    end;
  end;

  dataCodewords := divideDataBy8Bits(dataValue, dataBits, maxDataCodewords);
  codewords := calculateRSECC(dataCodewords, rsEccCodewords[0], rsBlockOrder, maxDataCodewords, maxCodewords);

  //SetLength(BmatrixContent, 0, 0);
  SetLength(matrixContent, modules1Side, modules1Side);

  for i := 0 to maxCodewords - 1 do
  begin
    codeword_i := codewords[i];
    for j := 7 downto 0 do
    begin
      codewordBitsNumber := (i * 8) + j;
      matrixContent[matrixX[codewordBitsNumber] and $FF][matrixY[codewordBitsNumber] and $FF] := ShortInt((255 * (codeword_i and 1)) xor maskArray[codewordBitsNumber]);
      codeword_i := URShift((codeword_i and $FF), 1);
    end;
  end;
  for matrixRemain := matrixRemainBit[FQrcodeVersion] downto 1 do
  begin
    remainBitTemp := matrixRemain + (maxCodewords * 8) - 1;
    matrixContent[matrixX[remainBitTemp] and $FF][matrixY[remainBitTemp] and $FF] := ShortInt(255 xor maskArray[remainBitTemp]);
  end;

  maskNumber := selectMask(matrixContent, matrixRemainBit[FQrcodeVersion] + maxCodewords * 8);
  maskContent := 1 shl maskNumber;

  formatInformationValue := ec shl 3 or maskNumber;
  formatInformationArray := TTStrings.Create('101010000010010', '101000100100101', '101111001111100', '101101101001011', '100010111111001', '100000011001110', '100111110010111', '100101010100000', '111011111000100', '111001011110011', '111110110101010', '111100010011101', '110011000101111', '110001100011000', '110110001000001', '110100101110110', '001011010001001', '001001110111110', '001110011100111', '001100111010000', '000011101100010', '000001001010101', '000110100001100', '000100000111011', '011010101011111', '011000001101000', '011111100110001', '011101000000110', '010010010110100', '010000110000011', '010111011011010', '010101111101101');

  for I := 0 to 14 do
  begin
    content := StrToInt(formatInformationArray[formatInformationValue].Substring(i, 1));
    matrixContent[formatInformationX1[i] and $FF][formatInformationY1[i] and $FF] := (content * 255);
    matrixContent[formatInformationX2[i] and $FF][formatInformationY2[i] and $FF] := (content * 255);

  end;

  SetLength(out_Renamed, 0, 0);
  SetLength(out_Renamed, modules1Side, modules1Side);

  c := 0;
  for I := 0 to modules1Side - 1 do
  begin
    for j := 0 to modules1Side - 1 do
    begin
      if (matrixContent[j][i] and maskContent <> 0) or (frameData[c] = 49) then
      begin
        out_Renamed[j][i] := True;
      end
      else
      begin
        out_Renamed[j][i] := False;
      end;
      Inc(c);
    end;
    Inc(c);
  end;
  Result := out_Renamed;
end;

class function TQRCodeEncoder.divideDataBy8Bits(data: TIntegers; bits: TShortInts; maxDataCodewords: Integer): TShortInts;
var
  l1, l2, codewordsCounter, remainingBits, max, buffer, bufferBits: Integer;
  flag: Boolean;
  I: Integer;
  codewords: TShortInts;
begin
  l1 := Length(bits);
  codewordsCounter := 0;
  remainingBits := 8;
  max := 0;

  if l1 <> Length(data) then
  begin

  end;
  for I := 0 to 10 do
  begin
    Inc(max, bits[I]);
  end;
  l2 := (max - 1) div 8 + 1;
  SetLength(codewords, maxDataCodewords);
  for I := 0 to l2 do
  begin
    codewords[I] := 0;
  end;
  for I := 0 to l1 do
  begin
    buffer := data[I];
    bufferBits := bits[I];
    flag := True;

    if bufferBits = 0 then
    begin
      break;
    end;
    while flag do
    begin
      if remainingBits > bufferBits then
      begin
        codewords[codewordsCounter] := (codewords[codewordsCounter] shl bufferBits) or buffer;
        Dec(remainingBits, bufferBits);
        flag := False;
      end
      else
      begin
        Dec(bufferBits, remainingBits);
        codewords[codewordsCounter] := (codewords[codewordsCounter] shl remainingBits) or (buffer shr bufferBits);

        if bufferBits = 0 then
        begin
          flag := False;
        end
        else
        begin
          buffer := (buffer and ((1 shl bufferBits) - 1));
          flag := True;
        end;
        Inc(codewordsCounter);
        remainingBits := 8;
      end;
    end;
  end;

  if remainingBits <> 8 then
  begin
    codewords[codewordsCounter] := (codewords[codewordsCounter] shl remainingBits);
  end
  else
  begin
    Dec(codewordsCounter);
  end;
  if codewordsCounter < maxDataCodewords - 1 then
  begin
    flag := True;
    while codewordsCounter < maxDataCodewords - 1 do
    begin
      Inc(codewordsCounter);
      if flag then
      begin
        codewords[codewordsCounter] := -20;
      end
      else
      begin
        codewords[codewordsCounter] := 17;
      end;
      flag := not flag;
    end;
  end;
  Result := codewords;
end;

class function TQRCodeEncoder.calculateRSECC(codewords: TShortInts; rsEccCodewords: ShortInt; rsBlockOrder: TShortInts; maxDataCodewords: Integer; maxCodewords: Integer): TShortInts;
var
  rsCalTableArray: T2DShorInt;
  I: Integer;
  fileName: string;
  memoryStream: TResourceStream;
  j2, j, rsBlockNumber: Integer;
  rsTemp: T2DShorInt;
  res: TShortInts;
  i2: Integer;
  rsTempData: TShortInts;
  rsCodewords, rsDataCodewords: Integer;
  first: ShortInt;
  leftChr, cal: TShortInts;
  rsTempNew: TShortInts;
begin
  SetLength(rsCalTableArray, 256, rsEccCodewords);

  try
    fileName := Format('rsc%d', [rsEccCodewords]);
    memoryStream := TResourceStream.Create(HInstance, fileName, RT_RCDATA);
    for I := 0 to 255 do
    begin
      memoryStream.Read(rsCalTableArray[I][0], Length(rsCalTableArray[I]));
    end;
    memoryStream.Destroy;
  except

  end;

  j2 := 0;
  j := 0;
  rsBlockNumber := 0;

  SetLength(rsTemp, Length(rsBlockOrder));

  SetLength(res, maxCodewords);
  TQRCodeUtility.ArrayCopy(codewords[0], 0, res[0], 0, Length(codewords));

  i2 := 0;
  while i2 < Length(rsBlockOrder) do
  begin
    SetLength(rsTemp[i2], (rsBlockOrder[i2] and $FF) - rsEccCodewords);
    Inc(i2);
  end;
  i2 := 0;
  while i2 < maxDataCodewords do
  begin
    rsTemp[rsBlockNumber][j] := codewords[i2];
    Inc(j);
    if j >= ((rsBlockOrder[rsBlockNumber] and $FF) - rsEccCodewords) then
    begin
      j := 0;
      Inc(rsBlockNumber);
    end;
    Inc(i2);
  end;

  rsBlockNumber := 0;
  while rsBlockNumber < Length(rsBlockOrder) do
  begin
    SetLength(rsTempData, Length(rsTemp[rsBlockNumber]));
    TQRCodeUtility.ArrayCopy(rsTemp[rsBlockNumber][0], 0, rsTempData[0], 0, Length(rsTempData));

    rsCodewords := (rsBlockOrder[rsBlockNumber] and $FF);
    rsDataCodewords := rsCodewords - rsEccCodewords;

    j := rsDataCodewords;
    while j > 0 do
    begin
      first := rsTempData[0];
      if first <> 0 then
      begin
        SetLength(leftChr, 0);
        SetLength(leftChr, Length(rsTempData) - 1);
        TQRCodeUtility.ArrayCopy(rsTempData[0], 1, leftChr[0], 0, Length(rsTempData) - 1);
        cal := rsCalTableArray[(first and $FF)];
        rsTempData := nil;
        rsTempData := calculateByteArrayBits(leftChr, cal, 'xor');
      end
      else
      begin
        if rsEccCodewords < Length(rsTempData) then
        begin
          SetLength(rsTempNew, Length(rsTempData) - 1);
          TQRCodeUtility.ArrayCopy(rsTempData[0], 1, rsTempNew[0], 0, Length(rsTempData) - 1);
          SetLength(rsTempData, Length(rsTempNew));
          TQRCodeUtility.ArrayCopy(rsTempNew[0], 0, rsTempData[0], 0, Length(rsTempData));
        end
        else
        begin
          SetLength(rsTempNew, rsEccCodewords);
          TQRCodeUtility.ArrayCopy(rsTempData[0], 1, rsTempNew[0], 0, Length(rsTempData) - 1);
          rsTempNew[rsEccCodewords - 1] := 0;
          SetLength(rsTempData, Length(rsTempNew));
          TQRCodeUtility.ArrayCopy(rsTempNew[0], 0, rsTempData[0], 0, Length(rsTempData));
        end;
      end;
      Dec(j);
    end;
    TQRCodeUtility.ArrayCopy(rsTempData[0], 0, res[0], Length(codewords) + rsBlockNumber * rsEccCodewords, rsEccCodewords);
    Inc(rsBlockNumber);
  end;
  Result := res;
end;

class function TQRCodeEncoder.calculateByteArrayBits(xa: TShortints; xb: TShortints; ind: string): TShortints;
var
  ll, ls: Integer;
  res: TShortInts;
  xl, xs: TShortInts;
  I: Integer;
begin
  SetLength(Result, 0);
  if Length(xa) > Length(xb) then
  begin
    SetLength(xl, Length(xa));
    TQRCodeUtility.ArrayCopy(xa[0], 0, xl[0], 0, Length(xl));
    SetLength(xs, Length(xb));
    TQRCodeUtility.ArrayCopy(xb[0], 0, xs[0], 0, Length(xs));
  end
  else
  begin
    SetLength(xl, Length(xb));
    TQRCodeUtility.ArrayCopy(xb[0], 0, xl[0], 0, Length(xl));
    SetLength(xs, Length(xa));
    TQRCodeUtility.ArrayCopy(xa[0], 0, xs[0], 0, Length(xs));
  end;
  ll := Length(xl);
  ls := Length(xs);
  SetLength(res, ll);

  for I := 0 to ll - 1 do
  begin
    if I < ls then
    begin
      if ind.Equals('xor') then
      begin
        res[I] := (xl[i] xor xs[i]);
      end
      else
      begin
        res[I] := (xl[i] or xs[i]);
      end;
    end
    else
    begin
      res[I] := xl[I];
    end;
  end;
  //Result := res;
  SetLength(Result, Length(res));
  TQRCodeUtility.ArrayCopy(res[0], 0, Result[0], 0, Length(res));
end;

class function TQRCodeEncoder.selectMask(matrixContent: T2DShorInt; maxCodewordsBitWithRemain: Integer): Shortint;
var
  l: Integer;
  d1, d2, d3, d4: TIntegers;
  d2And, d2Or: Integer;
  d4Counter: TIntegers;
  y: Integer;
  xData, yData: TIntegers;
  xDlFlag, yDlFlag: TBooleans;
  x: Integer;
  maskNumber: Integer;
  minValue: Integer;
  res: ShortInt;
  d4Value: TIntegers;
  demerit: Integer;
  z: Integer;
begin
  l := Length(matrixContent);
  d1 := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);
  d2 := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);
  d3 := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);
  d4 := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);

  d2And := 0;
  d2Or := 0;
  d4Counter := TArray<Integer>.Create(0, 0, 0, 0, 0, 0, 0, 0);

  for y := 0 to l - 1 do
  begin
    xData := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);
    yData := TIntegers.Create(0, 0, 0, 0, 0, 0, 0, 0);
    xDlFlag := TBooleans.Create(False, False, False, False, False, False, False, False);
    yDlFlag := TBooleans.Create(False, False, False, False, False, False, False, False);

    for x := 0 to l - 1 do
    begin
      if (x > 0) and (y > 0) then
      begin
        d2And := matrixContent[x][y] and matrixContent[x - 1][y] and matrixContent[x][y - 1] and matrixContent[x - 1][y - 1] and $FF;
        d2Or := (matrixContent[x][y] and $FF) or (matrixContent[x - 1][y] and $FF) or (matrixContent[x][y - 1] and $FF) or (matrixContent[x - 1][y - 1] and $FF);
      end;

      for maskNumber := 0 to 7 do
      begin
        xData[maskNumber] := ((xData[maskNumber] and 63) shl 1) or ((URShift((matrixContent[x][y] and $FF), maskNumber)) and 1);
        yData[maskNumber] := ((yData[maskNumber] and 63) shl 1) or ((URShift((matrixContent[y][x] and $FF), maskNumber)) and 1);

        if ((matrixContent[x][y] and (1 shl maskNumber)) <> 0) then
        begin
          Inc(d4Counter[maskNumber]);
        end;

        if xData[maskNumber] = 93 then
        begin
          Inc(d3[maskNumber], 40);
        end;
        if yData[maskNumber] = 93 then
        begin
          Inc(d3[maskNumber], 40);
        end;

        if (x > 0) and (y > 0) then
        begin
          if ((d2And and 1) <> 0) or ((d2Or and 1) = 0) then
          begin
            Inc(d2[maskNumber], 3);
          end;

          d2And := d2And shr 1;
          d2Or := d2Or shr 1;
        end;

        if ((xData[maskNumber] and $1F) = 0) or ((xData[maskNumber] and $1F) = $1F) then
        begin
          if x > 3 then
          begin
            if xDlFlag[maskNumber] then
            begin
              Inc(d1[maskNumber]);
            end
            else
            begin
              Inc(d1[maskNumber], 3);
              xDlFlag[maskNumber] := True;
            end;
          end;
        end
        else
        begin
          xDlFlag[maskNumber] := False;
        end;

        if ((yData[maskNumber] and $1F) = 0) or ((yData[maskNumber] and $1F) = $1F) then
        begin
          if x > 3 then
          begin
            if yDlFlag[maskNumber] then
            begin
              Inc(d1[maskNumber]);
            end
            else
            begin
              Inc(d1[maskNumber], 3);
              yDlFlag[maskNumber] := True;
            end;
          end;
        end
        else
        begin
          yDlFlag[maskNumber] := False;
        end;
      end;
    end;
  end;
  minValue := 0;
  res := 0;
  d4Value := TIntegers.Create(90, 80, 70, 60, 50, 40, 30, 20, 10, 0, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 90);
  for maskNumber := 0 to 7 do
  begin
    d4[maskNumber] := d4Value[((20 * d4Counter[maskNumber]) div maxCodewordsBitWithRemain)];
    demerit := d1[maskNumber] + d2[maskNumber] + d3[maskNumber] + d4[maskNumber];

    if (demerit < minValue) or (maskNumber = 0) then
    begin
      res := maskNumber;
      minValue := demerit;
    end;
  end;
  Result := res;
end;

function TQRCodeEncoder.Encode(content: string): IGPBitmap;
begin
  if TQRCodeUtility.IsUnicode(content) then
  begin
    Result := Encode(content, TEncoding.UTF8);
  end
  else
  begin
    Result := Encode(content, TEncoding.ASCII);
  end;

end;

function TQRCodeEncoder.Encode(content: string; encoding: TEncoding): IGPBitmap;
var
  matrix: T2DBoolean;
  brush: IGPSolidBrush;
  image: IGPBitmap;
  g: IGPGraphics;
  i, j: Integer;
begin
  matrix := calQrcode(encoding.GetBytes(content));
  brush := TGPSolidBrush.Create(FQrCodeBackgroundColor);
  image := TGPBitmap.Create((Length(matrix) * FQrCodeScale) + 1, (Length(matrix) * FQrCodeScale) + 1);
  g := TGPGraphics.FromImage(image);
  g.FillRectangle(brush, TGPRect.Create(0, 0, image.Width, image.Height));
  brush.Color := FQrCodeForegroundColor;
  for i := 0 to Length(matrix) - 1 do
  begin
    for j := 0 to Length(matrix) - 1 do
    begin
      if matrix[j][i] then
      begin
        g.FillRectangle(brush, j * FQrCodeScale, i * FQrCodeScale, FQrCodeScale, FQrCodeScale);
      end;
    end;
  end;
  Result := image;
end;

end.

