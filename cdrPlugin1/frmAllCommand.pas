unit frmAllCommand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  VGCore_TLB;

type
  TfAllCommand = class(TTBaseForm)
    btn1: TButton;
  private
    { Private declarations }
  public
    /// <summary>
    ///  “≥√Ê  ≈‰
    /// </summary>
    procedure PageAdaptation;
    /// <summary>
    ///  ≥¨º∂≥∑œ˙
    /// </summary>
    procedure SuperUndo;
    /// <summary>
    ///  ≥¨º∂≥∑œ˙
    /// </summary>
    procedure SuperRedo;
  end;

var
  fAllCommand: TfAllCommand;

implementation

{$R *.dfm}

procedure TfAllCommand.PageAdaptation;
var
  page: IVGPage;
  sr: IVGShapeRange;
  gs: IVGShape;
begin
  if FApp.ActivePage.Shapes.Count = 0 then
    Exit;
  Self.cmdName := '“≥√Ê  ≈‰';
  StartEvent(True);
  page := FApp.ActivePage;
  sr := FApp.ActivePage.Shapes.All;
  page.SizeWidth := sr.SizeWidth;
  page.SizeHeight := sr.SizeHeight;
  if sr.Count > 1 then
  begin
    gs := sr.Group;
    sr.RemoveFromSelection;
    gs.AddToSelection;
    gs.AlignAndDistribute(cdrAlignDistributeHAlignCenter, cdrAlignDistributeVAlignCenter, cdrAlignShapesToCenterOfPage, cdrDistributeToSelection, False, cdrTextAlignBoundingBox, -1, -1, FApp.CreateRect(0, 0, 0, 0));
    gs.UngroupEx;
  end
  else
  begin
    sr.AlignAndDistribute(cdrAlignDistributeHAlignCenter, cdrAlignDistributeVAlignCenter, cdrAlignShapesToCenterOfPage, cdrDistributeToSelection, False, cdrTextAlignBoundingBox, 0, 0, FApp.CreateRect(0, 0, 0, 0));
  end;
  EndEvent;
end;

procedure TfAllCommand.SuperUndo;
begin
  StartEvent(True, False);
  FApp.ActiveDocument.Undo(1);
  EndEvent;
end;

procedure TfAllCommand.SuperRedo;
begin
  StartEvent(True, False);
  FApp.ActiveDocument.Redo(1);
  EndEvent;
end;

end.

