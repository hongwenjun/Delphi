unit DragControl;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Winapi.ShellAPI, Winapi.Messages,
  System.Generics.Collections;

type
  TDragFilesEvent = procedure(const files: TArray<string>) of object;

type
  TTSDragControl = class(TComponent)
  private
    FDragControl: TWinControl;
    FOnDropFiles: TDragFilesEvent;
    var
      OLDWndProc: TWndMethod;
    procedure SetDragHandle(const value: TWinControl);
    function GetOnDropFiles: TDragFilesEvent;
    procedure SetOnDropFiles(const value: TDragFilesEvent);
  protected
    { Protected declarations }
  public
    procedure DragFileProc(var Message: TMessage);
  published
    property DragControl: TWinControl read FDragControl write SetDragHandle;
    property OnDropFiles: TDragFilesEvent read GetOnDropFiles write SetOnDropFiles;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tisn', [TTSDragControl]);
end;

procedure TTSDragControl.DragFileProc(var Message: TMessage);
var
  FileNum: Word;
  p: array[0..254] of char;
  files: TArray<string>;
begin
  if Message.Msg = WM_DROPFILES then
  begin
    FileNum := DragQueryFile(Message.WParam, $FFFFFFFF, nil, 0);
    SetLength(files, FileNum);
    for FileNum := 0 to FileNum - 1 do
    begin
      DragQueryFile(Message.WParam, FileNum, p, 255);
      files[FileNum] := (StrPas(p));
    end;
    if Assigned(FOnDropFiles) then
      FOnDropFiles(files);
  end
  else
  begin
    OLDWndProc(Message);
  end;
end;

procedure TTSDragControl.SetDragHandle(const value: TWinControl);
begin
  FDragControl := value;
  DragAcceptFiles(FDragControl.Handle, True);
  OLDWndProc := FDragControl.WindowProc;
  FDragControl.WindowProc := DragFileProc;
end;

function TTSDragControl.GetOnDropFiles;
begin
  Result := FOnDropFiles;
end;

procedure TTSDragControl.SetOnDropFiles(const value: TDragFilesEvent);
begin
  FOnDropFiles := value;
end;

end.

