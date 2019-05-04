unit frmAlign;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, SpeedButtonEx, Vcl.ExtCtrls,
  VGCore_TLB, System.Generics.Collections;

type
  TfAlign = class(TTBaseForm)
    grp1: TGroupBox;
    spdbtnxALeft: TSpeedButtonEx;
    spdbtnxARight: TSpeedButtonEx;
    spdbtnxAHCenter: TSpeedButtonEx;
    lbl1: TLabel;
    bvl1: TBevel;
    spdbtnxCCenter: TSpeedButtonEx;
    spdbtnxABottom: TSpeedButtonEx;
    spdbtnxATop: TSpeedButtonEx;
    spdbtnxSLeft: TSpeedButtonEx;
    spdbtnxSHCenter: TSpeedButtonEx;
    spdbtnxSHSpace: TSpeedButtonEx;
    spdbtnxSRight: TSpeedButtonEx;
    spdbtnxSCSpace: TSpeedButtonEx;
    spdbtnxSBottom: TSpeedButtonEx;
    spdbtnxSCCenter: TSpeedButtonEx;
    spdbtnxSTop: TSpeedButtonEx;
    lbl2: TLabel;
    chkSpace: TCheckBox;
    edtSpace: TEdit;
    il1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure spdbtnxALeftClick(Sender: TObject);
    procedure spdbtnxARightClick(Sender: TObject);
    procedure spdbtnxAHCenterClick(Sender: TObject);
    procedure spdbtnxATopClick(Sender: TObject);
    procedure spdbtnxABottomClick(Sender: TObject);
    procedure spdbtnxCCenterClick(Sender: TObject);
    procedure chkSpaceClick(Sender: TObject);
    procedure spdbtnxSLeftClick(Sender: TObject);
    procedure spdbtnxSHCenterClick(Sender: TObject);
    procedure spdbtnxSRightClick(Sender: TObject);
    procedure spdbtnxSHSpaceClick(Sender: TObject);
    procedure spdbtnxSCSpaceClick(Sender: TObject);
    procedure spdbtnxSTopClick(Sender: TObject);
    procedure spdbtnxSCCenterClick(Sender: TObject);
    procedure spdbtnxSBottomClick(Sender: TObject);
  private
    procedure SorShapes(var x: TArray<IVGShape>; hv: Boolean);
  public
    procedure SelectionChange; override;
  end;

var
  fAlign: TfAlign;

implementation

{$R *.dfm}

procedure TfAlign.SelectionChange;
begin
  grp1.Enabled := FApp.ActiveSelectionRange.Count > 1;
end;

procedure TfAlign.SorShapes(var x: TArray<VGCore_TLB.IVGShape>; hv: Boolean);

  procedure HeapAdjust(var x: TArray<VGCore_TLB.IVGShape>; i, intLen: integer);
  var
    intChild: integer;
    tmp: IVGShape;
    b: Boolean;
  begin
    tmp := x[i];
    intChild := 2 * i + 1;
    while intChild < intLen do
    begin
      if (intChild + 1 < intLen) then
      begin
        if hv then
        begin
          b := (x[intChild].LeftX < x[intChild + 1].LeftX);
        end
        else
        begin
          b := (x[intChild].TopY < x[intChild + 1].TopY);
        end;
        if b then
          Inc(intChild);
      end;
      if hv then
      begin
        b := (x[i].LeftX < x[intChild].LeftX);
      end
      else
      begin
        b := (x[i].TopY < x[intChild].TopY);
      end;
      if b then
      begin
        x[i] := x[intChild];
        i := intChild;
        intChild := 2 * i + 1;
      end
      else
      begin
        break;
      end;
      x[i] := tmp;
    end;
  end;

  procedure BuildHeap(var x: TArray<VGCore_TLB.IVGShape>);
  var
    i: integer;
  begin
    for i := high(x) div 2 downto 0 do
    begin
      HeapAdjust(x, i, High(x) + 1);
    end;
  end;

var
  i: integer;
  tmp: IVGShape;
begin
  BuildHeap(x);
  for i := high(x) downto 0 do
  begin
    tmp := x[i];
    x[i] := x[0];
    x[0] := tmp;
    HeapAdjust(x, 0, i);
  end;
end;

procedure TfAlign.chkSpaceClick(Sender: TObject);
begin
  inherited;
  edtSpace.Enabled := chkSpace.Checked;
  spdbtnxSLeft.Enabled := not chkSpace.Checked;
  spdbtnxSRight.Enabled := not chkSpace.Checked;
  spdbtnxSHCenter.Enabled := not chkSpace.Checked;
  spdbtnxSTop.Enabled := not chkSpace.Checked;
  spdbtnxSCCenter.Enabled := not chkSpace.Checked;
  spdbtnxSBottom.Enabled := not chkSpace.Checked;
end;

procedure TfAlign.FormCreate(Sender: TObject);
begin
  inherited;
  il1.GetBitmap(0, spdbtnxALeft.Glyph);
  il1.GetBitmap(1, spdbtnxARight.Glyph);
  il1.GetBitmap(2, spdbtnxAHCenter.Glyph);
  il1.GetBitmap(3, spdbtnxATop.Glyph);
  il1.GetBitmap(4, spdbtnxABottom.Glyph);
  il1.GetBitmap(5, spdbtnxCCenter.Glyph);
  il1.GetBitmap(6, spdbtnxSLeft.Glyph);
  il1.GetBitmap(7, spdbtnxSHCenter.Glyph);
  il1.GetBitmap(8, spdbtnxSRight.Glyph);
  il1.GetBitmap(9, spdbtnxSHSpace.Glyph);
  il1.GetBitmap(10, spdbtnxSTop.Glyph);
  il1.GetBitmap(11, spdbtnxSCCenter.Glyph);
  il1.GetBitmap(12, spdbtnxSBottom.Glyph);
  il1.GetBitmap(13, spdbtnxSCSpace.Glyph);
  chkSpaceClick(nil);
  AddEventListen;
end;

procedure TfAlign.spdbtnxABottomClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '底对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVAlignBottom, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxAHCenterClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '水平居中对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHAlignCenter, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxALeftClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '左对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHAlignLeft, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxARightClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '右对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHAlignRight, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxATopClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '顶对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVAlignTop, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxCCenterClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '垂直居中对齐';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVAlignCenter, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSBottomClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '底分散排列';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVDistributeBottom, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSCCenterClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '垂直分散排列中心';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVDistributeCenter, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSCSpaceClick(Sender: TObject);
var
  sr: IVGShapeRange;
  s, ss: IVGShape;
  I: Integer;     
  sps: TArray<IVGShape>;
  space: Integer;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  FApp.ActiveDocument.Unit_ := cdrMillimeter;
  Self.cmdName := '垂直分散排列间距';
  StartEvent;
  if chkSpace.Checked then
  begin
    FApp.ActiveDocument.ReferencePoint := cdrTopLeft;
    space := StrToInt(edtSpace.Text);
    SetLength(sps, FApp.ActiveSelectionRange.Count);
    for I := 1 to FApp.ActiveSelectionRange.Count do
    begin
      s := FApp.ActiveSelectionRange.Shapes[I];
      sps[I - 1] := s;
    end;
    SorShapes(sps, False);
    for I := Length(sps) - 1 downto 0 do
    begin
      if I < Length(sps) - 1 then
      begin
        s := sps[I];
        s.TopY := ss.TopY - ss.SizeHeight - space;
      end;
      ss := sps[I];
    end;
  end
  else
  begin
    sr := FApp.ActiveSelectionRange;
    sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVDistributeSpacing, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  end;
  EndEvent;
end;

procedure TfAlign.spdbtnxSHCenterClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '水平分散排列中心';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHDistributeCenter, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSHSpaceClick(Sender: TObject);
var
  sr: IVGShapeRange;
  s, ss: IVGShape;
  sps: TArray<IVGShape>;
  I, J, max: Integer;
  space: Integer;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  FApp.ActiveDocument.Unit_ := cdrMillimeter;
  Self.cmdName := '水平分散排列间距';
  StartEvent;
  if chkSpace.Checked then
  begin
    FApp.ActiveDocument.ReferencePoint := cdrTopLeft;
    space := StrToInt(edtSpace.Text);
    SetLength(sps, FApp.ActiveSelectionRange.Count);
    for I := 1 to FApp.ActiveSelectionRange.Count do
    begin
      s := FApp.ActiveSelectionRange.Shapes[I];
      sps[I - 1] := s;
    end;
    SorShapes(sps, True);
    for I := 0 to Length(sps) - 1 do
    begin
      if I > 0 then
      begin
        s := sps[I];
        s.LeftX := ss.LeftX + ss.SizeWidth + space;
      end;
      ss := sps[I];
    end;
  end
  else
  begin
    sr := FApp.ActiveSelectionRange;
    sr.AlignAndDistribute(cdrAlignDistributeHDistributeSpacing, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  end;
  EndEvent;
end;

procedure TfAlign.spdbtnxSLeftClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '左分散排列';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHDistributeLeft, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSRightClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '右分散排列';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHDistributeRight, cdrAlignDistributeVNone, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

procedure TfAlign.spdbtnxSTopClick(Sender: TObject);
var
  sr: IVGShapeRange;
begin
  inherited;
  if FApp.ActiveSelection.Shapes.Count < 2 then
  begin
    Exit;
  end;
  Self.cmdName := '顶分散排列';
  StartEvent;
  sr := FApp.ActiveSelectionRange;
  sr.AlignAndDistribute(cdrAlignDistributeHNone, cdrAlignDistributeVDistributeTop, cdrAlignShapesToLastSelected, cdrDistributeToSelection);
  EndEvent;
end;

end.

