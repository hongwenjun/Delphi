unit frmBatchImport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.Menus;

type
  TfBatchImport = class(TTBaseForm)
    chklst1: TCheckListBox;
    btnAddfile: TButton;
    flpndlg1: TFileOpenDialog;
    btnImport: TButton;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure btnAddfileClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffBatchImport: TfBatchImport;

implementation

{$R *.dfm}

procedure TfBatchImport.btnAddfileClick(Sender: TObject);
begin
  inherited;
  if flpndlg1.Execute then
  begin
    chklst1.Items.AddStrings(flpndlg1.Files);
  end;
end;

procedure TfBatchImport.btnImportClick(Sender: TObject);
var
  s: string;
  I: Integer;
begin
  inherited;
  for I := 0 to chklst1.Count - 1 do
  begin
    s := chklst1.Items[I];
    if not FileExists(s) then
      Continue;
    if not chklst1.Checked[I] then
      Continue;
    FApp.ActiveDocument.AddPages(1);
    FApp.ActiveDocument.Pages.Last.Activate;
    FApp.ActiveDocument.ActiveLayer.Import(s);
  end;
end;

procedure TfBatchImport.N1Click(Sender: TObject);
begin
  inherited;
  chklst1.CheckAll(TCheckBoxState.cbChecked);
end;

procedure TfBatchImport.N2Click(Sender: TObject);
begin
  inherited;
  chklst1.CheckAll(TCheckBoxState.cbUnchecked);
end;

procedure TfBatchImport.N3Click(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to chklst1.Count - 1 do
  begin
     chklst1.Checked[I] := not chklst1.Checked[I];
  end;
end;

end.

