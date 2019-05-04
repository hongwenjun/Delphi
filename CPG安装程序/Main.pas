unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Zip,
  System.IniFiles, Winapi.ShlObj, System.IOUtils, Generics.Collections, Utils,
  System.Win.Registry;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    chk_X4: TCheckBox;
    chk_X5: TCheckBox;
    chk_X632: TCheckBox;
    chk_X664: TCheckBox;
    chk_X732: TCheckBox;
    chk_X764: TCheckBox;
    chk_X832: TCheckBox;
    chk_X864: TCheckBox;
    btn_Install: TButton;
    btn_Uninstall: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_InstallClick(Sender: TObject);
  private
    tmpPath: WideString;
    X4s: Boolean;
    X5s: Boolean;
    X632s: Boolean;
    X664s: Boolean;
    X732s: Boolean;
    X764s: Boolean;
    X832s: Boolean;
    X864s: Boolean;
    X4p: WideString;
    X5p: WideString;
    X632p: WideString;
    X664p: WideString;
    X732p: WideString;
    X764p: WideString;
    X832p: WideString;
    X864p: WideString;
    X4l: TDictionary<string, string>;
    X5l: TDictionary<string, string>;
    X632l: TDictionary<string, string>;
    X664l: TDictionary<string, string>;
    X732l: TDictionary<string, string>;
    X764l: TDictionary<string, string>;
    X832l: TDictionary<string, string>;
    X864l: TDictionary<string, string>;
    iniF: TIniFile;
    ARegistry: TRegistry;
    procedure GetInstalledPath;
    procedure Install;
    function CopyFileTA(src, dest: string): Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_InstallClick(Sender: TObject);
begin
  Install;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TDirectory.Delete(tmpPath, True);
  iniF.Destroy;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  st: TResourceStream;
  zf: TZipFile;
  tl: TStrings;
  t, t1: string;
  tll: TArray<string>;
begin
  tmpPath := TPath.GetTempPath + '\cpginstall\';
  if not FileExists(tmpPath) then
  begin
    CreateDir(tmpPath);
  end;
  st := TResourceStream.Create(HInstance, 'install', RT_RCDATA);
  st.SaveToFile(tmpPath + 'install.zip');
  st.Free;
  zf := TZipFile.Create;
  zf.Open(tmpPath + 'install.zip', zmRead);
  zf.ExtractAll(tmpPath + 'install\');
  zf.Close;
  iniF := TIniFile.Create(tmpPath + 'install\install.ini');
  self.Caption := iniF.ReadString('配置', '标题', '插件安装');
  X4s := iniF.ReadBool('支持', 'X4', False);
  X5s := iniF.ReadBool('支持', 'X5', False);
  X632s := iniF.ReadBool('支持', 'X6_32', False);
  X664s := iniF.ReadBool('支持', 'X6_64', False);
  X732s := iniF.ReadBool('支持', 'X7_32', False);
  X764s := iniF.ReadBool('支持', 'X7_64', False);
  X832s := iniF.ReadBool('支持', 'X8_32', False);
  X864s := iniF.ReadBool('支持', 'X8_64', False);

  if not IsWin64 then
  begin
    X664s := False;
    X764s := False;
    X864s := False;
  end;

  GetInstalledPath;
  tl := TStringList.Create;
  if X4s then
  begin
    if X4p = '' then
    begin
      X4s := False;
    end
    else
    begin
      iniF.ReadSection('X4', tl);
      X4l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X4', t, '');

        tll := t1.Split([';']);
        X4l.Add(tmpPath + 'install\' + tll[0], X4p + tll[1]);
      end;
    end;
  end;
  if x5s then
  begin
    if X5p = '' then
    begin
      X5s := False;
    end
    else
    begin
      iniF.ReadSection('X5', tl);
      X5l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X5', t, '');
        tll := t1.Split([';']);
        X5l.Add(tmpPath + 'install\' + tll[0], X5p + tll[1]);
      end;
    end;
  end;
  if x632s then
  begin
    if X632p = '' then
    begin
      X632s := False;
    end
    else
    begin
      iniF.ReadSection('X6_32', tl);
      X632l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X6_32', t, '');
        tll := t1.Split([';']);
        X632l.Add(tmpPath + 'install\' + tll[0], X632p + tll[1]);
      end;
    end;
  end;
  if x664s then
  begin
    if X664p = '' then
    begin
      X664s := False;
    end
    else
    begin
      iniF.ReadSection('X6_64', tl);
      X664l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X6_64', t, '');
        tll := t1.Split([';']);
        X664l.Add(tmpPath + 'install\' + tll[0], X664p + tll[1]);
      end;
    end;
  end;
  if x732s then
  begin
    if X732p = '' then
    begin
      X732s := False;
    end
    else
    begin
      iniF.ReadSection('X7_32', tl);
      X732l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X7_32', t, '');
        tll := t1.Split([';']);
        X732l.Add(tmpPath + 'install\' + tll[0], X732p + tll[1]);
      end;
    end;
  end;
  if x764s then
  begin
    if X764p = '' then
    begin
      X764s := False;
    end
    else
    begin
      iniF.ReadSection('X7_64', tl);
      X764l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X7_64', t, '');
        tll := t1.Split([';']);
        X764l.Add(tmpPath + 'install\' + tll[0], X764p + tll[1]);
      end;
    end;
  end;
  if x832s then
  begin
    if X832p = '' then
    begin
      X832s := False;
    end
    else
    begin
      iniF.ReadSection('X8_32', tl);
      X832l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X8_32', t, '');
        tll := t1.Split([';']);
        X832l.Add(tmpPath + 'install\' + tll[0], X832p + tll[1]);
      end;
    end;
  end;
  if x864s then
  begin
    if X864p = '' then
    begin
      X864s := False;
    end
    else
    begin
      iniF.ReadSection('X8_64', tl);
      X864l := TDictionary<string, string>.Create;
      for t in tl do
      begin
        t1 := iniF.ReadString('X8_64', t, '');
        tll := t1.Split([';']);
        X864l.Add(tmpPath + 'install\' + tll[0], X864p + tll[1]);
      end;
    end;
  end;

  chk_X4.Checked := X4s;
  chk_X4.Enabled := X4s;
  chk_X5.Checked := X5s;
  chk_X5.Enabled := X5s;
  chk_X632.Checked := X632s;
  chk_X632.Enabled := X632s;
  chk_X664.Checked := X664s;
  chk_X664.Enabled := X664s;
  chk_X732.Checked := X732s;
  chk_X732.Enabled := X732s;
  chk_X764.Checked := X764s;
  chk_X764.Enabled := X764s;
  chk_X832.Checked := X832s;
  chk_X832.Enabled := X832s;
  chk_X864.Checked := X864s;
  chk_X864.Enabled := X864s;
end;

procedure TForm1.GetInstalledPath;
var
  t1: TStrings;
  s: string;
  i: Integer;
begin
  DisableWowRedirection;
  ARegistry := TRegistry.Create;
  ARegistry.RootKey := HKEY_LOCAL_MACHINE;
  t1 := TStringList.Create;
  if iswin64 then
  begin
    //64位
    ARegistry.Access := KEY_WOW64_64KEY or KEY_ALL_ACCESS;
    if ARegistry.OpenKey('SOFTWARE\Corel\Setup', False) then
    begin
      ARegistry.GetKeyNames(t1);
      for s in t1 do
      begin
        if s.StartsWith('CorelDRAW') then
        begin
          ARegistry.CloseKey;
          i := 0;
          TryStrToInt(s.Substring(s.Length - 2), i);
          case i of
            16:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X664p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            17:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X764p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            18:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X864p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
          end;
        end;
      end;
    end;
    //32位
    ARegistry.Access := KEY_WOW64_32KEY or KEY_ALL_ACCESS;
    if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup', False) then
    begin
      ARegistry.GetKeyNames(t1);
      for s in t1 do
      begin
        if s.StartsWith('CorelDRAW') then
        begin
          ARegistry.CloseKey;
          i := 0;
          TryStrToInt(s.Substring(s.Length - 2), i);
          case i of
            14:
              begin
                if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup\' + s, False) then
                begin
                  X4p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            15:
              begin
                if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup\' + s, False) then
                begin
                  X5p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            16:
              begin
                if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup\' + s, False) then
                begin
                  X632p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            17:
              begin
                if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup\' + s, False) then
                begin
                  X732p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            18:
              begin
                if ARegistry.OpenKey('SOFTWARE\WOW6432Node\Corel\Setup\' + s, False) then
                begin
                  X832p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if ARegistry.OpenKey('SOFTWARE\Corel\Setup', False) then
    begin
      ARegistry.GetKeyNames(t1);
      for s in t1 do
      begin
        if s.StartsWith('CorelDRAW') then
        begin
          ARegistry.CloseKey;
          i := 0;
          TryStrToInt(s.Substring(s.Length - 2), i);
          case i of
            14:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X4p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            15:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X5p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            16:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X632p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            17:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X732p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
            18:
              begin
                if ARegistry.OpenKey('SOFTWARE\Corel\Setup\' + s, False) then
                begin
                  X832p := ARegistry.ReadString('Destination');
                  ARegistry.CloseKey;
                end;
              end;
          end;
        end;
      end;
    end;
  end;
  ARegistry.Destroy;
  RevertWowRedirection;
end;

procedure TForm1.Install;
var
  I: Integer;
  k, v: string;
begin
  if CheckTask('CorelDRW.exe') then
  begin
    MessageBox(Handle, 'CorelDraw正在运行，请退出后重试！', '错误', MB_OK + MB_ICONERROR);
    Exit;
  end;
  if chk_X4.Checked then
  begin
    for k in X4l.Keys do
    begin
      v := X4l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X5.Checked then
  begin
    for k in X5l.Keys do
    begin
      v := X5l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X632.Checked then
  begin
    for k in X632l.Keys do
    begin
      v := X632l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X664.Checked then
  begin
    for k in X664l.Keys do
    begin
      v := X664l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X732.Checked then
  begin
    for k in X732l.Keys do
    begin
      v := X732l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X764.Checked then
  begin
    for k in X764l.Keys do
    begin
      v := X764l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X832.Checked then
  begin
    for k in X832l.Keys do
    begin
      v := X832l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  if chk_X864.Checked then
  begin
    for k in X864l.Keys do
    begin
      v := X864l[k];
      if v.Endswith('\') then
      begin
        if not FileExists(v) then
        begin
          ForceDirectories(v);
        end;
      end
      else
      begin
        CopyFileTA(k, v);
      end;
    end;
  end;
  MessageBox(Handle, '插件已安装', '提示', MB_OK + MB_ICONINFORMATION);

end;

function TForm1.CopyFileTA(src: string; dest: string): Boolean;
var
  d: string;
begin
  Result := False;
  if not FileExists(src) then
  begin
    Exit;
  end;
  d := TPath.GetDirectoryName(dest);
  if not FileExists(d) then
  begin
    ForceDirectories(d);
  end;
  Result := CopyFile(PWideChar(src), PWideChar(dest), False);
end;

end.

