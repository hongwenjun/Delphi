unit DrawToolsControl;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TDrawToolsControl = class(TToolBar)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tisn', [TDrawToolsControl]);
end;

end.

