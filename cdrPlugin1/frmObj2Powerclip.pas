unit frmObj2Powerclip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  VGCore_TLB;

type
  TfObj2Powerclip = class(TTBaseForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fObj2Powerclip: TfObj2Powerclip;

implementation

{$R *.dfm}

procedure TfObj2Powerclip.btn1Click(Sender: TObject);
var
  sr: IVGShapeRange;
  rec: IVGShape;
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
  StartEvent(True, True);
  sr := FApp.ActiveDocument.SelectionRange;
  rec := FApp.ActiveLayer.CreateRectangle2(sr.LeftX, sr.TopY, sr.SizeWidth, sr.SizeHeight);
  rec.Rectangle.CornerType := cdrCornerTypeRound;
  rec.Rectangle.RelativeCornerScaling := true;
  rec.Fill.ApplyNoFill;
  sr.AddToPowerClip(rec, cdrFalse);
  EndEvent;
end;

procedure TfObj2Powerclip.FormCreate(Sender: TObject);
begin
  inherited;
  Self.cmdName := '对象装框';
end;

end.

