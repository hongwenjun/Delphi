unit Operate;

interface

uses
  Vcl.Graphics, System.Generics.Collections;

type
  TOperateType = (None = 0, DrawRectangle, DrawEllipse, DrawArrow, DrawLine, DrawText);

type
  TOperateObject = class
  private
    _operateType: TOperateType;
    _color: TColor;
    _data: TObject;
  public
    constructor Create; overload;
    constructor Create(operateType: TOperateType; color: TColor; data: TObject); overload;
    property OperateType: TOperateType read _operateType write _operateType;
    property Color: TColor read _color write _color;
    property Data: TObject read _data write _data;
  end;

type
  TOperateManager = class
  private
    _operateList: TList<TOperateObject>;
    const
      MaxOperateCount: Integer = 1000;
    function GetOperateList: Integer;
  public
    constructor Create;
    property OperateList: TList<TOperateObject> read _operateList write _operateList;
    property OperateCount: Integer read GetOperateList;
    procedure AddOperate(operateType: TOperateType; color: TColor; data: TObject);
    function RedoOperate: Boolean;
    procedure Clear;
    destructor Destroy;
  end;

implementation

{$REGION 'TOperateObject'}
constructor TOperateObject.Create;
begin

end;

constructor TOperateObject.Create(operateType: TOperateType; color: TColor; data: TObject);
begin
  _operateType := operateType;
  _color := color;
  _data := data;
end;
{$ENDREGION}
{$REGION 'TOperateManager'}

constructor TOperateManager.Create;
begin
  _operateList := TList<TOperateObject>.Create;
end;

function TOperateManager.GetOperateList: Integer;
begin
  Result := OperateList.Count;
end;

procedure TOperateManager.AddOperate(operateType: TOperateType; color: TColor; data: TObject);
var
  obj: TOperateObject;
begin
  obj := TOperateObject.Create(operateType, color, data);
  if OperateList.Count > MaxOperateCount then
  begin
    OperateList.Delete(0);
  end;
  OperateList.Add(obj);
end;

function TOperateManager.RedoOperate;
begin
  if OperateList.Count > 0 then
  begin
    OperateList.Delete(OperateList.Count - 1);
    Exit(True);
  end;
  Result := False;
end;

procedure TOperateManager.Clear;
begin
  OperateList.Clear;
end;

destructor TOperateManager.Destroy;
begin
  _operateList.Clear;
  _operateList := nil;
end;
{$ENDREGION}

end.

