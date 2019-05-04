unit frmTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfTest = class(TForm)
    btn1: TButton;
    edt1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTest: TfTest;

implementation

{$R *.dfm}

end.
