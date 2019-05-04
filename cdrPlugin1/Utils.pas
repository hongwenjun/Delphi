unit Utils;

interface

uses
  Winapi.ShlObj, System.SysUtils, Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, System.IniFiles, VGCore_TLB;

const
  DEBUG: Boolean = True;
  IID_IUnknown: TGUID = '{00000000-0000-0000-C000-000000000046}';
  IID_IDispatch: TGUID = '{00020400-0000-0000-C000-000000000046}';
  cdrCmdCategoryPlugins = 'ab489730-8791-45d2-a825-b78bbe0d6a5d';
  cdrControlIDSeparator = '266435b4-6e53-460f-9fa7-f45be187d400';
  cdrControlIDNewmenu = 'bc6d3e54-d8cd-449a-aa61-cd442d6617eb';
  E_NOTIMPL = HResult($80004001);
  E_NOINTERFACE = HResult($80004002);
  S_OK = HResult($0);
  {}
  DISPID_DOC_QUERYCLOSE = $01;
  DISPID_DOC_QUERYSAVE = $02;
  DISPID_DOC_QUERYPRINT = $03;
  DISPID_DOC_QUERYEXPORT = $04;
  DISPID_DOC_OPEN = $05;
  DISPID_DOC_CLOSE = $06;
  DISPID_DOC_BEFORESAVE = $07;
  DISPID_DOC_AFTERSAVE = $08;
  DISPID_DOC_BEFOREPRINT = $09;
  DISPID_DOC_AFTERPRINT = $0a;
  DISPID_DOC_BEFOREEXPORT = $0b;
  DISPID_DOC_AFTEREXPORT = $0c;
  DISPID_DOC_LAYERCREATE = $0d;
  DISPID_DOC_LAYERDELETE = $0e;
  DISPID_DOC_LAYERACTIVATE = $0f;
  DISPID_DOC_LAYERCHANGE = $10;
  DISPID_DOC_PAGECREATE = $11;
  DISPID_DOC_PAGEDELETE = $12;
  DISPID_DOC_PAGEACTIVATE = $13;
  DISPID_DOC_PAGECHANGE = $14;
  DISPID_DOC_SHAPECREATE = $15;
  DISPID_DOC_SHAPEDELETE = $16;
  DISPID_DOC_SHAPEMOVE = $17;
  DISPID_DOC_SHAPETRANSFORM = $18;
  DISPID_DOC_SHAPEDISTORT = $19;
  DISPID_DOC_SHAPECHANGE = $1a;
  DISPID_DOC_SELECTIONCHANGE = $1b;
  {}
  DISPID_APP_QUERYDOCUMENTCLOSE = $01;
  DISPID_APP_QUERYDOCUMENTSAVE = $02;
  DISPID_APP_QUERYDOCUMENTPRINT = $03;
  DISPID_APP_QUERYDOCUMENTEXPORT = $04;
  DISPID_APP_QUERYQUIT = $05;
  DISPID_APP_DOCUMENTOPEN = $06;
  DISPID_APP_DOCUMENTNEW = $07;
  DISPID_APP_DOCUMENTCLOSE = $08;
  DISPID_APP_DOCUMENTBEFORESAVE = $09;
  DISPID_APP_DOCUMENTAFTERSAVE = $0a;
  DISPID_APP_DOCUMENTBEFOREPRINT = $0b;
  DISPID_APP_DOCUMENTAFTERPRINT = $0c;
  DISPID_APP_DOCUMENTBEFOREEXPORT = $0d;
  DISPID_APP_DOCUMENTAFTEREXPORT = $0e;
  DISPID_APP_WINDOWACTIVATE = $0f;
  DISPID_APP_WINDOWDEACTIVATE = $10;
  DISPID_APP_SELECTIONCHANGE = $11;
  DISPID_APP_START = $12;
  DISPID_APP_QUIT = $13;
  DISPID_APP_ONPLUGINCOMMAND = $14;
  DISPID_APP_ONUPDATEPLUGINCOMMAND = $15;

function GetFolderPath(nFolder: Integer): string;
/// <summary>
/// 获取全局设置<b>TIniFile</b>，注意Destroy
/// </summary>
/// <returns>返回一个<b>TIniFile</b></returns>

function GetSettingsInifile: TIniFile;

function GetLife(s: IVGShape): Boolean;

type
  DebugUtils = class
    /// <summary>
    /// 显示调试信息
    /// </summary>
    /// <param name="msg"></param>
    class procedure ShowMessage(msg: WideString);
  end;

implementation

function GetFolderPath(nFolder: Integer): string;
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

function GetSettingsInifile: TIniFile;
var
  settingsPath: WideString;
  settingsIniFilename: WideString;
begin
  settingsPath := GetFolderPath(CSIDL_APPDATA) + '\tisn\settings\';
  if not FileExists(settingsPath) then
  begin
    ForceDirectories(settingsPath);
  end;
  settingsIniFilename := settingsPath + ChangeFileExt(ExtractFileName(GetModuleName(HInstance)), '') + '.ini';
  Result := TIniFile.Create(settingsIniFilename);
end;

function GetLife(s: IVGShape): Boolean;
begin
  try
    s.type_;
    Result := True;
  except
    Result := False;
  end;
end;

class procedure DebugUtils.ShowMessage(msg: WideString);
begin
  if DEBUG then
  begin
    MessageBox(HInstance, PWideChar(msg), 'DEBUG', 0);
  end;
end;

end.

