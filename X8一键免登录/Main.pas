unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IOUtils,
  Winapi.ShlObj, Winapi.TlHelp32, System.Win.Registry, System.Generics.Collections;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    hostsAdd: TDictionary<string, string>;
    function GetFolderPath(nFolder: Integer): string;
    /// <summary>
/// 检测XX进程是否存在函数
/// </summary>
/// <param name="ExeFileName"></param>
/// <returns></returns>

    function CheckTask(ExeFileName: string): Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

function TForm1.CheckTask(ExeFileName: string): Boolean; //检测XX进程是否存在函数
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := False;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      result := True;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
end;

function TForm1.GetFolderPath(nFolder: Integer): string;
var
  pList: PItemIDList;
  cPath: array[0..MAX_PATH] of Char;
begin
  Result := '';
  ZeroMemory(@cPath, sizeof(cPath));
  if SHGetSpecialFolderLocation(0, nFolder, pList) = S_OK then
    if SHGetPathFromIDList(pList, cPath) then
      Result := StrPas(cPath);
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  s: string;
  st: TResourceStream;
  ARegistry: TRegistry;
  bs: TBytes;
  fs: TFileStream;
  ts: TStringList;
  hostsPath, ss, k: string;
  hh: TArray<string>;
begin
  if CheckTask('CorelDRW.exe') then
  begin
    MessageBox(Handle, 'CorelDraw正在运行，请退出后重试！', '错误', MB_OK + MB_ICONERROR);
    Exit;
  end;
  s := 'C:\ProgramData\Corel\bin\540227504\540238885\';
  if not FileExists(s) then
  begin
    ForceDirectories(s);
  end;
  st := TResourceStream.Create(HInstance, 'bin', RT_RCDATA);
  st.SaveToFile(s + '7aef8c45377436bb.bin');
  SetLength(bs, st.Size);
  st.ReadBuffer(bs, st.Size);

  ARegistry := TRegistry.Create;
  ARegistry.RootKey := HKEY_CURRENT_USER;
  ARegistry.Access := KEY_WOW64_64KEY or KEY_ALL_ACCESS;
  if ARegistry.OpenKey('Software\Corel\CorelDRAW\18.0\IPM_CDGS\PremiumFeatures', False) then
  begin
    ARegistry.WriteString('Profile', '7aef8c45377436bb');
    ARegistry.WriteBinaryData('bininfo', bs[0], Length(bs));
    ARegistry.CloseKey;
  end;
  hostsAdd := TDictionary<string, string>.Create;
  hostsAdd.Add('apps.corel.com', '127.0.0.1');
  hostsAdd.Add('mc.corel.com', '127.0.0.1');
  hostsAdd.Add('origin-mc.corel.com', '127.0.0.1');
  hostsAdd.Add('iws.corel.com', '127.0.0.1');
  hostsAdd.Add('ipm.corel.com', '127.0.0.1');
  hostsPath := 'C:\Windows\System32\drivers\etc\hosts';
  if not FileExists(hostsPath) then
  begin
    TFileStream.Create(hostsPath, fmCreate).Destroy;
  end;
  ts := TStringList.Create;
  ts.LoadFromFile(hostsPath);
  for ss in ts do
  begin
    if ss.StartsWith('#') then
    begin
      Continue;
    end;
    hh := ss.Split([#9, ' ']);
    if Length(hh) < 2 then
    begin
      Continue;
    end;
    if hostsAdd.ContainsKey(hh[Length(hh) - 1]) then
    begin
      hostsAdd.Remove(hh[Length(hh) - 1]);
    end;
  end;
  for k in hostsAdd.Keys do
  begin
    ts.Add(Format('%s	%s', [hostsadd.Items[k], k]));
  end;
  ts.SaveToFile(hostsPath);
  ts.Free;
  //ts := nil;
  st.Free;
  //st := nil;
  MessageBox(Handle, '一键免登录已应用！', '提示', MB_OK + MB_ICONINFORMATION);
end;

end.

