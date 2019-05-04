unit frmOnekeyPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  System.IniFiles, VGCore_TLB, Utils, System.IOUtils, Winapi.ShellAPI;

type
  TfOnekeyPS = class(TTBaseForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    savei: TIniFile;
    d11, d12, d21, d22, tx, ty: Double;
    CPtemp: string;
    BitmapA: IVGShapeRange;
    function getRandomString: string;
    procedure EditEnd;
  public
    { Public declarations }
  end;

var
  fOnekeyPS: TfOnekeyPS;

implementation

{$R *.dfm}

procedure TfOnekeyPS.btn1Click(Sender: TObject);
var
  PSPath: string;
  b: IVGBitmap;
  efl: ExportFilter;
  dtA, dtB: TDateTime;
label
  enda;
begin
  inherited;
  if FApp.ActiveDocument.Selection.Shapes.Count = 0 then
  begin
    MessageBox(self.Handle, '请选择一个对象！', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;
  if FApp.ActiveDocument.Selection.Shapes.Count > 1 then
  begin
    MessageBox(self.Handle, '只能选择一个对象！', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;
  if FApp.ActiveShape.type_ <> cdrBitmapShape then
  begin
    MessageBox(self.Handle, '请选择一个位图！', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  PSPath := savei.ReadString('一键PS', 'PS路径', 'Photoshop.exe');

  Self.cmdName := '一键PS';
  StartEvent(True);
  BitmapA := FApp.ActiveDocument.SelectionRange;
  FApp.ActiveShape.GetMatrix(d11, d12, d21, d22, tx, ty);
  FApp.ActiveShape.ClearTransformations;

  b := FApp.ActiveShape.Bitmap;
  CPtemp := TPath.GetTempPath + 'tisn2016' + getRandomString + '.psd';
  try
    begin
      efl := FApp.ActiveDocument.ExportBitmap(CPtemp, cdrPSD, cdrSelection, b.Mode, b.SizeWidth, b.SizeHeight, b.ResolutionX, b.ResolutionY, cdrNormalAntiAliasing, False, True, True, False, cdrCompressionNone, nil, nil);
      efl.Finish;
      FApp.ActiveShape.SetMatrix(d11, d12, d21, d22, tx, ty);
      dtA := TFile.GetLastWriteTime(CPtemp);
      Self.Hide;
      ShellExecute(0, 'open', PWideChar(PSPath), PWideChar(CPtemp), '', SW_SHOWNORMAL);
      if MessageBox(Handle, '编辑完成单击确认，放弃编辑单击取消', '提示', MB_OKCANCEL + MB_ICONINFORMATION) = IDOK then
      begin
        dtB := TFile.GetLastWriteTime(CPtemp);
        if dtB > dtA then
        begin
          EditEnd;
        end;
      end;
      Self.Show;
    end;
  except
    on e: Exception do
    begin
      DebugUtils.ShowMessage(e.Message);
    end;
  end;

enda:
  Self.EndEvent;
  SetForegroundWindow(FApp.AppWindow.Handle);
end;

procedure TfOnekeyPS.FormCreate(Sender: TObject);
begin
  inherited;
  savei := GetSettingsInifile;
  self.Left := Screen.WorkAreaWidth - self.Width;
  Self.Top := Screen.WorkAreaHeight - self.Height;
end;

function TfOnekeyPS.getRandomString;
var
  sourceStr, str: string;
  i: Integer;
begin
  SourceStr := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  randomize;
  for i := 1 to 8 do
    str := str + sourcestr[Random(62) + 1];
  Result := str;
end;

procedure TfOnekeyPS.EditEnd;
var
  impflt: ImportFilter;
  impopt: IVGStructImportOptions;
begin
  impopt := FApp.CreateStructImportOptions;
  impopt.Mode := cdrImportFull;
  impopt.MaintainLayers := true;
  impflt := FApp.ActiveLayer.ImportEx(CPtemp, cdrPSD, impopt);
  impflt.Finish;
  FApp.ActiveShape.SetMatrix(d11, d12, d21, d22, tx, ty);
  FApp.ActiveShape.OrderToFront;
  BitmapA.Delete;
  DeleteFile(CPtemp);
end;

end.

