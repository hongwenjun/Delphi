unit frmFontRecognition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  CaptureImageTool, Vcl.ExtCtrls;

type
  TfFontRecognition = class(TTBaseForm)
    cbb_FontList: TComboBox;
    img1: TImage;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFontRecognition: TfFontRecognition;

implementation

{$R *.dfm}

procedure TfFontRecognition.btn1Click(Sender: TObject);
var
  cap: TTCaptureImageTool;
begin
  inherited;
  cap := TTCaptureImageTool.Create(Self);
  if cap.ShowModal = IDOK then
  begin
    img1.Picture := nil;
    img1.Picture.Bitmap.Assign(cap.Image);
    img1.Picture.Bitmap.PixelFormat := pfDevice;
    img1.Picture.Bitmap.PixelFormat := pf1bit;
  end;
end;

procedure TfFontRecognition.FormShow(Sender: TObject);
begin
  inherited;
  cbb_FontList.Clear;
  TThread.CreateAnonymousThread(
    procedure
    var
      I: Integer;
    begin
      Self.Caption := '字体识别 正在加载字体...';
      for I := 1 to FApp.FontList.Count do
      begin
        cbb_FontList.Items.Add(FApp.FontList.Item[I]);
      end;
      Self.Caption := '字体识别';
    end).Start;
end;

end.

