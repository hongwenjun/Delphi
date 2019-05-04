unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  System.StrUtils, Vcl.StdCtrls, Vcl.FileCtrl, GdiPlus, System.IOUtils;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    function MakeFileList(Path, FileExt: string): TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function TForm1.MakeFileList(Path, FileExt: string): TStringList;
var
  sch: TSearchrec;
begin
  Result := TStringlist.Create;
  if rightStr(trim(Path), 1) <> '\' then
    Path := trim(Path) + '\'
  else
    Path := trim(Path);
  if not DirectoryExists(Path) then
  begin
    Result.Clear;
    exit;
  end;
  if FindFirst(Path + '*', faAnyfile, sch) = 0 then
  begin
    repeat
      Application.ProcessMessages;
      if ((sch.Name = '.') or (sch.Name = '..')) then
        Continue;
      if DirectoryExists(Path + sch.Name) then   // 这个地方加上一个判断，可以区别子文件夹河当前文件夹的操作
      begin
        Result.AddStrings(MakeFileList(Path + sch.Name, FileExt));
      end
      else
      begin
        if (UpperCase(extractfileext(Path + sch.Name)) = UpperCase(FileExt)) or (FileExt = '.*') then
          Result.Add(Path + sch.Name);
      end;
    until FindNext(sch) <> 0;
    FindClose(sch);
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  Dir: string;
begin
  Dir := edt1.Text;
  SelectDirectory('选择图片位置', '', Dir, [sdNewFolder, sdShowEdit, sdShowShares, sdNewUI, sdShowFiles, sdValidateDir], self);
  edt1.Text := Dir;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  ss: TStrings;
  s, tp: string;
  img: IGPImage;
  w, h: Integer;
  hr, vr: Single;
  rw, rh: Integer;
begin
  if not FileExists(edt1.Text) then
  begin
    //Exit;
  end;
  ss := MakeFileList(edt1.Text, '.jpg');
  for s in ss do
  begin
    img := TGPImage.Create(s);
    w := img.Width;
    h := img.Height;
    hr := img.HorizontalResolution;
    vr := img.VerticalResolution;
    rw := Round(w / hr * 2.54);
    rh := Round(h / vr * 2.54);
    tp := Format('%s\%s-%dcm×%dcm.jpg', [tpath.GetDirectoryName(s), TPath.GetFileNameWithoutExtension(s), rw, rh]);
    img := nil;
    if RenameFile(s, tp) then
    begin
      mmo1.Lines.Add(Format('更改 %s 为 %s 成功！', [s, tp]));
    end
    else
    begin
      mmo1.Lines.Add(Format('更改 %s 为 %s 失败！', [s, tp]));
    end;
  end;
end;

end.

