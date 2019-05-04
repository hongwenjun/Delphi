unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MyUtils,
  Winapi.ShellAPI, DragControl;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn_CRK: TButton;
    btn_RemovePWD: TButton;
    btn_Exit: TButton;
    dlgOpen1: TOpenDialog;
    tsdrgcntrl1: TTSDragControl;
    procedure btn1Click(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_CRKClick(Sender: TObject);
    procedure btn_RemovePWDClick(Sender: TObject);
    procedure tsdrgcntrl1DropFiles(const files: TArray<System.string>);
  private
    // 当文件拖放至窗体中后，系统将向窗体发送WM_DRAPFILES事件，
    // 因此我们可以在WMDROPFILES过程中获取文件总数及文件名。
    procedure WMDROPFILES(var Msg: TMessage); message WM_DROPFILES;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if dlgOpen1.Execute(Self.Handle) then
  begin
    edt1.Text := dlgOpen1.FileName;
  end;
end;

procedure TForm1.btn_CRKClick(Sender: TObject);
var
  fileName: string;
  fs, fo: TFileStream;
  tw: TBinaryWriter;
  oldB, newB: TBytes;
  I, II, J: Integer;
  xors: WordBool;
  a, b, c, d: Byte;
begin
  fileName := edt1.Text;
  if FileExists(fileName) then
  begin
    try
      fs := TFileStream.Create(fileName, fmOpenRead);
      SetLength(oldB, fs.Size);
      fs.ReadBuffer(oldB, fs.Size);
      fs.Free;
      II := 0;
      xors := False;
      for I := 0 to Length(oldB) do
      begin
        if (oldB[i] = $2f) and (oldB[i + 1] = $30) and (oldB[i + 2] = $ee) and (oldB[i + 3] = $1f) then
        begin
          xors := True;
          II := I;
          break;
        end;
      end;
      if xors then
      begin
        DeleteFile(fileName + '.bak');
        RenameFile(fileName, fileName + '.bak');
        try
          fs := TFileStream.Create(fileName, fmCreate);
          tw := TBinaryWriter.Create(fs);
          tw.Write(bytesof('GMS'));
          tw.Write(1);
          tw.Write(Integer($0a));
          tw.Write(Integer($02));
          tw.Write(0);
          tw.Write(0);
          tw.Write(Integer($01));
          for J := II to Length(oldB) do
          begin
            tw.Write(oldB[J] xor $FF);
          end;
          tw.Close;
          fs.Free;
          if MessageBox(Self.Handle, '文件已破解,是否移除密码？', '提示', MB_OKCANCEL + MB_ICONINFORMATION) = idOk then
          begin
            btn_RemovePWDClick(nil);
          end;
        finally
        end;
      end
      else
      begin
        if MessageBox(Self.Handle, '文件未加密,是否尝试移除密码？', '提示', MB_OKCANCEL + MB_ICONINFORMATION) = idOk then
        begin
          btn_RemovePWDClick(nil);
        end;
      end;
    finally
      fs.Free;
    end;
  end;
end;

procedure TForm1.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn_RemovePWDClick(Sender: TObject);
var
  fileName: WideString;
  fs: TFileStream;
  oldB: TBytes;
  tw: TBinaryWriter;
begin
  fileName := edt1.Text;
  if not FileExists(fileName) then
  begin
    Exit;
  end;
  fs := TFileStream.Create(fileName, fmOpenRead);
  SetLength(oldB, fs.Size);
  fs.ReadBuffer(oldB, fs.Size);
  fs.Free;
  DeleteFile(fileName + '.bak');
  RenameFile(fileName, fileName + '.bak');
  HexUtility.Replace(oldB, bytesof('CMG='), bytesof('CMG.'));
  HexUtility.Replace(oldB, bytesof('DPB='), bytesof('DPB.'));
  fs := TFileStream.Create(fileName, fmCreate);
  tw := TBinaryWriter.Create(fs);
  tw.Write(oldB);
  tw.Close;
  fs.Free;
  MessageBox(Self.Handle, '文件已破解', '提示', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.tsdrgcntrl1DropFiles(const files: TArray<System.string>);
begin
  edt1.Text := files[0];
end;

procedure TForm1.WMDROPFILES(var Msg: TMessage);
var
  FilesCount: Integer; // 文件总数
  i: Integer;
  FileName: array[0..255] of Char;
begin
  // 获取文件总数
  FilesCount := DragQueryFile(Msg.WParam, $FFFFFFFF, nil, 0);
  // 获取文件名
  for i := 0 to FilesCount - 1 do
  begin
    DragQueryFile(Msg.WParam, i, FileName, 256);
  end;

  // 释放
  DragFinish(Msg.WParam);

end;

end.

