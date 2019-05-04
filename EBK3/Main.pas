unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Ebk3Open;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
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
  ebk3: TEbk3Open;
begin
  ebk3 := TEbk3Open.Create;
  ebk3.Open('\\Tt3\d\360data\Data\文档\Tencent Files\547374673\FileRecv\MobileFile\《山村鬼医》(2).ebk3');
  ebk3.SaveToTxt('\\TT3\D\sa.txt');
end;

end.

