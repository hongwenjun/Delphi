unit frmSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  VGCore_TLB;

type
  TfSelect = class(TTBaseForm)
    chk_Size: TCheckBox;
    chk_Type: TCheckBox;
    chk_SLines: TCheckBox;
    chk_Color: TCheckBox;
    chk_Font: TCheckBox;
    chk_FontSize: TCheckBox;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelect: TfSelect;

implementation

{$R *.dfm}

procedure TfSelect.btn1Click(Sender: TObject);
var
  RmbC, RmbCL: IVGColor;
  S, s1, s2: Shape;
  sr: ShapeRange;
  I: Integer;
  STT, Stt1: LongInt;
  CT, CN, CT1, CN1: Double;
  STy: cdrShapeType;
  FNT: string;
  Fsize: Single;
begin
  inherited;
  RmbC := FApp.CreateColor('');
  RmbCL := FApp.CreateColor('');
  FApp.ActiveDocument.ReferencePoint := cdrTopLeft;
  FApp.ActiveDocument.Unit_ := cdrMillimeter;
  if FApp.ActiveDocument.Selection.Shapes.Count = 1 then
  begin
    S := FApp.ActiveSelection;
    S.GetSize(CT, CN);
    s1 := S.Shapes[1];
    STy := s1.type_;
    STT := s1.Shapes.Count;
    if s1.Fill.type_ = cdrUniformFill then
    begin
      RmbC.CopyAssign(FApp.ActiveShape.Fill.UniformColor);
    end;
    if s1.Outline.type_ = cdrOutline then
    begin
      RmbCL.CopyAssign(FApp.ActiveShape.Outline.Color);
    end;
    if s1.type_ = cdrTextShape then
    begin
      FNT := s1.Text.Story.Font;
      Fsize := s1.Text.Story.Size;
    end;
    sr := FApp.ActiveDocument.SelectableShapes.FindShapes;
    for I := 1 to sr.Count do
    begin
      s2 := sr[I];
      if s2.ParentGroup = nil then
      begin
        s2.GetSize(CT1, CN1);
        Stt1 := s2.Shapes.Count;
        if chk_Size.Checked then
        begin
          if (Abs(CN1 - CN) <= 0.1) and (Abs(CT1 - CT) <= 0.1) and (Stt1 = STT) then
          begin
            s2.AddToSelection;
          end
          else if (CT * CN = CT1 * CN1) and (STT1 = STT) then
          begin
            s1.AddToSelection;
          end;
        end;
        if chk_Type.Checked and (s2.type_ = STy) then
        begin
          s2.AddToSelection;
        end;
        if (chk_SLines.Checked) and (s2.type_ = cdrCurveShape) and (s2.Outline.Width = S.Outline.Width) then
        begin
          s2.AddToSelection;
        end;
        if chk_Color.Checked and (s2.Fill.type_ = cdrUniformFill) and s2.Fill.UniformColor.IsSame(RmbC) then
        begin
          s2.AddToSelection;
        end;
        if chk_Font.Checked and (s2.type_ = cdrTextShape) and (s2.Text.Story.Font = FNT) then
        begin
          s2.AddToSelection;
        end;
        if chk_FontSize.Checked and (s2.type_ = cdrTextShape) and (s2.Text.Story.Size = Fsize) then
        begin
          s2.AddToSelection;
        end;
      end;
    end;
  end
  else
  begin
    MessageBox(Handle, '请选择一个对象！', '提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

end.

