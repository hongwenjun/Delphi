unit frmToJPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  VGCore_TLB, Vcl.FileCtrl, IniFiles, Vcl.CheckLst, Utils, Winapi.ActiveX, Vcl.ComCtrls,
  ArrayEx;

type
  TDocuments = array of IVGDocument;

type
  TfToJPG = class(TTBaseForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    edt_fileName: TEdit;
    btn_Browser: TButton;
    dlgOpen1: TOpenDialog;
    edt_Location: TEdit;
    lbl2: TLabel;
    btn_Reset: TButton;
    lbl3: TLabel;
    cbb_ColorMode: TComboBox;
    lbl4: TLabel;
    cbb_CompressType: TComboBox;
    lbl5: TLabel;
    cbb_Resolution: TComboBox;
    lbl6: TLabel;
    cbb_Filetype: TComboBox;
    lbl7: TLabel;
    cbb_Scale: TComboBox;
    grp2: TGroupBox;
    rb_CurDocument: TRadioButton;
    rb_CurPage: TRadioButton;
    rb_Page: TRadioButton;
    edt_PagezNum: TEdit;
    rb_Document: TRadioButton;
    rb_Selection: TRadioButton;
    rb_SelectionArea: TRadioButton;
    grp3: TGroupBox;
    chk_PageArea: TCheckBox;
    chk_PageHalf: TCheckBox;
    cbb_PageHalf: TComboBox;
    btn_Export: TButton;
    grp4: TGroupBox;
    chk_OverPrintBlack: TCheckBox;
    chk_Smooth: TCheckBox;
    chk_UseColorProfile: TCheckBox;
    chk_Transparent: TCheckBox;
    chk_MaintainLayers: TCheckBox;
    chk_InculdePagename: TCheckBox;
    chk_FilenameAddNum: TCheckBox;
    chklst_Documents: TCheckListBox;
    lst1: TListBox;
    btn_Exit: TButton;
    btn1: TButton;
    rb_Alone: TRadioButton;
    procedure btn_BrowserClick(Sender: TObject);
    procedure btn_ExportClick(Sender: TObject);
    procedure rb_CurDocumentClick(Sender: TObject);
    procedure btn_ResetClick(Sender: TObject);
    procedure chk_PageAreaClick(Sender: TObject);
    procedure chk_PageHalfClick(Sender: TObject);
    procedure cbb_FiletypeChange(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure lst1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure chk_InculdePagenameClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    outFileName: string;
    ind: Integer;
    firstKTime, secondKTime: TDateTime;
    FStructExportOptions: IVGStructExportOptions;
    FDestDir: string;
  private
    procedure AddMessage(msg: string);
    procedure SetName;
    procedure LoadSettings;
    procedure SaveSettings;
    procedure GetStructExportOptions;
    function GetDestDir: Boolean;
    procedure Export_;
    procedure ExportDocument(doc: IVGDocument);
    procedure ExportPic(page: IVGPage);
    procedure ExportShape(sr: IVGShape);
    procedure GetSize(page: IVGPage; var re: array of Double);
    function CheckFilExists(fileName: string): WordBool;
    function GetPageName(page: IVGPage): string;
    function GetIndex: string;
    function GetExt: string;
    function GetFilter: cdrFilter;
    procedure GetSelctionDocuments(var docs: TDocuments);
    procedure GetPageNumers(var ns: TArrayEx<Integer>);
    procedure GetDocList;
  public
    procedure OnApplicationEvent(const EventName: WideString; var Parameters: PSafeArray); override;
    procedure DocumentOpen(const Doc: IVGDocument; const FileName: WideString); override;
    procedure DocumentNew(const Doc: IVGDocument; FromTemplate: WordBool; const Template: WideString; IncludeGraphics: WordBool); override;
    procedure DocumentClose(const Doc: IVGDocument); override;
    procedure SelectionChange; override;
  end;

var
  ffToJPG: TfToJPG;

implementation

{$R *.dfm}

procedure TfToJPG.btn1Click(Sender: TObject);
begin
  inherited;
  Close;
  Destroy;
end;

procedure TfToJPG.btn_BrowserClick(Sender: TObject);
var
  Dir: string;
begin
  dlgOpen1.InitialDir := edt_Location.Text;
  Dir := edt_Location.Text;
  SelectDirectory('选择保存位置', '', Dir, [sdNewUI, sdNewFolder], self);
  edt_Location.Text := dir;
end;

procedure TfToJPG.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfToJPG.btn_ExportClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Export_
    end).Start;
end;

procedure TfToJPG.btn_ResetClick(Sender: TObject);
begin
  inherited;
  SetName;
end;

procedure TfToJPG.cbb_FiletypeChange(Sender: TObject);
var
  trans, ml: WordBool;
begin
  inherited;
  trans := ((cbb_Filetype.ItemIndex <> 0) and (cbb_Filetype.ItemIndex <> 3));
  chk_Transparent.Enabled := trans;
  if not trans then
  begin
    chk_Transparent.Checked := False;
  end;
  ml := (cbb_Filetype.ItemIndex = 4);
  chk_MaintainLayers.Enabled := ml;
  if not ml then
  begin
    chk_MaintainLayers.Checked := False;
  end;

  chk_OverPrintBlack.Enabled := (FApp.VersionMajor > 14);
end;

procedure TfToJPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SaveSettings;
end;

procedure TfToJPG.FormCreate(Sender: TObject);
begin
  inherited;
  settingsSection := '导出图片';
  AddEventListen;
  settingsIniFile := GetSettingsInifile;
  LoadSettings;
  SetName;
  Self.SelectionChange;

  GetDocList;

  rb_CurDocumentClick(nil);
  chk_PageAreaClick(nil);
  cbb_FiletypeChange(nil);
end;

procedure TfToJPG.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #$1B) and (not btn1.Visible) then
  begin
    if firstKTime = 0 then
    begin
      firstKTime := Now;
      Exit;
    end
    else
    begin
      if secondKTime = 0 then
      begin
        secondKTime := Now;
        if (secondKTime - firstKTime) * 24 * 60 * 60 > 0.5 then
        begin
          firstKTime := 0;
          secondKTime := 0;
        end;
        Exit;
      end
      else
      begin
        if (Now - secondKTime) * 24 * 60 * 60 > 0.5 then
        begin
          firstKTime := 0;
          secondKTime := 0;
          Exit;
        end;
      end;
    end;
    btn1.Visible := True;
  end;
end;

procedure TfToJPG.OnApplicationEvent(const EventName: WideString; var Parameters: PSafeArray);
begin
  AddMessage(EventName);
end;

procedure TfToJPG.DocumentOpen(const Doc: IVGDocument; const FileName: WideString);
begin
  GetDocList;
  SetName;
end;

procedure TfToJPG.DocumentNew(const Doc: IVGDocument; FromTemplate: WordBool; const Template: WideString; IncludeGraphics: WordBool);
begin
  GetDocList;
  SetName;
end;

procedure TfToJPG.DocumentClose(const Doc: IVGDocument);
begin
  inherited;
  GetDocList;
  SetName;
end;

procedure TfToJPG.SelectionChange;
begin
  if FApp.ActiveDocument = nil then
    Exit;
  if FApp.ActiveDocument.Selection.Shapes.Count > 0 then
  begin
    rb_Selection.Enabled := true;
    rb_SelectionArea.Enabled := True;
  end
  else
  begin
    rb_Selection.Enabled := False;
    rb_SelectionArea.Enabled := False;
    if rb_Selection.Checked or rb_SelectionArea.Checked then
      rb_CurDocument.Checked := True;
  end;
  rb_CurDocumentClick(nil);
end;

procedure TfToJPG.AddMessage(msg: string);
begin
  lst1.Items.Add(msg);
  lst1.ItemIndex := lst1.Items.Count - 1;
end;

procedure TfToJPG.SetName;
var
  n: string;
begin
  try
    n := FApp.ActiveDocument.Name;
    if n.ToLower.EndsWith('.cdr') then
    begin
      n := n.Replace('.cdr', '');
    end;
    edt_fileName.Text := n;
  except
    on e: Exception do
    begin
      //DebugUtils.ShowMessage('TfToJPG.SetName  错误：' + e.Message);
    end;
  end;
end;

procedure TfToJPG.LoadSettings;
begin
  edt_Location.Text := settingsIniFile.ReadString(settingsSection, '保存位置', 'D:\');
  cbb_ColorMode.ItemIndex := settingsIniFile.ReadInteger(settingsSection, '颜色模式', 5);
  cbb_CompressType.ItemIndex := settingsIniFile.ReadInteger(settingsSection, '压缩模式', 9);
  cbb_Resolution.Text := settingsIniFile.ReadString(settingsSection, '分辨率', '72');
  cbb_Filetype.ItemIndex := settingsIniFile.ReadInteger(settingsSection, '文件格式', 0);
  cbb_Scale.Text := settingsIniFile.ReadString(settingsSection, '缩放倍数', '1');
  {================}
  chk_OverPrintBlack.Checked := settingsIniFile.ReadBool(settingsSection, '总是叠印黑色', True);
  chk_Smooth.Checked := settingsIniFile.ReadBool(settingsSection, '光滑处理', True);
  chk_UseColorProfile.Checked := settingsIniFile.ReadBool(settingsSection, '使用用户配置', True);
  chk_Transparent.Checked := settingsIniFile.ReadBool(settingsSection, '透明处理', False);
  chk_MaintainLayers.Checked := settingsIniFile.ReadBool(settingsSection, '保持图层', False);
  {================}
end;

procedure TfToJPG.lst1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  n: string;
begin
  inherited;
  n := lst1.Items[Index];
  if n.StartsWith('^') then
  begin
    lst1.Canvas.Font.Color := TColor($0000FF);
    lst1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, n.Substring(1));
  end
  else
  begin
    lst1.Canvas.Font.Color := clWindowText;
    lst1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, n);
  end;
end;

procedure TfToJPG.SaveSettings;
begin
  settingsIniFile.WriteString(settingsSection, '保存位置', edt_Location.Text);
  settingsIniFile.WriteInteger(settingsSection, '颜色模式', cbb_ColorMode.ItemIndex);
  settingsIniFile.WriteInteger(settingsSection, '压缩模式', cbb_CompressType.ItemIndex);
  settingsIniFile.WriteString(settingsSection, '分辨率', cbb_Resolution.Text);
  settingsIniFile.WriteInteger(settingsSection, '文件格式', cbb_Filetype.ItemIndex);
  settingsIniFile.WriteString(settingsSection, '缩放倍数', cbb_Scale.Text);
  {================}
  settingsIniFile.WriteBool(settingsSection, '总是叠印黑色', chk_OverPrintBlack.Checked);
  settingsIniFile.WriteBool(settingsSection, '光滑处理', chk_Smooth.Checked);
  settingsIniFile.WriteBool(settingsSection, '使用用户配置', chk_UseColorProfile.Checked);
  settingsIniFile.WriteBool(settingsSection, '透明处理', chk_Transparent.Checked);
  settingsIniFile.WriteBool(settingsSection, '保持图层', chk_MaintainLayers.Checked);
  {================}
end;

procedure TfToJPG.GetStructExportOptions;
var
  smooth: cdrAntiAliasingType;
  s: Integer;
  sc: Double;
  dt: array[0..1] of Double;
begin
  FStructExportOptions := FApp.CreateStructExportOptions;

  if chk_Smooth.Checked then
  begin
    smooth := cdrNormalAntiAliasing;
  end
  else
  begin
    smooth := cdrNoAntiAliasing;
  end;
  FStructExportOptions.AntiAliasingType := smooth;
  FStructExportOptions.ImageType := cdrImageType(cbb_ColorMode.ItemIndex);
  FStructExportOptions.Compression := cdrCompressionType(cbb_CompressType.ItemIndex);
  FStructExportOptions.UseColorProfile := chk_UseColorProfile.Checked;
    //特别注意，透明度在jpg等无透明的格式的时候不能为True，不然光滑处理将会失效
  FStructExportOptions.Transparent := chk_Transparent.Checked;
  if FApp.VersionMajor > 14 then
  begin
    FStructExportOptions.AlwaysOverprintBlack := chk_OverPrintBlack.Checked;
  end;
  FStructExportOptions.MaintainLayers := chk_MaintainLayers.Checked;

    //AddMessage('测试111');

  s := 72;
  if cbb_Resolution.Text <> '' then
  begin
    TryStrToInt(cbb_Resolution.Text, s);
  end;
  FStructExportOptions.ResolutionX := s;
  FStructExportOptions.ResolutionY := s;

  FApp.ActiveDocument.Unit_ := cdrPixel;
  sc := 1;
  if cbb_Scale.Text <> '' then
  begin
    TryStrToFloat(cbb_Scale.Text, sc);
  end;
  if sc = 0 then
  begin
    AddMessage('缩放数值不能为0,退出');
    Exit;
  end;
  if sc <> 1 then
  begin
    GetSize(Self.FApp.ActivePage, dt);
    FStructExportOptions.SizeX := Trunc(dt[0] * sc * (s / 300.0));
    FStructExportOptions.SizeY := Trunc(dt[1] * sc * (s / 300.0));
  end;
end;

function TfToJPG.GetDestDir: Boolean;
begin
  FDestDir := edt_Location.Text;
  if not DirectoryExists(FDestDir) then
  begin
    AddMessage(Format('保存文件夹 %s 不存在！退出', [FDestDir]));
    Result := False;
    Exit;
  end;
  if not FDestDir.EndsWith('\') then
  begin
    FDestDir := FDestDir + '\';
  end;
  Result := True;
end;

procedure TfToJPG.rb_CurDocumentClick(Sender: TObject);
var
  a: Integer;
begin
  inherited;
  chklst_Documents.Visible := rb_Document.Checked;
  if rb_CurDocument.Checked then
  begin
    if FApp.ActiveDocument.Pages.Count > 1 then
    begin
      edt_PagezNum.Text := Format('1-%d', [FApp.ActiveDocument.Pages.Count]);
    end
    else
    begin
      edt_PagezNum.Text := '1';
    end;
  end;
  if rb_CurPage.Checked then
  begin
    edt_PagezNum.Text := Format('%d', [FApp.ActiveDocument.ActivePage.Index]);
  end;
  grp3.Enabled := (not rb_Selection.Checked);
  edt_fileName.Enabled := (not rb_Document.Checked);
  edt_PagezNum.Enabled := rb_Page.Checked;
end;

procedure TfToJPG.GetSize(page: IVGPage; var re: array of Double);
var
  w, h: Double;
  sr: IVGShapeRange;
  hz: WordBool;
begin
  if rb_Selection.Checked then
  begin
    w := page.SelectableShapes.All.SizeWidth;
    h := page.SelectableShapes.All.SizeHeight;
  end
  else if chk_PageArea.Checked then
  begin
    if chk_PageHalf.Checked then
    begin
      hz := (cbb_PageHalf.ItemIndex = 1);
      if hz then
      begin
        w := page.SizeWidth;
        h := page.SizeHeight / 2;
      end
      else
      begin
        w := page.SizeWidth / 2;
        h := page.SizeHeight;
      end;
    end
    else
    begin
      w := page.SizeWidth;
      h := page.SizeHeight;
    end;
  end
  else if rb_SelectionArea.Checked then
  begin
    sr := FApp.ActiveSelectionRange;
    w := sr.SizeWidth;
    h := sr.SizeHeight;
  end
  else
  begin
    w := page.Shapes.All.SizeWidth;
    h := page.Shapes.All.SizeHeight;
  end;
  re[0] := w;
  re[1] := h;
end;

function TfToJPG.CheckFilExists(fileName: string): WordBool;
begin
  if FileExists(fileName) then
  begin
    if MessageDlg('文件已存在，是否替换？', mtInformation, mbYesNo, 0) = mrNo then
    begin
      AddMessage('^文件存在，跳过。。');
      Result := True;
    end;
  end;
  Result := False;
end;

procedure TfToJPG.chk_InculdePagenameClick(Sender: TObject);
begin
  inherited;
  chk_FilenameAddNum.Enabled := chk_InculdePagename.Checked;
  if not chk_InculdePagename.Checked then
    chk_FilenameAddNum.Checked := True;
end;

procedure TfToJPG.chk_PageAreaClick(Sender: TObject);
begin
  inherited;
  chk_PageHalf.Enabled := chk_PageArea.Checked;
  cbb_PageHalf.Enabled := (chk_PageHalf.Checked and chk_PageArea.Checked);
end;

procedure TfToJPG.chk_PageHalfClick(Sender: TObject);
begin
  inherited;
  cbb_PageHalf.Enabled := chk_PageHalf.Checked;
end;

function TfToJPG.GetPageName(page: IVGPage): string;
begin
  if chk_InculdePagename.Checked then
  begin
    Result := '-' + page.Name;
    Exit;
  end;
  Result := '';
end;

function TfToJPG.GetIndex;
begin
  if chk_FilenameAddNum.Checked then
  begin
    Inc(ind);
    Result := '-' + inttostr(ind);
    exit;
  end;
  Result := '';
end;

function TfToJPG.GetExt;
begin
  case cbb_Filetype.ItemIndex of
    0:
      result := '.jpg';
    1:
      result := '.gif';
    2:
      result := '.png';
    3:
      result := '.bmp';
    4:
      result := '.psd';
  end;
end;

function TfToJPG.GetFilter;
begin
  case cbb_Filetype.ItemIndex of
    0:
      begin
        result := cdrJPEG;
        Exit;
      end;
    1:
      begin
        result := cdrGIF;
        Exit;
      end;
    2:
      begin
        result := cdrPNG;
        Exit;
      end;
    3:
      begin
        result := cdrBMP;
        Exit;
      end;
    4:
      begin
        result := cdrPSD;
        Exit;
      end;
  end;
  Result := cdrJPEG;
end;

procedure TfToJPG.GetSelctionDocuments(var docs: TDocuments);
var
  ds: TDocuments;
  i, j: Integer;
  n: string;
begin
  for I := 0 to chklst_Documents.Items.Count do
  begin
    if chklst_Documents.Checked[i] then
    begin
      n := chklst_Documents.Items.Strings[I];
      for j := 0 to FApp.Documents.Count do
      begin
        if n = FApp.Documents[j].Name then
        begin
          SetLength(ds, Length(ds) + 1);
          ds[Length(ds) - 1] := FApp.Documents[j];
        end;
      end;
    end;
  end;
  docs := ds;
end;

procedure TfToJPG.GetPageNumers(var ns: TArrayEx<Integer>);
var
  nu: string;
  p: Integer;
  strPages, strSubPages: TArray<string>;
  intStart, intEnd: Integer;
  I, J: Integer;
begin
  nu := edt_PagezNum.Text;
  if nu = '' then
    Exit;
  if nu.IndexOf(',') = -1 then
  begin
    if nu.IndexOf('-') = -1 then
    begin
      TryStrToInt(nu, p);
      if p > FApp.ActiveDocument.Pages.Count then
      begin
        AddMessage('^页码超过了文档的最大页，请重新设置！');
        edt_PagezNum.Text := '';
        edt_PagezNum.SetFocus;
        Exit;
      end;

    end
    else
    begin
      strPages := nu.Split(['-']);
      TryStrToInt(StrPages[0], intStart);
      TryStrToInt(strPages[1], intEnd);
      for I := intStart to intEnd do
      begin
        ns.Insert(ns.Len, I);
      end;
    end;
  end
  else
  begin
    strPages := nu.Split([',']);
    for I := 0 to Length(strPages) - 1 do
    begin
      if strPages[I].IndexOf('-') = -1 then
      begin
        TryStrToInt(strPages[I], p);
        ns.Insert(ns.Len, p);
      end
      else
      begin
        strSubPages := strPages[I].Split(['-']);
        TryStrToInt(strSubPages[0], intStart);
        TryStrToInt(strSubPages[1], intEnd);
        for J := intStart to intEnd do
        begin
          ns.Insert(ns.Len, J);
        end;
      end;
    end;
  end;
end;

procedure TfToJPG.GetDocList;
var
  I: Integer;
begin
  chklst_Documents.Items.Clear;
  for I := 1 to FApp.Documents.Count do
  begin
    chklst_Documents.Items.Add(FApp.Documents[I].Name);
  end;
end;

procedure TfToJPG.Export_;
var
  d: IVGDocument;
  ds: TDocuments;
  ns: TArrayEx<Integer>;
  I: Integer;
label
  done;
begin
  try
    ind := 0;
    grp1.Enabled := False;
    EnableMenuItem(GetSystemMenu(self.Handle, False), SC_CLOSE, MF_DISABLED);
    AddMessage('^开始处理');
    outFileName := edt_fileName.Text;
    if rb_CurDocument.Checked then
    begin
      AddMessage('导出当前文档');
      ExportDocument(FApp.ActiveDocument);
    end
    else if rb_Document.Checked then
    begin
      AddMessage('导出文档');
      GetSelctionDocuments(ds);
      for d in ds do
      begin
        AddMessage(Format('  导出文档%s', [d.Name]));
        ExportDocument(d);
      end;
    end
    else if rb_CurPage.Checked then
    begin
      AddMessage('导出当前页面');
      ExportPic(FApp.ActiveDocument.ActivePage);
    end
    else if rb_Page.Checked then
    begin
      AddMessage('导出页');
      ns := [];
      GetPageNumers(ns);
      if ns.Len = 0 then
      begin
        AddMessage('^无效页面范围，请重新输入');
        goto done;
      end
      else
      begin
        for I := 0 to ns.Len - 1 do
        begin
          AddMessage(Format('处理页：%d', [ns[I]]));
          if ns[I] > FApp.ActiveDocument.Pages.Count then
          begin
            AddMessage('^页码超出范围跳过');
            Continue;
          end;
          ExportPic(FApp.ActiveDocument.Pages.Item[ns[I]]);
        end;
      end;
    end
    else if rb_Selection.Checked then
    begin
      AddMessage('导出选中对象');
      ExportPic(FApp.ActiveDocument.ActivePage);
    end
    else if rb_SelectionArea.Checked then
    begin
      AddMessage('导出选中范围');
      ExportPic(FApp.ActiveDocument.ActivePage);
    end
    else if rb_Alone.Checked then
    begin
      AddMessage('选中对象分别导出');
      ExportPic(FApp.ActiveDocument.ActivePage);
    end;
done:
    //Application.ProcessMessages;
    AddMessage('^处理完成');
    EnableMenuItem(GetSystemMenu(self.Handle, False), SC_CLOSE, MF_ENABLED);
    grp1.Enabled := True;
  except
    on E: Exception do
    begin
      debugUtils.ShowMessage('Export_' + e.ToString);
    end;
  end;

end;

procedure TfToJPG.ExportDocument(doc: IVGDocument);
var
  i: Integer;
  p: IVGPage;
begin
  AddMessage('^开始处理文档:' + doc.Name);
  doc.Activate;
  SetName;
  for I := 1 to doc.Pages.Count do
  begin
    p := doc.Pages[I];
    AddMessage(Format('  处理页面:%s', [p.Name]));
    ExportPic(p);
  end;
  AddMessage('^文档处理结束:' + doc.Name);
end;

procedure TfToJPG.ExportPic(page: IVGPage);
var
  namen: string;
  FileName: string;
  ef: ICorelExportFilter;
  rct: IVGRect;
  sr: IVGShapeRange;
  hz: WordBool;
  i: Integer;
  s: IVGShape;
begin
  try
    page.Activate;
    if page.Shapes.Count = 0 then
    begin
      AddMessage(Format('页面 %s 无对象，跳过!', [page.Name]));
      Exit;
    end;
    if rb_Document.Checked then
    begin
      namen := FApp.ActiveDocument.Name;
    end
    else
    begin
      namen := outFileName;
    end;

    GetStructExportOptions;

    if not GetDestDir then
    begin
      exit;
    end;

    //page.Activate;
    if rb_Selection.Checked then
    begin
      FileName := FDestDir + namen + GetPageName(page) + GetIndex + GetExt;
      if CheckFilExists(FileName) then
      begin
        exit;
      end;
      //page.Activate;
      ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrSelection, FStructExportOptions, nil);
      ef.Finish;
      exit;
    end
    else if rb_SelectionArea.Checked then //
    begin
      rct := FApp.CreateRect(0, 0, 0, 0);
      sr := FApp.ActiveSelectionRange;
      rct.x := sr.LeftX;
      rct.y := sr.BottomY;
      rct.Width := sr.SizeWidth;
      rct.Height := sr.SizeHeight;
      FStructExportOptions._Set_ExportArea(rct);
      FileName := FDestDir + namen + GetPageName(page) + GetIndex + GetExt;
      if CheckFilExists(FileName) then
      begin
        exit;
      end;
      //page.Activate;
      ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrCurrentPage, FStructExportOptions, nil);
      ef.Finish;
      exit;
    end
    else if chk_PageArea.Checked then
    begin
      rct := FApp.CreateRect(0, 0, 0, 0);
      if chk_PageHalf.Checked then
      begin
        hz := (cbb_PageHalf.ItemIndex = 1);
        rct.x := page.LeftX;
        rct.y := page.BottomY;
        if hz then
        begin
          rct.Width := page.SizeWidth;
          rct.Height := page.SizeHeight / 2;
          rct.y := page.SizeHeight / 2;
        end
        else
        begin
          rct.Width := page.SizeWidth / 2;
          rct.Height := page.SizeHeight;
        end;
        FStructExportOptions._Set_ExportArea(rct);
        FileName := FDestDir + namen + GetPageName(page) + '1前' + GetIndex + GetExt;
        if CheckFilExists(FileName) then
        begin
          exit;
        end;
        page.Activate;
        ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrCurrentPage, FStructExportOptions, nil);
        ef.Finish;
        if hz then
        begin
          rct.y := page.BottomY;
        end
        else
        begin
          rct.x := page.SizeWidth / 2;
        end;
        FStructExportOptions._Set_ExportArea(rct);
        FileName := FDestDir + namen + GetPageName(page) + '2后' + GetIndex + GetExt;
        if CheckFilExists(FileName) then
        begin
          Exit;
        end;
        //page.Activate;
        ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrCurrentPage, FStructExportOptions, nil);
        ef.Finish;
        Exit;
      end
      else
      begin
        rct := FApp.CreateRect(page.LeftX, page.BottomY, page.SizeWidth, page.SizeHeight);
        FStructExportOptions._Set_ExportArea(rct);
      end;
    end
    else if rb_Alone.Checked then
    begin
      sr := FApp.ActiveDocument.SelectionRange;
      for I := 1 to sr.Count do
      begin
        s := sr.Shapes[I];
        ExportShape(s);
      end;
      Exit;
    end;
    FileName := FDestDir + namen + GetPageName(page) + GetIndex + GetExt;
    if CheckFilExists(FileName) then
    begin
      Exit;
    end;
    //page.Activate;
    ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrCurrentPage, FStructExportOptions, nil);
    ef.Finish;
  except
    on E: Exception do
    begin
      debugUtils.ShowMessage('ExportPic ++++ ' + e.Message);
    end;
  end;
end;

procedure TfToJPG.ExportShape(sr: IVGShape);
var
  namen: string;
  FileName: string;
  ef: ICorelExportFilter;
begin
  namen := outFileName;
  if not GetDestDir then
  begin
    Exit;
  end;

  FApp.ActiveDocument.ClearSelection;
  sr.AddToSelection;

  FileName := FDestDir + namen + GetPageName(FApp.ActivePage) + '-分别导出' + GetIndex + GetExt;
  if CheckFilExists(FileName) then
  begin
    exit;
  end;
  ef := FApp.ActiveDocument.ExportEx(FileName, GetFilter, cdrSelection, FStructExportOptions, nil);
  ef.Finish;
  exit;
end;

end.

