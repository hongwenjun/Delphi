unit CaptureImageTool;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  Operate, GdiPlus, Vcl.ExtCtrls, System.Math, System.UITypes, Vcl.Menus, Vcl.ToolWin,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls;

type
  TSizeGrip = (sgNone = 0, gsTop, gsBottom, gsLeft, gsRight, gsTopLeft, gsTopRight, gsBottomLeft, gsBottomRight, gsAll);

type
  TDrawStyle = (dsNone = 0, dsRectangle, dsEllipse, dsArrow, dsText, dsLine);

type
  TTCaptureImageTool = class(TForm)
    pm1: TPopupMenu;
    mn_Exit: TMenuItem;
    tlb1: TToolBar;
    btn_OK: TToolButton;
    btn_Cancel: TToolButton;
    il1: TImageList;
    edt1: TEdit;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormPaint(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormDblClick(Sender: TObject);
    procedure mn_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    _backGroundImage: TBitmap;
    _mouseDownPoint, _endPoint: TGPPoint;
    _mouseDown: Boolean;
    _selectImageRect, _selectImageBounds: TGPRect;
    _image: TBitmap;
    _selectCursor, _drawCursor: TCursor;
    _selectedImage: Boolean;
    _sizeGrip: TSizeGrip;
    _sizeGripRectList: TDictionary<TSizeGrip, TGPRect>;
    _operateManager: TOperateManager;
    _drawStyle: TDrawStyle;
    TextFont: IGPFont;
    procedure Init;
    function GetDestopImage: IGPBitmap;
    function GetSelectImageRect(endPoint: TGPPoint): TGPRect;
    procedure ChangeSelctImageRect(point: TGPPoint);
    function ImageBoundsToRect(bounds: TGPRect): TGPRect;
    procedure CalCulateSizeGripRect;
    procedure ShowDrawToolsControl;
    procedure HideDrawToolsControl;
    procedure ResetSelectImage;
    procedure SetSizeGrip(point: TGPPoint);
    procedure SetSelectImageRect(rect: TGPRect);
    procedure HideTextBox;
    function GetSelectedImage: IGPBitmap;
    procedure FreeMemeory;
    {$REGION 'Draw'}
    procedure DrawImageSizeInfo(g: IGPGraphics; rect: TGPRect);
    procedure DrawTooltip(g: IGPGraphics; point: TGPPoint);
    procedure DrawLastImage;
    {$ENDREGION}
  public
    property SelectImageRect: TGPRect read _selectImageRect write SetSelectImageRect;
    property Image: TBitmap read _image;
    property SelectCursor: TCursor read _selectCursor;
    property SelectedImage: Boolean read _selectedImage write _selectedImage;
    property SizeGrip: TSizeGrip read _sizeGrip write _sizeGrip;
    property SizeGripRectList: TDictionary<TSizeGrip, TGPRect> read _sizeGripRectList write _sizeGripRectList;
    property OperateManager: TOperateManager read _operateManager write _operateManager;
    property DrawStyle: TDrawStyle read _drawStyle;
  end;

var
  TCaptureImageTool: TTCaptureImageTool;

implementation

{$R *.dfm}
procedure TTCaptureImageTool.Init;
begin
  Screen.Cursors[1] := LoadCursor(HInstance, 'Cursor_m');
  _selectCursor := 1;
  _drawCursor := crCross;
  _drawStyle := TDrawStyle.dsNone;
  _sizeGripRectList := TDictionary<TSizeGrip, TGPRect>.Create;
  _operateManager := TOperateManager.Create;
  TextFont := TGPFont.Create(TGPFontFamily.GenericSansSerif, 10);
  Self.BoundsRect := Screen.WorkAreaRect;
  _backGroundImage := TBitmap.Create;
  _backGroundImage.Handle := GetDestopImage.GetHBitmap(0);
end;

procedure TTCaptureImageTool.mn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TTCaptureImageTool.N1Click(Sender: TObject);
begin
  DrawLastImage;
  ModalResult := mrOk;
end;

procedure TTCaptureImageTool.N2Click(Sender: TObject);
begin
  ResetSelectImage;
end;

function TTCaptureImageTool.GetDestopImage;
var
  bmp: TBitmap;
  hdcScreen, hdcCompatible: HDC;
  hbmScreen: HBITMAP;
begin
  hdcScreen := CreateDC('DISPLAY', nil, nil, nil);
  hdcCompatible := CreateCompatibleDC(hdcScreen);
  hbmScreen := CreateCompatibleBitmap(hdcScreen, GetDeviceCaps(hdcScreen, HORZRES), GetDeviceCaps(hdcScreen, VERTRES));
  SelectObject(hdcCompatible, hbmScreen);
  bmp := TBitmap.Create;
  bmp.Handle := hbmScreen;
  BitBlt(hdcCompatible, 0, 0, bmp.Width, bmp.Height, hdcScreen, 0, 0, SRCCOPY);
  Result := TGPBitmap.Create(bmp.Handle, bmp.Palette);
  DeleteDC(hdcScreen);
  DeleteDC(hdcCompatible);
end;

function TTCaptureImageTool.GetSelectImageRect(endPoint: TGPPoint): TGPRect;
begin
  _selectImageBounds.X := _mouseDownPoint.X;
  _selectImageBounds.Y := _mouseDownPoint.Y;
  _selectImageBounds.Width := endPoint.X - _mouseDownPoint.X;
  _selectImageBounds.Height := endPoint.Y - _mouseDownPoint.Y;
  Result := ImageBoundsToRect(_selectImageBounds);
end;

procedure TTCaptureImageTool.ChangeSelctImageRect(point: TGPPoint);
var
  rect: TGPRect;
  left, top, right, bottom: Integer;
  sizeGripAll: Boolean;
begin
  rect := _selectImageBounds;
  left := rect.Left;
  top := rect.Top;
  right := rect.Right;
  bottom := rect.Bottom;
  sizeGripAll := False;

  case SizeGrip of
    TSizeGrip.sgNone:
      ;
    TSizeGrip.gsTop:
      begin
        top := point.Y;
      end;
    TSizeGrip.gsBottom:
      begin
        bottom := point.Y;
      end;
    TSizeGrip.gsLeft:
      begin
        left := point.X;
      end;
    TSizeGrip.gsRight:
      begin
        right := point.X;
      end;
    TSizeGrip.gsTopLeft:
      begin
        left := point.X;
        top := point.Y;
      end;
    TSizeGrip.gsTopRight:
      begin
        right := point.X;
        top := point.Y;
      end;
    TSizeGrip.gsBottomLeft:
      begin
        left := point.X;
        bottom := point.Y;
      end;
    TSizeGrip.gsBottomRight:
      begin
        right := point.X;
        bottom := point.Y;
      end;
    TSizeGrip.gsAll:
      begin
        rect.Offset(point.X - _mouseDownPoint.X, point.Y - _mouseDownPoint.Y);
        sizeGripAll := True;
      end;
  end;
  if not sizeGripAll then
  begin
    rect.X := left;
    rect.Y := top;
    rect.Width := right - left;
    rect.Height := bottom - top;
  end;
  _mouseDownPoint := point;
  _selectImageBounds := rect;
  SelectImageRect := ImageBoundsToRect(rect);
end;

function TTCaptureImageTool.ImageBoundsToRect(bounds: TGPRect): TGPRect;
var
  rect: TGPRect;
  x, y: Integer;
begin
  rect := bounds;
  x := 0;
  y := 0;

  x := Min(rect.X, rect.Right);
  y := Min(rect.Y, rect.Bottom);

  rect.X := x;
  rect.Y := y;
  rect.Width := Max(1, Abs(rect.Width));
  rect.Height := Max(1, Abs(rect.Height));
  Result := rect;
end;

procedure TTCaptureImageTool.btn_CancelClick(Sender: TObject);
begin
  ResetSelectImage;
end;

procedure TTCaptureImageTool.btn_OKClick(Sender: TObject);
begin
  DrawLastImage;
  ModalResult := mrOk;
end;

procedure TTCaptureImageTool.CalCulateSizeGripRect;
var
  rect, rect1: TGPRect;
  x, y, centerX, centerY: Integer;
  list: TDictionary<TSizeGrip, TGPRect>;
begin
  rect := SelectImageRect;
  x := rect.X;
  y := rect.Y;
  centerX := x + rect.Width div 2;
  centerY := y + rect.Height div 2;

  list := SizeGripRectList;
  list.Clear;

  list.Add(TSizeGrip.gsTopLeft, TGPRect.Create(x - 2, y - 2, 5, 5));
  list.Add(TSizeGrip.gsTopRight, TGPRect.Create(rect.Right - 2, y - 2, 5, 5));
  list.Add(TSizeGrip.gsBottomLeft, TGPRect.Create(x - 2, rect.Bottom - 2, 5, 5));
  list.Add(TSizeGrip.gsBottomRight, TGPRect.Create(rect.Right - 2, rect.Bottom - 2, 5, 5));
  list.Add(TSizeGrip.gsTop, TGPRect.Create(centerX - 2, y - 2, 5, 5));
  list.Add(TSizeGrip.gsBottom, TGPRect.Create(centerX - 2, rect.Bottom - 2, 5, 5));
  list.Add(TSizeGrip.gsLeft, TGPRect.Create(x - 2, centerY - 2, 5, 5));
  list.Add(TSizeGrip.gsRight, TGPRect.Create(rect.Right - 2, centerY - 2, 5, 5));
end;

procedure TTCaptureImageTool.ShowDrawToolsControl;
var
  rect, screenBounds: TGPRect;
  x, y: Integer;
begin
  rect := SelectImageRect;
  screenBounds := TGPRect.Create(Screen.WorkAreaRect);
  x := rect.Right - tlb1.Width - 2;
  y := 0;
  if rect.Bottom + tlb1.Height + 2 <= screenBounds.Bottom then
  begin
    y := rect.Bottom + 2;
  end
  else if rect.Y - tlb1.Height - 2 >= screenBounds.Top then
  begin
    y := rect.Y - tlb1.Height - 2;
  end
  else
  begin
    y := rect.Bottom - tlb1.Height - 2;
  end;
  tlb1.Left := x;
  tlb1.Top := y;
  tlb1.Visible := true;
end;

procedure TTCaptureImageTool.HideDrawToolsControl;
begin
  tlb1.Visible := False;
  Invalidate;
end;

procedure TTCaptureImageTool.ResetSelectImage;
begin
  SelectedImage := False;
  _selectImageBounds := TGPRect.Create(0, 0, 0, 0);
  SelectImageRect := TGPRect.Create(0, 0, 0, 0);
  SizeGrip := TSizeGrip.sgNone;

  HideDrawToolsControl;
  OperateManager.Clear;
  Invalidate;
end;

procedure TTCaptureImageTool.SetSizeGrip(point: TGPPoint);
var
  ASizeGrip: TSizeGrip;
begin
  SizeGrip := TSizeGrip.sgNone;
  for ASizeGrip in SizeGripRectList.Keys do
  begin
    if SizeGripRectList[ASizeGrip].contains(point) then
    begin
      SizeGrip := ASizeGrip;
      Break;
    end;
  end;
  if SizeGrip = TSizeGrip.sgNone then
  begin
    if SelectImageRect.contains(point) then
    begin
      SizeGrip := TSizeGrip.gsAll;
    end;
  end;
  Cursor := SelectCursor;
  case SizeGrip of
    TSizeGrip.gsTop, TSizeGrip.gsBottom:
      begin
        Cursor := crSizeNS;
      end;
    TSizeGrip.gsLeft, TSizeGrip.gsRight:
      begin
        Cursor := crSizeWE;
      end;
    TSizeGrip.gsTopRight, TSizeGrip.gsBottomLeft:
      begin
        Cursor := crSizeNESW;
      end;
    TSizeGrip.gsTopLeft, TSizeGrip.gsBottomRight:
      begin
        Cursor := crSizeNWSE;
      end;
    TSizeGrip.gsAll:
      begin
        Cursor := crSizeAll;
      end;
  end;
end;

procedure TTCaptureImageTool.SetSelectImageRect(rect: TGPRect);
begin
  _selectImageRect := rect;
  if not _selectImageRect.IsEmptyArea then
  begin
    CalCulateSizeGripRect;
    Invalidate;
  end;
end;

procedure TTCaptureImageTool.HideTextBox;
begin

end;

function TTCaptureImageTool.GetSelectedImage;
var
  allBmp, bmp: IGPBitmap;
  allGraphics, g: IGPGraphics;
begin
  allBmp := TGPBitmap.Create(Width, Height);
  allGraphics := TGPGraphics.FromImage(allBmp);
  allGraphics.InterpolationMode := InterpolationModeHighQualityBicubic;
  allGraphics.SmoothingMode := SmoothingModeAntiAlias;
  allGraphics.DrawImage(TGPBitmap.Create(_backGroundImage.Handle, _backGroundImage.Palette), TGPPoint.Create(0, 0));
  allGraphics.Flush;
  bmp := TGPBitmap.Create(SelectImageRect.Width, SelectImageRect.Height);
  g := TGPGraphics.FromImage(bmp);
  g.DrawImage(allBmp, 0, 0, SelectImageRect.X, SelectImageRect.Y, SelectImageRect.Width, SelectImageRect.Height, UnitPixel);
  g.Flush;
  Result := bmp;
end;

procedure TTCaptureImageTool.FreeMemeory;
begin
  SetProcessWorkingSetSize(GetCurrentProcess, $ffffffff, $ffffffff);
  Application.ProcessMessages
end;

procedure TTCaptureImageTool.DrawImageSizeInfo(g: IGPGraphics; rect: TGPRect);
var
  txt: string;
  textSize: TGPRectF;
  canv: TCanvas;
  screenBounds: TGPRect;
  textRect, rectF: TGPRectF;
  x, y: Integer;
  brush: IGPBrush;
begin
  rectF := TGPRectF.Create(rect.X, rect.Y, rect.Width, rect.Height);
  txt := Format('%dx%d', [rect.Width, rect.Height]);
  textSize := g.MeasureString(txt, TextFont, rectF, TGPStringFormat.GenericDefault);
  screenBounds := TGPRect.Create(Screen.WorkAreaRect);
  x := 0;
  y := 0;
  if rect.X + textSize.Width > screenBounds.Right - 3 then
  begin
    x := screenBounds.Right - Round(textSize.Width) - 3;
  end
  else
  begin
    x := rect.X + 2;
  end;

  if rect.Y - textSize.Width < screenBounds.Y + 3 then
  begin
    y := rect.Y + 2;
  end
  else
  begin
    y := rect.Y - Round(textSize.Height) - 2;
  end;
  textRect := TGPRectF.Create(x, y, textSize.Width, textSize.Height);
  brush := TGPSolidBrush.Create(TGPColor.Create(150, 10, 10, 10));
  g.FillRectangle(brush, textRect);
  brush := TGPSolidBrush.Create(TGPColor.Create(250, 250, 250));
  g.DrawString(txt, TextFont, textRect, TGPStringFormat.GenericDefault, brush);
end;

procedure TTCaptureImageTool.DrawTooltip(g: IGPGraphics; point: TGPPoint);
var
  txt: string;
  textSize: TGPRectF;
  canv: TCanvas;
  screenBounds: TGPRect;
  textRect, rectF, recRect: TGPRectF;
  x, y: Integer;
  brush: IGPBrush;
  pen: IGPPen;
begin
  rectF := TGPRectF.Create(0, 0, Width, Height);
  txt := '单击左键并拖动选择范围'#13#10'单击右键退出';
  textSize := g.MeasureString(txt, TextFont, rectF, TGPStringFormat.GenericDefault);
  screenBounds := TGPRect.Create(Screen.WorkAreaRect);
  x := 0;
  y := 0;
  if point.X + textSize.Width > screenBounds.Right - 3 then
  begin
    x := screenBounds.Right - Round(textSize.Width) - 3;
  end
  else
  begin
    x := point.X + 2;
  end;

  if point.Y - textSize.Width < screenBounds.Y + 3 then
  begin
    y := point.Y + 2;
  end
  else
  begin
    y := point.Y - Round(textSize.Height) - 2;
  end;
  recRect := TGPRectF.Create(x, y - 2, textSize.Width, textSize.Height);
  brush := TGPSolidBrush.Create(TGPColor.Create(150, 255, 0, 0));
  g.FillRectangle(brush, recRect);
  pen := TGPPen.Create(TGPColor.Create(0, 0, 255));
  g.DrawRectangle(pen, recRect);
  textRect := TGPRectF.Create(x, y, textSize.Width, textSize.Height);
  brush := TGPSolidBrush.Create(TGPColor.Create(250, 250, 250));
  g.DrawString(txt, TextFont, textRect, TGPStringFormat.GenericDefault, brush);
end;

procedure TTCaptureImageTool.DrawLastImage;
var
  allBmp, bmp: IGPBitmap;
  allGraphics, g: IGPGraphics;
  tbmp: IGPBitmap;
begin
  allBmp := TGPBitmap.Create(Width, Height);
  allGraphics := TGPGraphics.FromImage(allBmp);
  allGraphics.InterpolationMode := InterpolationModeHighQualityBicubic;
  allGraphics.SmoothingMode := SmoothingModeAntiAlias;
  allGraphics.DrawImage(TGPBitmap.Create(_backGroundImage.Handle, _backGroundImage.Palette), TGPPoint.Create(0, 0));
  allGraphics.Flush;
  bmp := TGPBitmap.Create(SelectImageRect.Width, SelectImageRect.Height);
  g := TGPGraphics.FromImage(bmp);
  g.DrawImage(allBmp, 0, 0, SelectImageRect.X, SelectImageRect.Y, SelectImageRect.Width, SelectImageRect.Height, UnitPixel);
  g.Flush;
  _image := TBitmap.Create;
  _image.Handle := bmp.GetHBitmap(0);
end;
{$REGION '事件'}

procedure TTCaptureImageTool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FreeMemeory;
end;

procedure TTCaptureImageTool.FormCreate(Sender: TObject);
begin
  Init;
end;

procedure TTCaptureImageTool.FormDblClick(Sender: TObject);
var
  location: TGPPoint;
  cs: Boolean;
begin
  location := TGPPoint.Create(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  cs := SelectImageRect.contains(location);
  if cs then
  begin
    DrawLastImage;
    ModalResult := mrOk;
  end;
end;

procedure TTCaptureImageTool.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  obj: TOperateObject;
  location: TGPPoint;
begin
  location.X := X;
  location.Y := Y;
  if Button = mbLeft then
  begin
    if SelectedImage then
    begin
      if SizeGrip <> TSizeGrip.sgNone then
      begin
        _mouseDown := True;
        _mouseDownPoint := location;
        HideDrawToolsControl;
        Invalidate;
      end;

      if DrawStyle <> TDrawStyle.dsNone then
      begin

      end;
    end
    else
    begin
      _mouseDown := true;
      _mouseDownPoint := location;
    end;
  end;
end;

procedure TTCaptureImageTool.FormMouseEnter(Sender: TObject);
begin
  inherited;
  Cursor := SelectCursor;
end;

procedure TTCaptureImageTool.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  location: TGPPoint;
begin
  location.X := X;
  location.Y := Y;
  if _mouseDown then
  begin
    if not SelectedImage then
    begin
      SelectImageRect := GetSelectImageRect(location);
    end
    else
    begin
      if DrawStyle <> TDrawStyle.dsNone then
      begin

      end
      else if SizeGrip <> TSizeGrip.sgNone then
      begin
        ChangeSelctImageRect(location);
      end;
    end;
  end
  else
  begin
    if not SelectedImage then
    begin
      Invalidate;
    end
    else
    begin
      if DrawStyle = TDrawStyle.dsNone then
      begin
        if OperateManager.OperateCount = 0 then
        begin
          SetSizeGrip(location);
        end;
      end
      else
      begin

      end;
    end;
  end;
end;

procedure TTCaptureImageTool.FormMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  location: TGPPoint;
begin
  location.X := X;
  location.Y := Y;
  if Button = mbLeft then
  begin
    if not SelectedImage then
    begin
      SelectImageRect := GetSelectImageRect(location);
      if not ((SelectImageRect.Width = 0) or (SelectImageRect.Height = 0)) then
      begin
        SelectedImage := True;
        ShowDrawToolsControl;
      end;
    end
    else
    begin
      _endPoint := location;
      Invalidate;
      if DrawStyle <> TDrawStyle.dsNone then
      begin

      end
      else if SizeGrip <> TSizeGrip.sgNone then
      begin
        _selectImageBounds := SelectImageRect;
        ShowDrawToolsControl;
        SizeGrip := TSizeGrip.sgNone;
      end;
    end;
    _mouseDown := False;
    _mouseDownPoint := TGPPoint.Create(0, 0);
  end
  else if Button = mbRight then
  begin
    if SelectedImage then
    begin
      if SelectImageRect.contains(location) then
      begin
        pm1.Popup(X, Y);
      end
      else
      begin
        ResetSelectImage;
      end;
    end
    else
    begin
      ModalResult := mrCancel;
    end;
  end;
end;

procedure TTCaptureImageTool.FormPaint(Sender: TObject);
var
  g: IGPGraphics;
  rect, rectT, rectB, rectL, rectR: TGPRect;
  brush: IGPBrush;
  pen: IGPPen;
  sizeGripRect: TGPRect;
  bmp: IGPBitmap;
begin
  g := TGPGraphics.Create(Canvas.Handle);
  g.SmoothingMode := SmoothingModeAntiAlias;
  bmp := TGPBitmap.Create(_backGroundImage.Handle, _backGroundImage.Palette);
  g.DrawImage(bmp, 0, 0, bmp.Width, bmp.Height);
  if (SelectImageRect.Width <> 0) and (SelectImageRect.Height <> 0) then
  begin
    rect := SelectImageRect;
    brush := TGPSolidBrush.Create(TGPColor.Create(150, 100, 100, 100));
    if 1 = 0 then
    begin
      rectT := TGPRect.Create(0, 0, Width, rect.Y);
      rectB := TGPRect.Create(0, rect.Y + rect.Height, Width, Height - rect.Y - rect.Height);
      rectL := TGPRect.Create(0, rect.Y, rect.X, rect.Height);
      rectR := TGPRect.Create(rect.X + rect.Width, rect.Y, Width - rect.X - rect.Width, rect.Height);
      g.FillRectangle(brush, rectT);
      g.FillRectangle(brush, rectB);
      g.FillRectangle(brush, rectL);
      g.FillRectangle(brush, rectR);
    end
    else
    begin
      g.FillRectangle(brush, 0, 0, _backGroundImage.Width, _backGroundImage.Height);
      g.DrawImage(bmp, rect.X, rect.Y, rect.X, rect.Y, rect.Width, rect.Height, TGPUnit.UnitPixel);
    end;
    DrawImageSizeInfo(g, rect);
    if _mouseDown then
    begin
      if (not SelectedImage) or (SizeGrip <> TSizeGrip.sgNone) then
      begin
        brush := TGPSolidBrush.Create(TGPColor.Create(10, 200, 0, 0));
        //g.FillRectangle(brush, rect);
      end;
    end;
    pen := TGPPen.Create(TGPColor.Create(200, 0, 0));
    g.DrawRectangle(pen, rect);
    brush := TGPSolidBrush.Create(TGPColor.Create(180, 0, 0));
    for sizeGripRect in SizeGripRectList.Values do
    begin
      g.FillRectangle(brush, sizeGripRect);
    end;
  end
  else
  begin
    DrawTooltip(g, TGPPoint.Create(Mouse.CursorPos.X, Mouse.CursorPos.Y));
  end;
  g.Flush;
end;
{$ENDREGION}

end.

