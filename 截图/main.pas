unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CaptureImageTool,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    img1: TImage;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  f:TTCaptureImageTool;
begin
  f := TTCaptureImageTool.Create(self);
  if f.ShowModal = mrOk then
  begin
    img1.Picture.Bitmap := f.Image;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

end.
