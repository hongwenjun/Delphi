unit frmCropMark;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  Vcl.ComCtrls, VGCore_TLB, Vcl.Samples.Spin, Winapi.ActiveX, Vcl.ExtCtrls,
  Vcl.ImgList, Vcl.Imaging.pngimage, System.ImageList;

type
  TfCropMark = class(TTBaseForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    grp1: TGroupBox;
    lbl1: TLabel;
    nudLen: TSpinEdit;
    nudOffset: TSpinEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn_OK: TButton;
    grp2: TGroupBox;
    chk_Chu: TCheckBox;
    nudCu: TSpinEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    chkZxSP: TCheckBox;
    lbl7: TLabel;
    chkZxCZ: TCheckBox;
    chkJdCZ: TCheckBox;
    chkJdSP: TCheckBox;
    lbl8: TLabel;
    ts2: TTabSheet;
    grp3: TGroupBox;
    chkDensitometer: TCheckBox;
    chkCalibrationBar: TCheckBox;
    chkUseOutline: TCheckBox;
    grp4: TGroupBox;
    chkDrawMarks: TCheckBox;
    btnClose: TButton;
    cbbRegType: TComboBox;
    cbbRegPlacement: TComboBox;
    lbl9: TLabel;
    lbl10: TLabel;
    img1: TImage;
    il1: TImageList;
    lbl11: TLabel;
    procedure btn_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cbbRegTypeChange(Sender: TObject);
  private
    { Private declarations }
    procedure DoDrawCropMarks;
    function DrawMark(X, Y: Double; t: LONG): IVGShape;
    procedure SetRegistrationOutline(s: IVGShape);
    procedure UpdateRegType;
    function DrawLine(x1, y1, x2, y2: Double; colr: IVGColor = nil; style: IVGOutlineStyle = nil): IVGShape;
  public
    { Public declarations }
  end;

var
  fCropMark: TfCropMark;

implementation

{$R *.dfm}

procedure TfCropMark.btnCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfCropMark.btn_OKClick(Sender: TObject);
begin
  inherited;
  if FApp.ActiveDocument.SelectableShapes.Count = 0 then
  begin
    MessageBox(self.Handle, '请选中至少一个对象', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;
  TThread.CreateAnonymousThread(
    procedure
    begin
      try
        DoDrawCropMarks;
      except
        on e: Exception do
        begin
          MessageBox(self.Handle, PWideChar(e.Message), '错误', MB_OK + MB_ICONSTOP);
        end;
      end;
    end).Start;
end;

procedure TfCropMark.cbbRegTypeChange(Sender: TObject);
begin
  inherited;
  img1.Picture.Assign(nil);
  il1.GetBitmap(cbbRegType.ItemIndex, img1.Picture.Bitmap);
  img1.Repaint;
end;

procedure TfCropMark.UpdateRegType;
begin

end;

procedure TfCropMark.DoDrawCropMarks;
var
  x, y, cx, cy: Double;
  sx, sy, dx, ty: Double;
  Off, l, Cu: Double;
  N: LONG;
  sr, AllShapes: IVGShapeRange;
  s, s1, tmps: IVGShape;
  clr: IVGColor;
  otl: IVGOutlineStyle;
  v: Variant;
const
  dash: array[0..2] of Integer = (2, 2, 5);
begin
  self.StartEvent(True);
  sr := FApp.CreateShapeRange;
  AllShapes := FApp.CreateShapeRange;
  Cu := nudCu.Value;
  with FApp.ActiveDocument do
  begin
    Unit_ := cdrMillimeter;
    PreserveSelection := False;
    Selection.GetBoundingBox(x, y, cx, cy, False);
  end;
  Off := nudOffset.Value;
  l := nudLen.Value;
  sr.Add(DrawLine(x - off - l, y, x - off, y));
  sr.Add(DrawLine(X - Off - l, y + cy, X - Off, y + cy));
  sr.Add(DrawLine(X + cx + Off, y, X + cx + Off + l, y));
  sr.Add(DrawLine(X + cx + Off, y + cy, X + cx + Off + l, y + cy));
  sr.Add(DrawLine(X, y - Off - l, X, y - Off));
  sr.Add(DrawLine(X + cx, y - Off - l, X + cx, y - Off));
  sr.Add(DrawLine(X, y + Off + l + cy, X, y + Off + cy));
  sr.Add(DrawLine(X + cx, y + Off + l + cy, X + cx, y + Off + cy));
  AllShapes.Add(sr.Group);

  if chk_Chu.Checked then
  begin
    sr.RemoveAll;
    sr.Add(DrawLine(X - Off - l, y + Cu, X - Off, y + Cu));
    sr.Add(DrawLine(X - Off - l, y + cy - Cu, X - Off, y + cy - Cu));
    sr.Add(DrawLine(X + cx + Off, y + Cu, X + cx + Off + l, y + Cu));
    sr.Add(DrawLine(X + cx + Off, y + cy - Cu, X + cx + Off + l, y + cy - Cu));
    sr.Add(DrawLine(X + Cu, y - Off - l, X + Cu, y - Off));
    sr.Add(DrawLine(X + cx - Cu, y - Off - l, X + cx - Cu, y - Off));
    sr.Add(DrawLine(X + Cu, y + Off + l + cy, X + Cu, y + Off + cy));
    sr.Add(DrawLine(X + cx - Cu, y + Off + l + cy, X + cx - Cu, y + Off + cy));
    AllShapes.Add(sr.Group);
  end;
  clr := FApp.CreateCMYKColor(0, 100, 100, 0);
  v := VarArrayCreate([2, 2], varInteger);
  otl := FApp.CreateOutlineStyle(4, PSafeArray(TVarData(v).VArray));
  if chkZxSP.Checked then
  begin
    sr.RemoveAll;
    sr.Add(DrawLine(X - Off - l, y + cy / 2, X, y + cy / 2, clr, otl));
    sr.Add(DrawLine(X + cx, y + cy / 2, X + cx + Off + l, y + cy / 2, clr, otl));
    sr.SetOutlineProperties(0.2, otl);
    AllShapes.Add(sr.Group);
  end;

  if chkZxCZ.Checked then
  begin
    sr.RemoveAll();
    sr.Add(DrawLine(X + cx / 2, y + cy, X + cx / 2, y + cy + Off + l, clr));
    sr.Add(DrawLine(X + cx / 2, y, X + cx / 2, y - Off - l, clr));
    sr.SetOutlineProperties(0.2, otl);
    AllShapes.Add(sr.Group);
  end;

  if chkJdSP.Checked then
  begin
    sr.RemoveAll;
    sr.Add(DrawLine(X - Off - l, y + cy / 2 + Cu, X - Off, y + cy / 2 + Cu));
    sr.Add(DrawLine(X - Off - l, y + cy / 2 - Cu, X - Off, y + cy / 2 - Cu));
    sr.Add(DrawLine(X + cx + Off, y + cy / 2 + Cu, X + cx + Off + l, y + cy / 2 + Cu));
    sr.Add(DrawLine(X + cx + Off, y + cy / 2 - Cu, X + cx + Off + l, y + cy / 2 - Cu));
    AllShapes.Add(sr.Group);
  end;

  if chkJdCZ.Checked then
  begin
    sr.RemoveAll;
    sr.Add(DrawLine(X + cx / 2 + Cu, y + cy + Off, X + cx / 2 + Cu, y + cy + Off + l));
    sr.Add(DrawLine(X + cx / 2 - Cu, y + cy + Off, X + cx / 2 - Cu, y + cy + Off + l));
    sr.Add(DrawLine(X + cx / 2 + Cu, y - Off, X + cx / 2 + Cu, y - Off - l));
    sr.Add(DrawLine(X + cx / 2 - Cu, y - Off, X + cx / 2 - Cu, y - Off - l));
    AllShapes.Add(sr.Group);
  end;

  if chkDensitometer.Checked then
  begin
    sx := 5;
    sy := 5;
    dx := 1;
    sr.RemoveAll;
    s := FApp.ActiveLayer.CreateRectangle2(X + cx - sx - dx - Cu, y - Off - sy, sx, sy, 0, 0, 0, 0);
    s.Fill.UniformColor.CMYKAssign(0, 0, 0, 100);
    with s.Outline do
    begin
      Width := 0.075;
      Color.CMYKAssign(0, 0, 0, 100);
    end;
    sr.Add(s);
    for N := 10 downto 0 do
    begin
      s := s.Duplicate(-sx, 0);
      sr.Add(s);
      s.Fill.UniformColor.CMYKAssign(0, 0, 0, N * 10);
    end;
    AllShapes.Add(sr.Group);
  end;

  if chkCalibrationBar.Checked then
  begin
    sx := 5;
    sy := 5;
    dx := 1;
    ty := 1.5;
    sr.RemoveAll;
    s := FApp.ActiveLayer.CreateRectangle2(X + cx - sx - dx - Cu, y + cy + Off, sx, sy, 0, 0, 0, 0);
    s.Fill.UniformColor.CMYKAssign(100, 0, 0, 0);
    with s.Outline do
    begin
      Width := 0.075;
      Color.CMYKAssign(0, 0, 0, 100);
    end;
    sr.Add(s);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(0, 100, 0, 0);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(0, 0, 100, 0);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(0, 0, 0, 100);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(0, 100, 100, 0);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(100, 0, 100, 0);
    s := s.Duplicate(-sx, 0);
    sr.Add(s);
    s.Fill.UniformColor.CMYKAssign(100, 100, 0, 0);
    s := FApp.ActiveLayer.CreateArtisticText(Cu + X + dx, y + Off + cy + ty - 2, 'C', cdrLanguageNone, cdrCharSetMixed, '', -1, cdrUndefined, cdrUndefined, cdrMixedFontLine, cdrMixedAlignment);
    s.Fill.UniformColor.CMYKAssign(100, 0, 0, 0);
    with s.Text.FontProperties[cdrAllFrames] do
    begin
      Name := 'Courier New';
      Size := 8;
      Style := cdrNormalFontStyle;
      Underline := cdrNoFontLine;
      Uppercase := cdrNormalFontCase;
    end;
    s.SizeWidth := 4.5;
    s.SizeHeight := 4.5;
    s.Text.AlignProperties[cdrAllFrames].Alignment := cdrLeftAlignment;
    sr.Add(s);
    s := s.Duplicate(s.SizeWidth + dx, 0);
    s.Fill.UniformColor.CMYKAssign(0, 100, 0, 0);
    s.Text.Contents[cdrAllFrames] := 'M';
    sr.Add(s);
    s := s.Duplicate(s.SizeWidth + dx, 0);
    s.Fill.UniformColor.CMYKAssign(0, 0, 100, 0);
    s.Text.Contents[cdrAllFrames] := 'Y';
    sr.Add(s);
    s := s.Duplicate(s.SizeWidth + dx, 0);
    s.Fill.UniformColor.CMYKAssign(0, 0, 0, 100);
    s.Text.Contents[cdrAllFrames] := 'K';
    sr.Add(s);

    AllShapes.Add(sr.Group);
    sr.ConvertToCurves;
  end;

  if chkDrawMarks.Checked then
  begin
    sr.RemoveAll;
    s1 := DrawMark(0, 0, cbbRegType.ItemIndex + 1);
    if cbbRegPlacement.ItemIndex = 1 then
    begin
      sr.Add(s1.Duplicate(x - off - l / 2, y - off - l / 2));
      sr.Add(s1.Duplicate(X + cx + Off + l / 2, y - Off - l / 2));
      sr.Add(s1.Duplicate(X - Off - l / 2, y + cy + Off + l / 2));
      s1.Move(X + cx + Off + l / 2, y + cy + Off + l / 2);
    end
    else
    begin
      s := s1.Duplicate(x - off - l / 2, y + cy / 2);
      s.Rotate(90);
      sr.Add(s);
      s := s1.Duplicate(X + cx + Off + l / 2, y + cy / 2);
      s.Rotate(-90);
      sr.Add(s);
      sr.Add(s1.Duplicate(X + cx / 2, y - Off - l / 2));
      s1.Move(X + cx / 2, y + cy + Off + l / 2);
      sr.Add(s1);
    end;
    AllShapes.Add(sr.Group);
  end;

  AllShapes.Group;
  self.EndEvent;

  Close;
end;

function TfCropMark.DrawMark(X: Double; Y: Double; t: Integer): IVGShape;
const
  r: Double = 1.5;
  dash: Double = 2.5;
  ldash: Double = 5;
var
  sr: IVGShapeRange;
  s: IVGShape;
begin
  sr := FApp.CreateShapeRange;
  case t of
    1:
      begin
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 90, False);
        s.Fill.ApplyNoFill;
        SetRegistrationOutline(s);
        sr.Add(s);
        sr.Add(DrawLine(x, y + dash, X, y - dash));
        sr.Add(DrawLine(X - dash, y, X + dash, y));
      end;
    2:
      begin
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 90, False);
        s.Fill.ApplyNoFill;
        SetRegistrationOutline(s);
        sr.Add(s);
        sr.Add(DrawLine(X, y + dash, X, y - dash));
        sr.Add(DrawLine(X - ldash, y, X + ldash, y));
      end;
    3:
      begin
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 180, True);
        s.Fill.UniformColor.RegistrationAssign;
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 270, 0, True);
        s.Fill.UniformColor.RegistrationAssign;
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 90, False);
        s.Fill.ApplyNoFill;
        SetRegistrationOutline(s);
        sr.Add(s);
        sr.Add(DrawLine(x, y + dash, X, y - dash));
        sr.Add(DrawLine(X - dash, y, X + dash, y));
      end;
    4:
      begin
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 0, 90, True);
        s.Fill.UniformColor.CMYKAssign(0, 0, 0, 100);
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 180, True);
        s.Fill.UniformColor.CMYKAssign(100, 0, 0, 0);
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 180, 270, True);
        s.Fill.UniformColor.CMYKAssign(0, 100, 0, 0);
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 270, 0, True);
        s.Fill.UniformColor.CMYKAssign(0, 0, 100, 0);
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 90, False);
        s.Fill.ApplyNoFill;
        SetRegistrationOutline(s);
        sr.Add(s);
        sr.Add(DrawLine(x, y + dash, X, y - dash));
        sr.Add(DrawLine(X - dash, y, X + dash, y));
      end;
    5:
      begin
        s := FApp.ActiveLayer.CreateEllipse2(X, Y, r, 0, 90, 90, False);
        s.Fill.UniformColor.RegistrationAssign;
        s.Outline.type_ := cdrNoOutline;
        sr.Add(s);
        sr.Add(DrawLine(x, y + dash, x, y - dash));
        sr.Add(DrawLine(X - dash, y, X + dash, y));
        sr.Add(DrawLine(X, y + r, X, y - r, FApp.CreateCMYKColor(0, 0, 0, 0)));
        sr.Add(DrawLine(X - r, y, X + r, y, FApp.CreateCMYKColor(0, 0, 0, 0)));
      end;
  end;
  Result := sr.Group;
end;

procedure TfCropMark.SetRegistrationOutline(s: IVGShape);
begin
  with s.Outline do
  begin
    Width := 0.075;
    Color.RegistrationAssign;
  end;
end;

function TfCropMark.DrawLine(x1: Double; y1: Double; x2: Double; y2: Double; colr: IVGColor = nil; style: IVGOutlineStyle = nil): IVGShape;
var
  s: IVGShape;
begin
  s := FApp.ActiveLayer.CreateLineSegment(x1, y1, x2, y2);
  s.Outline.Width := 0.1;
  if colr <> nil then
  begin
    s.Outline.Color := colr;
  end
  else
  begin
    s.Outline.Color.CMYKAssign(0, 0, 0, 100);
  end;
  if style <> nil then
  begin
    s.Outline.Style := style;
  end;
  Result := s;
end;

procedure TfCropMark.FormCreate(Sender: TObject);
begin
  inherited;
  if not StartCheck then
  begin
    Free;
    exit;
  end;
  self.cmdName := '制作裁切标记';
  self.settingsSection := '裁切标记';
  cbbRegTypeChange(nil);
end;

end.

