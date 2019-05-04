unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ScanManager, Vcl.StdCtrls,
  BarcodeFormat, ReadResult, System.Generics.Collections, DecodeHintType,
  ResultMetadataType, ErrorCorrectionLevel,DelphiZXIngQRCode, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    img1: TImage;
    btn2: TButton;
    edt3: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    sm: TScanManager;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  image: TWICImage;
  stream: TMemoryStream;
  slt: TReadResult;
  o: TErrorCorrectionLevel;
begin
  image := TWICImage.Create;
  image.LoadFromFile(edt3.Text);
  image.ImageFormat := TWICImageFormat.wifBmp;
  stream := TMemoryStream.Create;
  image.SaveToStream(stream);
  stream.Seek(0, TSeekOrigin.soBeginning);
  slt := sm.Scan(stream);
  if slt = nil then
  begin
    edt1.Text := 'nil';
  end
  else
  begin
    edt1.Text := slt.Text;
    if slt.ResultMetaData.ContainsKey(TResultMetadataType.ERROR_CORRECTION_LEVEL) then
    begin
      o := TErrorCorrectionLevel(slt.ResultMetaData[TResultMetadataType.ERROR_CORRECTION_LEVEL]);
    end;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  e:TDelphiZXingQRCode;
begin
  e:=TDelphiZXingQRCode.Create;
  with e do
  begin
    BeginUpdate;
    //Version := 6;
    Data := edt2.Text;
    EndUpdate(True);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  hints: TDictionary<TDecodeHintType, TObject>;
  s: string;
  o: TObject;
begin
  s := 'utf-8';
  o := TObject(s);
  hints := TDictionary<TDecodeHintType, TObject>.Create;
  hints.Add(TDecodeHintType.CHARACTER_SET, o);
  sm := TScanManager.Create(TBarcodeFormat.QR_CODE, hints);
end;

end.

