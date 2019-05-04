unit frmQrcode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, QRGraphics, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, DelphiZXIngQRCode, QR_Win1251, QR_URL, System.IOUtils,
  VGCore_TLB, SVGImage, CaptureImageTool, ScanManager, BarcodeFormat, ReadResult,
  QRCodeReader, ResultMetadataType, ErrorCorrectionLevel;

type
  TfQrcode = class(TTBaseForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    btn_Cap: TButton;
    btn_Gen: TButton;
    mmo_Self: TMemo;
    pbPreview: TPaintBox;
    cbbVersion: TComboBox;
    cbbErrorCorrectionLevel: TComboBox;
    lbl1: TLabel;
    edt_CardName: TEdit;
    lbl2: TLabel;
    edt_CardNumber: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_CardQQ: TEdit;
    edt_CardPosition: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    edt_CardWeb: TEdit;
    edt_CardEmail: TEdit;
    lbl7: TLabel;
    edt_CardCompany: TEdit;
    lbl8: TLabel;
    edt_CardAdd: TEdit;
    lbl9: TLabel;
    mmo_RealText: TMemo;
    lbl10: TLabel;
    lbl11: TLabel;
    edtWIFIName: TEdit;
    lbl12: TLabel;
    edtWIFIPwd: TEdit;
    cbb_WIFIType: TComboBox;
    lbl13: TLabel;
    procedure pbPreviewPaint(Sender: TObject);
    procedure mmo_SelfChange(Sender: TObject);
    procedure cbbErrorCorrectionLevelChange(Sender: TObject);
    procedure btn_GenClick(Sender: TObject);
    procedure cbbVersionChange(Sender: TObject);
    procedure edt_CardNameChange(Sender: TObject);
    procedure btn_CapClick(Sender: TObject);
    procedure edtWIFINameChange(Sender: TObject);
    procedure cbb_WIFITypeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mQRCode: TDelphiZXingQRCode;
    FCodeText: string;
    procedure ReMakeQR;
    procedure refreshIDCard;
    procedure refreshWIFI;
  public
    { Public declarations }
  end;

var
  fQrcode: TfQrcode;

implementation

{$R *.dfm}

procedure TfQrcode.btn_CapClick(Sender: TObject);
var
  cap: TTCaptureImageTool;
  img: TBitmap;
  stream: TStream;
  scan: TScanManager;
  rResult: TReadResult;
  decoder: TQRCodeReader;
begin
  inherited;
  cap := TTCaptureImageTool.Create(Self);
  if cap.ShowModal = mrOk then
  begin
    img := cap.Image;
    stream := TMemoryStream.Create;
    img.SaveToStream(stream);
    decoder := TQRCodeReader.Create;
    stream.Seek(0, TSeekOrigin.soBeginning);
    rResult := decoder.decode(stream);
    if rResult <> nil then
    begin
      mmo_Self.Lines.Text := rResult.Text;
      with mQRCode do
      try
        BeginUpdate;
        Data := rResult.Text;
    //Encoding := cmbEncoding.ItemIndex;
        if rResult.ResultMetaData.ContainsKey(TResultMetadataType.ERROR_CORRECTION_LEVEL) then
        begin
          ErrorCorrectionOrdinal := TErrorCorrectionOrdinal(TErrorCorrectionLevel(rResult.ResultMetaData[TResultMetadataType.ERROR_CORRECTION_LEVEL]).ordinal);
          cbbErrorCorrectionLevel.ItemIndex := Integer(ErrorCorrectionOrdinal);
        end;
    //QuietZone := StrToIntDef(edtQuietZone.Text, 4);
        EndUpdate(True);
    //lblQRMetrics.Caption := IntToStr(Columns) + 'x' + IntToStr(Rows) + ' (' + IntToStr(Columns - QuietZone * 2) + 'x' + IntToStr(Rows - QuietZone * 2) + ')';
      finally
        pbPreview.Repaint;
      end;
    end
    else
    begin
      MessageBox(self.Handle, '不能识别的二维码！', '错误', MB_OK + MB_ICONSTOP);
    end;
  end;
end;

procedure TfQrcode.btn_GenClick(Sender: TObject);
var
  svg: TSVGImage;
  tp: string;
begin
  inherited;
  svg := MakeSvgImagefile(0, mQRCode, clBlack, clWhite, TQRDrawingMode(0), 0);
  tp := FApp.CorelScriptTools.GetTempFolder + 'tiiiii.svg';
  svg.SaveToFile(tp);
  FApp.ActiveDocument.ActiveLayer.Import(tp, cdrSVG, nil);
  DeleteFile(tp);
end;

procedure TfQrcode.cbbVersionChange(Sender: TObject);
begin
  inherited;
  ReMakeQR;
end;

procedure TfQrcode.cbb_WIFITypeChange(Sender: TObject);
begin
  inherited;
  if cbb_WIFIType.ItemIndex < 2 then
  begin
    edtWIFIPwd.Enabled := True;
  end
  else
  begin
    edtWIFIPwd.Enabled := False;
    edtWIFIPwd.Text := '';
  end;
  refreshWIFI;
end;

procedure TfQrcode.cbbErrorCorrectionLevelChange(Sender: TObject);
begin
  inherited;
  ReMakeQR;
end;

procedure TfQrcode.edtWIFINameChange(Sender: TObject);
begin
  inherited;
  refreshWIFI;
end;

procedure TfQrcode.edt_CardNameChange(Sender: TObject);
begin
  inherited;
  refreshIDCard;
end;

procedure TfQrcode.FormShow(Sender: TObject);
begin
  inherited;
  if not Assigned(mQRCode) then
    mQRCode := TDelphiZXingQRCode.Create;
  mQRCode.RegisterEncoder(ENCODING_WIN1251, TWin1251Encoder);
  mQRCode.RegisterEncoder(ENCODING_URL, TURLEncoder);
  pgc1.TabIndex := 0;
  FCodeText := 'by tisn';
  ReMakeQR;
end;

procedure TfQrcode.mmo_SelfChange(Sender: TObject);
begin
  inherited;
  FCodeText := mmo_Self.Lines.Text;
  ReMakeQR;
end;

procedure TfQrcode.pbPreviewPaint(Sender: TObject);
begin
  inherited;
  with pbPreview.Canvas do
  begin
    //Pen.Color := clrbxForeground.Selected;
    //Brush.Color := clrbxBackground.Selected;
  end;
  DrawQR(pbPreview.Canvas, pbPreview.ClientRect, mQRCode, 0, TQRDrawingMode(0), Boolean(0));
end;

procedure TfQrcode.ReMakeQR;
begin
  with mQRCode do
  try
    BeginUpdate;
    Data := FCodeText;
    //Encoding := cmbEncoding.ItemIndex;
    if cbbVersion.ItemIndex = 0 then
    begin
      //Version := 0;
    end
    else
    begin
      //Version := cbbVersion.ItemIndex;
    end;
    ErrorCorrectionOrdinal := TErrorCorrectionOrdinal(cbbErrorCorrectionLevel.ItemIndex);
    //QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    EndUpdate(True);
    //lblQRMetrics.Caption := IntToStr(Columns) + 'x' + IntToStr(Rows) + ' (' + IntToStr(Columns - QuietZone * 2) + 'x' + IntToStr(Rows - QuietZone * 2) + ')';
  finally
    pbPreview.Repaint;
  end;
end;

procedure TfQrcode.refreshIDCard;
var
  qText: TStrings;
  d: Boolean;
begin
  qText := TStringList.Create;
  qText.Append('BEGIN:VCARD');
  d := False;
  if edt_CardName.Text <> '' then
  begin
    qText.Append(Format('FN:%s', [edt_CardName.Text]));
    d := True;
  end;
  if edt_CardPosition.Text <> '' then
  begin
    qText.Append(Format('TITLE:%s', [edt_CardPosition.Text]));
    d := True;
  end;
  if edt_CardWeb.Text <> '' then
  begin
    qText.Append(Format('URL:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  if edt_CardNumber.Text <> '' then
  begin
    qText.Append(Format('TEL;CELL:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  if edt_CardQQ.Text <> '' then
  begin
    qText.Append(Format('X-QQ:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  if edt_CardEmail.Text <> '' then
  begin
    qText.Append(Format('EMAIL:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  if edt_CardCompany.Text <> '' then
  begin
    qText.Append(Format('ORG:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  if edt_CardAdd.Text <> '' then
  begin
    qText.Append(Format('ADD;WORK:%s', [edt_CardWeb.Text]));
    d := True;
  end;
  qText.Append('END:VCARD');
  if not d then
  begin
    qText.Clear;
  end;
  mmo_RealText.Lines := qText;
  FCodeText := qText.Text;
  ReMakeQR;
  qText.Free;
end;

procedure TfQrcode.refreshWIFI;
var
  ot: TStrings;
begin
  ot := TStringList.Create;
  ot.Add('WIFI:');
  ot.Add(Format('S:%s;', [edtWIFIName.Text]));
  case cbb_WIFIType.ItemIndex of
    0:
      begin
        ot.Add('T:WPA;');
        ot.Add(Format('P:%s;', [edtWIFIPwd.Text]));
      end;
    1:
      begin
        ot.Add('T:WEB;');
        ot.Add(Format('P:%s;', [edtWIFIPwd.Text]));
      end;
    2:
      begin
        ot.Add('T:nopass;');
      end;
  end;
  FCodeText := ot.Text;
  ReMakeQR;
  ot.Free;
end;

end.

