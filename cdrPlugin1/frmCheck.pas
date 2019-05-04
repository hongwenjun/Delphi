unit frmCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls;

type
  TfCheck = class(TTBaseForm)
    grpAuto: TGroupBox;
    chkEF2BMP: TCheckBox;
    chkGD2BMP: TCheckBox;
    chkOL2FILL: TCheckBox;
    btnAutoStart: TButton;
    chkTXTOL: TCheckBox;
    lst1: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffCheck: TfCheck;

implementation

{$R *.dfm}

end.
