unit frmConvertTo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.ComCtrls,
  Vcl.StdCtrls, VGCore_TLB, Utils, System.IOUtils, Winapi.ShlObj, frmCheck;

type
  TfConvertTo = class(TTBaseForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    btn1: TButton;
    rb1: TRadioButton;
    rb2: TRadioButton;
    btnTextOL: TButton;
    ts3: TTabSheet;
    btn_ToCMYK: TButton;
    chk_CFillOutLine: TCheckBox;
    chk_CBMP: TCheckBox;
    btn_OneKey: TButton;
    btn_CompressPic: TButton;
    btnBadPic: TButton;
    btnEffect2BMP: TButton;
    btnOL2OBJ: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn_ToCMYKClick(Sender: TObject);
    procedure btn_OneKeyClick(Sender: TObject);
    procedure btn_CompressPicClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTextOLClick(Sender: TObject);
    procedure btnBadPicClick(Sender: TObject);
    procedure btnEffect2BMPClick(Sender: TObject);
    procedure btnOL2OBJClick(Sender: TObject);
  private
    FChangeCount: Integer;
    procedure AddCMessage(msg: string);
  public
    procedure ConvertToCurves; overload;
    procedure ConvertToCurves(doc: IVGDocument); overload;
    procedure ConvertToCurves(page: IVGPage); overload;
    procedure ConvertToCurves(ss: IVGShapes); overload;
    procedure FillOutlineToCMYK; overload;
    procedure FillOutlineToCMYK(doc: IVGDocument); overload;
    procedure FillOutlineToCMYK(page: IVGPage); overload;
    procedure FillOutlineToCMYK(ss: IVGShapes); overload;
    procedure CompressPic; overload;
    procedure CompressPic(doc: IVGDocument); overload;
    procedure CompressPic(page: IVGPage); overload;
    procedure CompressPic(ss: IVGShapes); overload;
    procedure TextOL; overload;
    procedure TextOL(doc: IVGDocument); overload;
    procedure TextOL(page: IVGPage); overload;
    procedure TextOL(ss: IVGShapes); overload;
    property ChangeCount: Integer read FChangeCount;
    /// <summary>
    /// 修复烂图
    /// </summary>
    procedure FixBadPic; overload;
    /// <summary>
    /// 修复烂图
    /// </summary>
    /// <param name="doc">文档</param>
    procedure FixBadPic(doc: IVGDocument); overload;
    procedure FixBadPic(page: IVGPage); overload;
    procedure FixBadPic(ss: IVGShapes); overload;
    procedure SPDropShadow; overload;
    procedure SPDropShadow(doc: IVGDocument); overload;
    procedure SPDropShadow(page: IVGPage); overload;
    procedure SPDropShadow(ss: IVGShapes); overload;
    procedure Effect2BMP; overload;
    procedure Effect2BMP(doc: IVGDocument); overload;
    procedure Effect2BMP(page: IVGPage); overload;
    procedure Effect2BMP(ss: IVGShapes); overload;
    procedure OL2OBJ; overload;
    procedure OL2OBJ(doc: IVGDocument); overload;
    procedure OL2OBJ(page: IVGPage); overload;
    procedure OL2OBJ(ss: IVGShapes); overload;
  end;

var
  fConvertTo: TfConvertTo;

implementation

{$R *.dfm}

procedure TfConvertTo.AddCMessage(msg: string);
begin
  ffCheck.lst1.Items.Add(msg);
end;

procedure TfConvertTo.ConvertToCurves;
var
  I: Integer;
begin
  self.cmdName := '批量转曲';
  StartEvent(True);
  if rb1.Checked then
  begin
    ConvertToCurves(FApp.ActivePage);
  end
  else
  begin
    ConvertToCurves(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.ConvertToCurves(doc: IVGDocument);
var
  I: Integer;
begin
  doc.Activate;
  for I := 1 to doc.Pages.Count do
  begin
    ConvertToCurves(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.ConvertToCurves(page: IVGPage);
begin
  page.Activate;
  ConvertToCurves(page.Shapes);
end;

procedure TfConvertTo.ConvertToCurves(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  I: Integer;
begin
  ss1 := ss.FindShapes('', cdrTextShape, True, '');
  for I := 1 to ss1.Count do
  begin
    ss1[I].ConvertToCurves;
    AddCMessage(Format('★文本已转曲ID：%d', [ss1[I].StaticID]));
    Inc(Self.FChangeCount);
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    ConvertToCurves(ss1[I].PowerClip.Shapes);
  end;
end;

procedure TfConvertTo.btn1Click(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      ConvertToCurves;
      MessageBox(Handle, PChar(Format('所有文字已转曲，共转换%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btnBadPicClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      FixBadPic;
      MessageBox(Handle, PChar(Format('所有图片已处理，共处理%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btnEffect2BMPClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      Self.SPDropShadow;
      Self.Effect2BMP;
      MessageBox(Handle, PChar(Format('所有特效已处理，共处理%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btnOL2OBJClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      OL2OBJ;
      MessageBox(Handle, PChar(Format('所有轮廓已转对象，共处理%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btnTextOLClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      TextOL;
      MessageBox(Handle, PChar(Format('所有文字已处理，共处理%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btn_CompressPicClick(Sender: TObject);
begin
  inherited;
  TThread.CreateAnonymousThread(
    procedure
    begin
      Self.FChangeCount := 0;
      ffCheck.lst1.Clear;
      CompressPic;
      MessageBox(Handle, PChar(Format('所有图片已处理，共处理%d个对象', [Self.FChangeCount])), '提示', MB_OK + MB_ICONINFORMATION);
    end).Start;
end;

procedure TfConvertTo.btn_OneKeyClick(Sender: TObject);
var
  s: string;
  sa: IVGStructSaveAsOptions;
begin
  inherited;
  s := InputBox('请输入', '请输入文件名：', FApp.ActiveDocument.Name);
  if not s.ToLower.EndsWith('.cdr') then
  begin
    s := s + '.cdr';
  end;
  rb2.Checked := True;
  ConvertToCurves;
  FillOutlineToCMYK;
  sa := FApp.CreateStructSaveAsOptions;
  sa.Version := cdrVersion14;
  FApp.ActiveDocument.SaveAs(GetFolderPath(CSIDL_DESKTOP) + '\' + s, sa);
end;

procedure TfConvertTo.btn_ToCMYKClick(Sender: TObject);
begin
  inherited;
  if chk_CFillOutLine.Checked then
  begin
    FillOutlineToCMYK;
  end;
end;

procedure TfConvertTo.FillOutlineToCMYK;
var
  I: Integer;
begin
  Self.cmdName := '转换填充轮廓为CMYK';
  StartEvent(True);
  if rb1.Checked then
  begin
    FillOutlineToCMYK(FApp.ActivePage);
  end
  else
  begin
    for I := 1 to FApp.ActiveDocument.Pages.Count do
    begin
      FillOutlineToCMYK(FApp.ActiveDocument.Pages[I]);
    end;
  end;
  EndEvent;
end;

procedure TfConvertTo.FillOutlineToCMYK(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    FillOutlineToCMYK(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.FillOutlineToCMYK(page: IVGPage);
begin
  page.Activate;
  FillOutlineToCMYK(page.Shapes);
end;

procedure TfConvertTo.FillOutlineToCMYK(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I, I1: Integer;
  ff: IVGFountainFill;
begin
  for I := 1 to ss.Count do
  begin
    s := ss[I];
    if s.type_ = cdrGroupShape then
    begin
      FillOutlineToCMYK(s.Shapes);
      Continue;
    end;
    if s.Fill.type_ = cdrUniformFill then
    begin
      if s.Fill.UniformColor.type_ = cdrColorRGB then
      begin
        s.Fill.UniformColor.ConvertToCMYK;
      end;
    end
    else if s.Fill.type_ = cdrFountainFill then
    begin
      ff := s.Fill.Fountain;
      for I1 := 0 to ff.Colors.Count - 1 do
      begin
        if ff.Colors[I1].Color.type_ = cdrColorRGB then
        begin
          ff.Colors[I1].Color.ConvertToCMYK;
        end;
      end;
    end;
    if s.type_ = cdrOutline then
    begin
      if s.Outline.Color.type_ = cdrColorRGB then
      begin
        s.Outline.Color.ConvertToCMYK;
      end;
    end;
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    FillOutlineToCMYK(ss1[I].PowerClip.Shapes);
  end;
end;

procedure TfConvertTo.FormCreate(Sender: TObject);
begin
  inherited;
  pgc1.TabIndex := 0;
  if not Assigned(ffCheck) then
    ffCheck := TfCheck.Create(Self, FApp);
end;

procedure TfConvertTo.CompressPic;
begin
  self.cmdName := '批量压缩图片';
  StartEvent(True);
  if rb1.Checked then
  begin
    CompressPic(FApp.ActivePage);
  end
  else
  begin
    CompressPic(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.CompressPic(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    CompressPic(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.CompressPic(page: IVGPage);
begin
  page.Activate;
  CompressPic(page.Shapes);
end;

procedure TfConvertTo.CompressPic(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I: Integer;
  b: IVGBitmap;
begin
  ss1 := ss.FindShapes('', cdrBitmapShape, True, '');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    b := s.Bitmap;
    if (b.ResolutionX <= 300) and (b.ResolutionY <= 300) then
    begin
      Continue;
    end;                                                                                   
    AddCMessage(Format('★图片已压缩ID：%d', [s.StaticID]));
    s.ConvertToBitmapEx(b.Mode, False, True, 300, cdrNormalAntiAliasing, True, True, 100);
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    s.PowerClip.EnterEditMode;
    CompressPic(FApp.ActiveLayer.Shapes);
    s.PowerClip.LeaveEditMode;
  end;
end;

procedure TfConvertTo.TextOL;
begin
  self.cmdName := '文字去尖突';
  StartEvent(True);
  if rb1.Checked then
  begin
    TextOL(FApp.ActivePage);
  end
  else
  begin
    TextOL(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.TextOL(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    TextOL(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.TextOL(page: IVGPage);
begin
  page.Activate;
  TextOL(page.Shapes);
end;

procedure TfConvertTo.TextOL(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I: Integer;
  b: IVGBitmap;
begin
  ss1 := ss.FindShapes('', cdrTextShape, True, '');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    if s.Outline.type_ = cdrOutline then
    begin
      s.Outline.SetProperties(-1, nil, nil, nil, nil, cdrUndefined, cdrUndefined, cdrOutlineUndefinedLineCaps, cdrOutlineRoundLineJoin);
      AddCMessage(Format('★文本已去尖突ID：%d', [s.StaticID]));    
      Inc(Self.FChangeCount);
    end;
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    s.PowerClip.EnterEditMode;
    TextOL(FApp.ActiveLayer.Shapes);
    s.PowerClip.LeaveEditMode;
  end;
end;

procedure TfConvertTo.FixBadPic;
begin
  Self.cmdName := '防烂图';
  StartEvent(True);
  if rb1.Checked then
  begin
    FixBadPic(FApp.ActivePage);
  end
  else
  begin
    FixBadPic(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.FixBadPic(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    FixBadPic(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.FixBadPic(page: IVGPage);
begin
  page.Activate;
  FixBadPic(page.Shapes);
end;

procedure TfConvertTo.FixBadPic(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I: Integer;
  b: IVGBitmap;
begin
  ss1 := ss.FindShapes('', cdrBitmapShape, True, '');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    if s.RotationAngle <> 0 then
    begin
      Inc(Self.FChangeCount);
      s.ConvertToBitmapEx(cdrCMYKColorImage, False, True, s.Bitmap.ResolutionX, cdrNormalAntiAliasing, True);
    end;
  end;
end;

procedure TfConvertTo.SPDropShadow;
begin
  Self.cmdName := '分离下落阴影';
  StartEvent(True);
  if rb1.Checked then
  begin
    SPDropShadow(FApp.ActivePage);
  end
  else
  begin
    SPDropShadow(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.SPDropShadow(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    SPDropShadow(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.SPDropShadow(page: IVGPage);
begin
  page.Activate;
  SPDropShadow(page.Shapes);
end;

procedure TfConvertTo.SPDropShadow(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I, J: Integer;
  ef: IVGEffect;
begin
  for I := 1 to ss.Count do
  begin
    s := ss[I];
    if s.type_ = cdrGroupShape then
    begin
      SPDropShadow(s.Shapes);
      Continue;
    end;
    for J := 1 to s.Effects.Count do
    begin
      ef := s.Effects[J];
      if ef.type_ = cdrDropShadow then
      begin                        
        AddCMessage(Format('★下落阴影已分离ID：%d', [s.StaticID]));
        ef.Separate;
        Int(Self.ChangeCount);
        break;
      end;
    end;
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    s.PowerClip.EnterEditMode;
    SPDropShadow(FApp.ActiveLayer.Shapes);
    s.PowerClip.LeaveEditMode;
  end;
end;

procedure TfConvertTo.Effect2BMP;
begin
  Self.cmdName := '特效转位图';
  StartEvent(True);
  if rb1.Checked then
  begin
    Effect2BMP(FApp.ActivePage);
  end
  else
  begin
    Effect2BMP(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.Effect2BMP(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    Effect2BMP(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.Effect2BMP(page: IVGPage);
begin
  page.Activate;
  Effect2BMP(page.Shapes);
end;

procedure TfConvertTo.Effect2BMP(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I, J: Integer;
  ef: IVGEffect;
begin
  ss.FindShapes('', cdrNoShape, True, '');
  for I := 1 to ss.Count do
  begin
    s := ss[I];
    if s.type_ = cdrNoShape then
      Continue;
    if s.type_ = cdrGroupShape then
    begin
      Effect2BMP(s.Shapes);
      Continue;
    end;
    for J := 1 to s.Effects.Count do
    begin
      ef := s.Effects[J];
      case ef.type_ of
        cdrLens:
          begin   
            AddCMessage(Format('★滤镜已转位图ID：%d', [s.StaticID]));
            s.ConvertToBitmapEx(cdrCMYKColorImage);
            Int(Self.ChangeCount);
          end;
        cdrDistortion:
          begin            
            AddCMessage(Format('★变形已转曲ID：%d', [s.StaticID]));
            s.ConvertToCurves;
            Int(Self.ChangeCount);
          end;
      end;
    end;   
    if not Assigned(s) then
      Continue;
    case s.type_ of
      cdrBevelGroupShape:
        begin                                
          AddCMessage(Format('★调和已转位图ID：%d', [s.StaticID]));
          s.ConvertToBitmapEx(cdrCMYKColorImage);
          Int(Self.ChangeCount);
        end;
      cdrOLEObjectShape:
        begin                                      
          AddCMessage(Format('★OLE对象已转位图ID：%d', [s.StaticID]));
          s.ConvertToBitmapEx(cdrCMYKColorImage);
          Int(Self.ChangeCount);
        end;
      cdrExtrudeGroupShape:
        begin                                    
          AddCMessage(Format('★立体对象已转位图ID：%d', [s.StaticID]));
          s.ConvertToBitmapEx(cdrCMYKColorImage);
          Int(Self.ChangeCount);
        end;
    end;
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    s.PowerClip.EnterEditMode;
    Effect2BMP(FApp.ActiveLayer.Shapes);
    s.PowerClip.LeaveEditMode;
  end;
end;

procedure TfConvertTo.OL2OBJ;
begin
  Self.cmdName := '轮廓转对象';
  StartEvent(True);
  if rb1.Checked then
  begin
    OL2OBJ(FApp.ActivePage);
  end
  else
  begin
    OL2OBJ(FApp.ActiveDocument);
  end;
  EndEvent;
end;

procedure TfConvertTo.OL2OBJ(doc: IVGDocument);
var
  I: Integer;
begin
  for I := 1 to doc.Pages.Count do
  begin
    OL2OBJ(doc.Pages[I]);
  end;
end;

procedure TfConvertTo.OL2OBJ(page: IVGPage);
begin
  page.Activate;
  OL2OBJ(page.Shapes);
end;

procedure TfConvertTo.OL2OBJ(ss: IVGShapes);
var
  ss1: IVGShapeRange;
  s: IVGShape;
  I, J: Integer;
  ef: IVGEffect;
begin
  for I := 1 to ss.Count do
  begin
    s := ss[I];
    if s.type_ = cdrGroupShape then
    begin
      OL2OBJ(s.Shapes);
      Continue;
    end;
    if s.Outline.type_ = cdrOutline then
    begin                         
      AddCMessage(Format('★轮廓已转为对象ID：%d', [s.StaticID]));
      s.Outline.ConvertToObject;
      Int(Self.ChangeCount);
    end;
  end;
  ss1 := ss.FindShapes('', cdrNoShape, True, '@com.PowerClip <> null');
  for I := 1 to ss1.Count do
  begin
    s := ss1[I];
    s.PowerClip.EnterEditMode;
    OL2OBJ(FApp.ActiveLayer.Shapes);
    s.PowerClip.LeaveEditMode;
  end;
end;

end.

