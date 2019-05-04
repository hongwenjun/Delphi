unit frmFindText;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls;

type
  TfFindText = class(TTBaseForm)
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFindText: TfFindText;

implementation

{$R *.dfm}

end.
