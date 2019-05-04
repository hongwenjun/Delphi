unit QRTool;

interface

uses
  VGCore_TLB, Utils;

type
  TQRTool = class(TObject, IVGToolState)
    FToolStateAttributes: IVGToolStateAttributes;
    FApplication: IVGApplication;
    FIsDrawing: Boolean;
    constructor Create(application: IVGApplication);
    procedure OnStartState(const StateAttributes: IVGToolStateAttributes); safecall;
    procedure OnExitState; safecall;
    procedure OnMouseMove(const pt: IVGPoint); safecall;
    procedure OnLButtonDown(const pt: IVGPoint); safecall;
    procedure OnLButtonDownLeaveGrace(const pt: IVGPoint); safecall;
    procedure OnLButtonUp(const pt: IVGPoint); safecall;
    procedure OnLButtonDblClick(const pt: IVGPoint); safecall;
    procedure OnClick(const pt: IVGPoint; var Handled: WordBool); safecall;
    procedure OnRButtonDown(const pt: IVGPoint; var Handled: WordBool); safecall;
    procedure OnRButtonUp(const pt: IVGPoint; var Handled: WordBool); safecall;
    procedure OnKeyDown(KeyCode: Integer; var Handled: WordBool); safecall;
    procedure OnKeyUp(KeyCode: Integer; var Handled: WordBool); safecall;
    procedure OnDelete(var Handled: WordBool); safecall;
    procedure OnAbort; safecall;
    procedure OnCommit(const pt: IVGPoint); safecall;
    procedure OnSnapMouse(var pt: IVGPoint; var Handled: WordBool); safecall;
    procedure OnTimer(TimerId: Integer; TimeEllapsed: Integer); safecall;
    function Get_IsDrawing: WordBool; safecall;
    property IsDrawing: WordBool read Get_IsDrawing;
  public
    //IDispatch
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult; stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount, LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(dispid: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; stdcall;
  public
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  end;

implementation

constructor TQRTool.Create(application: IVGApplication);
begin
  FApplication := application;
end;

procedure TQRTool.OnStartState(const StateAttributes: IVGToolStateAttributes);
begin
  FToolStateAttributes := StateAttributes;
  FToolStateAttributes.SetCursor(cdrCursorSmallcrosshair);
  FToolStateAttributes.AllowTempPickState := False;
  FToolStateAttributes.PropertyBarGuid := '6A582450-0081-4A14-B325-7F2E1FDB4D47';
end;

procedure TQRTool.OnExitState;
begin

end;

procedure TQRTool.OnMouseMove(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnLButtonDown(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnLButtonDownLeaveGrace(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnLButtonUp(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnLButtonDblClick(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnClick(const pt: IVGPoint; var Handled: WordBool);
begin

end;

procedure TQRTool.OnRButtonDown(const pt: IVGPoint; var Handled: WordBool);
begin

end;

procedure TQRTool.OnRButtonUp(const pt: IVGPoint; var Handled: WordBool);
begin

end;

procedure TQRTool.OnKeyDown(KeyCode: Integer; var Handled: WordBool);
begin

end;

procedure TQRTool.OnKeyUp(KeyCode: Integer; var Handled: WordBool);
begin

end;

procedure TQRTool.OnDelete(var Handled: WordBool);
begin

end;

procedure TQRTool.OnAbort;
begin

end;

procedure TQRTool.OnCommit(const pt: IVGPoint);
begin

end;

procedure TQRTool.OnSnapMouse(var pt: IVGPoint; var Handled: WordBool);
begin

end;

procedure TQRTool.OnTimer(TimerId: Integer; TimeEllapsed: Integer);
begin

end;

function TQRTool.Get_IsDrawing;
begin

end;

function TQRTool.GetTypeInfoCount(out Count: Integer): HRESULT;
begin
  Result := E_NOTIMPL;
end;

function TQRTool.GetTypeInfo(Index: Integer; LocaleID: Integer; out TypeInfo): HRESULT;
begin
  Result := E_NOTIMPL;
end;

function TQRTool.GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount: Integer; LocaleID: Integer; DispIDs: Pointer): HRESULT;
begin
  Result := E_NOTIMPL;
end;

function TQRTool.Invoke(dispid: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult: Pointer; ExcepInfo: Pointer; ArgErr: Pointer): HRESULT;
begin
  Result := S_OK;
end;

function TQRTool.QueryInterface(const IID: TGUID; out Obj): HRESULT;
begin
  Result := S_OK;
end;

function TQRTool._AddRef;
begin

end;

function TQRTool._Release;
begin

end;

end.

