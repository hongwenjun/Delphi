unit frmScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls,
  Registry, Utils, Winapi.ShlObj, System.IniFiles, Winapi.ShellAPI;

type
  TfScreen = class(TTBaseForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    grp1: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    px, py: Integer;
    regString: WideString;
    ARegistry: TRegistry;
    X4SettingsPath: WideString;
    X4SettingsIniFile: TIniFile;
  private
    function GetX: Double;
    function GetY: Double;
    procedure SetXY(X, Y: Double);
  public
    { Public declarations }
  end;

var
  fScreen: TfScreen;

implementation

{$R *.dfm}

procedure TfScreen.btn1Click(Sender: TObject);
var
  h, v: Integer;
begin
  inherited;
  h := 0;
  v := 0;
  TryStrToInt(edt1.Text, h);
  TryStrToInt(edt2.Text, v);
  edt3.Text := Format('%8f', [px / h * 1000]);
  edt4.Text := Format('%8f', [py / v * 1000]);
end;

procedure TfScreen.btn2Click(Sender: TObject);
var
  X, Y: Double;
begin
  inherited;
  TryStrToFloat(edt3.Text, X);
  TryStrToFloat(edt4.Text, Y);
  SetXY(X, Y);

  edt5.Text := Format('%8f', [GetX]);
  edt6.Text := Format('%8f', [GetY]);
end;

procedure TfScreen.btn3Click(Sender: TObject);
begin
  inherited;
  ShellExecute(Self.Handle, 'open', PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
  if FApp.VersionMajor > 15 then
  begin
    FApp.Quit;
  end
  else
  begin
    TerminateProcess(FApp.ActiveWindow.Handle, 0);
  end;
end;

procedure TfScreen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ARegistry.Destroy;
  X4SettingsIniFile.Destroy;
end;

procedure TfScreen.FormCreate(Sender: TObject);
var
  dc: HDC;
  h, v: Integer;
  ppidl: PItemIDList;
  path: PWideChar;
begin
  inherited;
  dc := GetDC(0);
  h := GetDeviceCaps(dc, HORZSIZE);
  v := GetDeviceCaps(dc, VERTSIZE);
  edt1.Text := IntToStr(h);
  edt2.Text := IntToStr(v);
  lbl1.Caption := Format('ÆÁÄ»³ß´çÎª:%dºÁÃ×¡Á%dºÁÃ×£¬%fÓ¢´ç', [h, v, sqrt(h * h + v * v)]);
  px := GetDeviceCaps(dc, HORZRES);
  py := GetDeviceCaps(dc, VERTRES);
  lbl2.Caption := Format('ÆÁÄ»·Ö±æÂÊÎª:%d¡Á%d', [px, py]);

  regString := Format('SOFTWARE\Corel\CorelDRAW\%d.0\Draw\Application Preferences\', [FApp.VersionMajor]);
  ARegistry := TRegistry.Create;
  ARegistry.RootKey := HKEY_CURRENT_USER;

  X4SettingsPath := GetFolderPath(CSIDL_APPDATA) + '\Corel\CorelDRAW Graphics Suite X4\User Config\corelapp.ini';
  X4SettingsIniFile := TIniFile.Create(X4SettingsPath);

  edt5.Text := Format('%8f', [GetX]);
  edt6.Text := Format('%8f', [GetY]);

  btn1Click(nil);
end;

function TfScreen.GetX;
var
  X: Double;
begin
  X := 0;
  if FApp.VersionMajor > 16 then
  begin
    Result := Double(FApp.GetApplicationPreferenceValue('Zoom Tool', 'DisplayPixelsPerMeterX'));
  end
  else if (FApp.VersionMajor > 14) and (FApp.VersionMajor < 17) then
  begin
    if ARegistry.OpenKey(regString + 'Zoom Tool', False) then
    begin
      TryStrToFloat(ARegistry.ReadString('DisplayPixelsPerMeterX'), X);
      Result := x;
      ARegistry.CloseKey;
    end;
  end
  else
  begin
    Result := X4SettingsIniFile.ReadFloat('DisplayInfo', 'ScreenScaleFactorX', 0);
  end;
end;

function TfScreen.GetY;
var
  Y: Double;
begin
  if FApp.VersionMajor > 16 then
  begin
    Result := Double(FApp.GetApplicationPreferenceValue('Zoom Tool', 'DisplayPixelsPerMeterY'));
  end
  else if (FApp.VersionMajor > 14) and (FApp.VersionMajor < 17) then
  begin
    if ARegistry.OpenKey(regString + 'Zoom Tool', False) then
    begin
      TryStrToFloat(ARegistry.ReadString('DisplayPixelsPerMeterX'), Y);
      Result := Y;
      ARegistry.CloseKey;
    end;
  end
  else
  begin
    Result := X4SettingsIniFile.ReadFloat('DisplayInfo', 'ScreenScaleFactorY', 0);
  end;
end;

procedure TfScreen.SetXY(X, Y: Double);
begin
  if FApp.VersionMajor > 16 then
  begin
    FApp.SetApplicationPreferenceValue('Zoom Tool', 'DisplayPixelsPerMeterX', X);
    FApp.SetApplicationPreferenceValue('Zoom Tool', 'DisplayPixelsPerMeterY', Y);
  end
  else if (FApp.VersionMajor > 14) and (FApp.VersionMajor < 17) then
  begin
    if ARegistry.OpenKey(regString + 'Zoom Tool', False) then
    begin
      ARegistry.WriteString('DisplayPixelsPerMeterX', FloatToStr(X));
      ARegistry.WriteString('DisplayPixelsPerMeterY', FloatToStr(Y));
      ARegistry.CloseKey;
    end;
  end
  else
  begin
    X4SettingsIniFile.WriteFloat('DisplayInfo', 'ScreenScaleFactorX', X);
    X4SettingsIniFile.WriteFloat('DisplayInfo', 'ScreenScaleFactorY', Y);
  end;
end;

end.

