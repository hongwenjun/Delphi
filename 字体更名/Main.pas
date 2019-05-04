unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IOUtils,
  System.Types, GdiPlus;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    chk1: TCheckBox;
    btn2: TButton;
    lst1: TListBox;
    flpndlg1: TFileOpenDialog;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure doR(folder: string);
    procedure renameT(fontPath: string);
    procedure AddMessage(msg: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  flpndlg1.FileName := edt1.Text;
  if flpndlg1.Execute then
  begin
    edt1.Text := flpndlg1.FileName;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  doR(edt1.Text);
end;

procedure TForm1.doR(folder: string);
var
  folders, files: TStringDynArray;
  f: string;
begin
  if chk1.Checked then
  begin
    folders := TDirectory.GetDirectories(folder);
    for f in folders do
    begin
      doR(f);
    end;
  end;
  files := TDirectory.GetFiles(folder);
  for f in files do
  begin
    if f.ToLower.EndsWith('.ttf') or f.ToLower.EndsWith('.otf') then
    begin
      renameT(f);
    end;
  end;
end;

procedure TForm1.renameT(fontPath: string);
var
  pfc: IGPPrivateFontCollection;
  nam, bPath, ext: string;
begin
  pfc := TGPPrivateFontCollection.Create;
  pfc.AddFontFile(fontPath);
  if pfc.Families.Count = 0 then
  begin
    Exit;
  end;
  nam := pfc.Families[0].FamilyName;
  AddMessage(fontPath);
  if not tpath.GetFileNameWithoutExtension(fontPath).Equals(nam) then
  begin
    bPath := TPath.GetDirectoryName(fontPath) + '\';
    ext := TPath.GetExtension(fontPath);
    if not FileExists(bPath + nam + ext) then
    begin
      RenameFile(fontPath, bPath + nam + ext);
      AddMessage('  重命名成功！');
    end
    else
    begin
      AddMessage('  已存在相同文件，放弃');
    end;
  end
  else
  begin
    AddMessage('  文件名正确，放弃');
  end;
end;

procedure TForm1.AddMessage(msg: string);
begin
  lst1.Items.Add(msg);
  lst1.ItemIndex := lst1.Items.Count - 1;
end;

end.

