unit TSThumbnail;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Winapi.Windows, ComObj, ActiveX, thumbnail_TLB, StdVcl, Winapi.ShlObj, System.Classes,
  System.SysUtils, Vcl.Graphics, System.IOUtils;

type
  TTSThumbnail = class(TComObject, IPersist, IPersistFile, IExtractImage, IExtractImage2)
  private
    FFileName: string;
  protected
    function IsDirty: HResult; stdcall;
    function Load(pszFileName: POleStr; dwMode: Longint): HResult; stdcall;
    function Save(pszFileName: POleStr; fRemember: BOOL): HResult; stdcall;
    function SaveCompleted(pszFileName: POleStr): HResult; stdcall;
    function GetCurFile(out pszFileName: POleStr): HResult; stdcall;
    function GetDateStamp(var pDateStamp: TFileTime): HRESULT; stdcall;
    function GetLocation(pszPathBuffer: LPWSTR; cch: DWORD; var pdwPriority: DWORD; var prgSize: TSize; dwRecClrDepth: DWORD; var pdwFlags: DWORD): HRESULT; stdcall;
    function Extract(var phBmpThumbnail: HBITMAP): HRESULT; stdcall;
    function GetClassID(out classID: TCLSID): HResult; stdcall;
  end;

  TTSThumbnailFactory = class(TComObjectFactory)
  public
    procedure UpdateRegistry(Register: Boolean); override;
  end;

implementation

uses
  ComServ, System.Win.Registry, Vcl.Imaging.jpeg;

const
  SDescription = 'Tisn Thumbnail';
  EXT_PSD = '.psd';

var
  FFileTypeList: TStrings;

function IsWin64: Boolean;
var
  Kernel32Handle: THandle;
  IsWow64Process: function(Handle: THandle; var Res: BOOL): BOOL; stdcall;
  GetNativeSystemInfo: procedure(var lpSystemInfo: TSystemInfo); stdcall;
  isWoW64: Bool;
  SystemInfo: TSystemInfo;
const
  PROCESSOR_ARCHITECTURE_AMD64 = 9;
  PROCESSOR_ARCHITECTURE_IA64 = 6;
begin
  Kernel32Handle := GetModuleHandle('KERNEL32.DLL');
  if Kernel32Handle = 0 then
    Kernel32Handle := LoadLibrary('KERNEL32.DLL');
  if Kernel32Handle <> 0 then
  begin
    IsWOW64Process := GetProcAddress(Kernel32Handle, 'IsWow64Process');
    GetNativeSystemInfo := GetProcAddress(Kernel32Handle, 'GetNativeSystemInfo');
    if Assigned(IsWow64Process) then
    begin
      IsWow64Process(GetCurrentProcess, isWoW64);
      Result := isWoW64 and Assigned(GetNativeSystemInfo);
      if Result then
      begin
        GetNativeSystemInfo(SystemInfo);
        Result := (SystemInfo.wProcessorArchitecture = PROCESSOR_ARCHITECTURE_AMD64) or (SystemInfo.wProcessorArchitecture = PROCESSOR_ARCHITECTURE_IA64);
      end;
    end
    else
      Result := False;
  end
  else
    Result := False;
end;

procedure RegisterWin32NT(const ClassID, Description: string; Register: Boolean);
begin
  OutputDebugString(PWideChar('[TISN]RegisterWin32NT:' + ClassID));
  {if IsWin64 then
  begin
    with TRegistry.Create do
    try
      Access := KEY_WOW64_64KEY or KEY_ALL_ACCESS;
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions', True);
      OpenKey('Approved', True);
      if Register then
        WriteString(ClassID, Description)
      else
        DeleteValue(ClassID)
    finally
      Free;
    end;
    with TRegistry.Create do
    try
      Access := KEY_WOW64_32KEY or KEY_ALL_ACCESS;
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions', True);
      OpenKey('Approved', True);
      if Register then
        WriteString(ClassID, Description)
      else
        DeleteValue(ClassID)
    finally
      Free;
    end;
  end
  else
  begin  }
  with TRegistry.Create do
  try
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions', True);
    OpenKey('Approved', True);
    if Register then
      WriteString(ClassID, Description)
    else
      DeleteValue(ClassID)
  finally
    Free;
  end;
  {end;   }
end;

procedure TTSThumbnailFactory.UpdateRegistry(Register: Boolean);
var
  ClassID: string;
  ft: string;
begin
  inherited UpdateRegistry(Register);
  ClassID := GUIDToString(Class_TSThumbnail);
  OutputDebugString(PWideChar('[TISN]TTSThumbnailFactory.UpdateRegistry' + ClassID));
  for ft in FFileTypeList do
  begin
    if Register then
    begin
      CreateRegKey(ft + '\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}', '', ClassID);
      RegisterWin32NT(ClassID, SDescription, Register);
    end
    else
    begin
      DeleteRegKey(ft + '\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}');
      RegisterWin32NT(ClassID, SDescription, Register);
    end;
  end;
end;

function TTSThumbnail.IsDirty;
begin
  Result := E_NOTIMPL;
end;

function TTSThumbnail.Load(pszFileName: PWideChar; dwMode: Integer): HResult;
begin
  OutputDebugString(PWideChar('[TISN]TTSThumbnail.Load fileName:' + pszFileName));
  FFileName := pszFileName;
  Result := S_OK;
end;

function TTSThumbnail.Save(pszFileName: PWideChar; fRemember: LongBool): HResult;
begin
  Result := E_NOTIMPL;
end;

function TTSThumbnail.SaveCompleted(pszFileName: PWideChar): HResult;
begin
  Result := E_NOTIMPL;
end;

function TTSThumbnail.GetCurFile(out pszFileName: PWideChar): HResult;
begin
  Result := E_NOTIMPL;
end;

function TTSThumbnail.GetDateStamp(var pDateStamp: _FILETIME): HResult;
begin
  Result := E_NOTIMPL;
end;

function TTSThumbnail.GetLocation(pszPathBuffer: PWideChar; cch: Cardinal; var pdwPriority: Cardinal; var prgSize: TSize; dwRecClrDepth: Cardinal; var pdwFlags: Cardinal): HResult;
begin
  OutputDebugString('[TISN]TTSThumbnail.GetLocation');
  pdwPriority := IEIT_PRIORITY_NORMAL;
  if (pdwFlags and IEIFLAG_ASYNC) = 0 then
  begin
    Result := E_PENDING;
  end
  else
  begin
    Result := E_PENDING;
  end;
  pdwFlags := pdwFlags + IEIFLAG_CACHE + IEIFLAG_REFRESH;
end;

function TTSThumbnail.Extract(var phBmpThumbnail: HBITMAP): HResult;
begin
  try
    phBmpThumbnail := LoadBitmap(HInstance, 'Bitmap_1');
    Result := S_OK;
    OutputDebugString('[TISN]TTSThumbnail.Extract ³É¹¦');
  except
    on E: Exception do
    begin
      Result := E_FAIL;
      OutputDebugString('[TISN]TTSThumbnail.Extract Ê§°Ü');
    end;
  end;

end;

function TTSThumbnail.GetClassID(out classID: TGUID): HResult;
begin
  Result := E_NOTIMPL;
end;

initialization
begin
  FFileTypeList := TStringList.Create;
  FFileTypeList.Add(EXT_PSD);
  TTSThumbnailFactory.Create(ComServer, TTSThumbnail, Class_TSThumbnail, 'TSThumbnail', SDescription, ciMultiInstance, tmApartment);

end;

end.

