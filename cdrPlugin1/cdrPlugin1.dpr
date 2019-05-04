library cdrPlugin1;

{ Reduce EXE size by disabling as much of RTTI as possible (delphi 2009/2010) }
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}

{$R *.dres}

uses
  Winapi.Windows,
  Winapi.ActiveX,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Forms,
  VGCore_TLB in 'X8\VGCore_TLB.pas',
  frmMain in 'frmMain.pas' {fMain},
  BaseForm in 'BaseForm.pas' {TBaseForm},
  frmToJPG in 'frmToJPG.pas' {fToJPG},
  frmTest in 'frmTest.pas' {fTest},
  Utils in 'Utils.pas',
  frmConvertTo in 'frmConvertTo.pas' {fConvertTo},
  frmScreen in 'frmScreen.pas' {fScreen},
  frmCropMark in 'frmCropMark.pas' {fCropMark},
  Generics.Collections,
  frmOnekeyPS in 'frmOnekeyPS.pas' {fOnekeyPS},
  frmQrcode in 'frmQrcode.pas' {fQrcode},
  ArrayEx in 'ArrayEx.pas',
  System.IOUtils,
  frmSelect in 'frmSelect.pas' {fSelect},
  System.IniFiles,
  frmGroupSelection in 'frmGroupSelection.pas' {fGroupSelection},
  DelphiZXIngQRCode in 'QRCode\Encode\DelphiZXIngQRCode.pas',
  QR_URL in 'QRCode\Encode\QR_URL.pas',
  QR_Win1251 in 'QRCode\Encode\QR_Win1251.pas',
  QRGraphics in 'QRCode\Encode\QRGraphics.pas',
  ScanManager in 'QRCode\Decode\ScanManager.pas',
  Code93Reader in 'QRCode\Decode\1D Barcodes\Code93Reader.pas',
  Code128Reader in 'QRCode\Decode\1D Barcodes\Code128Reader.pas',
  ITFReader in 'QRCode\Decode\1D Barcodes\ITFReader.pas',
  MultiFormatOneDReader in 'QRCode\Decode\1D Barcodes\MultiFormatOneDReader.pas',
  OneDReader in 'QRCode\Decode\1D Barcodes\OneDReader.pas',
  Reader in 'QRCode\Decode\1D Barcodes\Reader.pas',
  QRCodeReader in 'QRCode\Decode\2D Barcodes\QRCodeReader.pas',
  BitMatrixParser in 'QRCode\Decode\2D Barcodes\Decoder\BitMatrixParser.pas',
  Datablock in 'QRCode\Decode\2D Barcodes\Decoder\Datablock.pas',
  Datamask in 'QRCode\Decode\2D Barcodes\Decoder\Datamask.pas',
  DecodedBitStreamParser in 'QRCode\Decode\2D Barcodes\Decoder\DecodedBitStreamParser.pas',
  ErrorCorrectionLevel in 'QRCode\Decode\2D Barcodes\Decoder\ErrorCorrectionLevel.pas',
  FormatInformation in 'QRCode\Decode\2D Barcodes\Decoder\FormatInformation.pas',
  GenericGF in 'QRCode\Decode\2D Barcodes\Decoder\GenericGF.pas',
  Mode in 'QRCode\Decode\2D Barcodes\Decoder\Mode.pas',
  QRCodeDecoderMetadata in 'QRCode\Decode\2D Barcodes\Decoder\QRCodeDecoderMetadata.pas',
  QRDecoder in 'QRCode\Decode\2D Barcodes\Decoder\QRDecoder.pas',
  ReedSolomonDecoder in 'QRCode\Decode\2D Barcodes\Decoder\ReedSolomonDecoder.pas',
  Version in 'QRCode\Decode\2D Barcodes\Decoder\Version.pas',
  AlignmentPattern in 'QRCode\Decode\2D Barcodes\Detector\AlignmentPattern.pas',
  AlignmentPatternFinder in 'QRCode\Decode\2D Barcodes\Detector\AlignmentPatternFinder.pas',
  Detector in 'QRCode\Decode\2D Barcodes\Detector\Detector.pas',
  FinderPattern in 'QRCode\Decode\2D Barcodes\Detector\FinderPattern.pas',
  FinderPatternFinder in 'QRCode\Decode\2D Barcodes\Detector\FinderPatternFinder.pas',
  FinderPatternInfo in 'QRCode\Decode\2D Barcodes\Detector\FinderPatternInfo.pas',
  BarcodeFormat in 'QRCode\Decode\Common\BarcodeFormat.pas',
  BitArray in 'QRCode\Decode\Common\BitArray.pas',
  Bitmatrix in 'QRCode\Decode\Common\Bitmatrix.pas',
  BitSource in 'QRCode\Decode\Common\BitSource.pas',
  CharacterSetECI in 'QRCode\Decode\Common\CharacterSetECI.pas',
  DecodeHintType in 'QRCode\Decode\Common\DecodeHintType.pas',
  DecoderResult in 'QRCode\Decode\Common\DecoderResult.pas',
  DefaultGridSampler in 'QRCode\Decode\Common\DefaultGridSampler.pas',
  DetectorResult in 'QRCode\Decode\Common\DetectorResult.pas',
  Helpers in 'QRCode\Decode\Common\Helpers.pas',
  MathUtils in 'QRCode\Decode\Common\MathUtils.pas',
  MultiFormatReader in 'QRCode\Decode\Common\MultiFormatReader.pas',
  PerspectiveTransform in 'QRCode\Decode\Common\PerspectiveTransform.pas',
  ReadResult in 'QRCode\Decode\Common\ReadResult.pas',
  ResultMetadataType in 'QRCode\Decode\Common\ResultMetadataType.pas',
  ResultPoint in 'QRCode\Decode\Common\ResultPoint.pas',
  StringUtils in 'QRCode\Decode\Common\StringUtils.pas',
  Binarizer in 'QRCode\Decode\Filtering\Binarizer.pas',
  BinaryBitmap in 'QRCode\Decode\Filtering\BinaryBitmap.pas',
  GlobalHistogramBinarizer in 'QRCode\Decode\Filtering\GlobalHistogramBinarizer.pas',
  HybridBinarizer in 'QRCode\Decode\Filtering\HybridBinarizer.pas',
  LuminanceSource in 'QRCode\Decode\Filtering\LuminanceSource.pas',
  RGBLuminanceSource in 'QRCode\Decode\Filtering\RGBLuminanceSource.Pas',
  SVGImage in 'QRCode\Encode\SVGImage.pas',
  frmFontRecognition in 'frmFontRecognition.pas' {fFontRecognition},
  CaptureImageTool in '..\截图\CaptureImageTool.pas' {TCaptureImageTool},
  Operate in '..\截图\Operate.pas',
  GdiPlus in '..\图标Base64生成\GdiPlus\Lib\GdiPlus.pas',
  GdiPlusHelpers in '..\图标Base64生成\GdiPlus\Lib\GdiPlusHelpers.pas',
  QRTool in 'QRTool.pas',
  frmAlign in 'frmAlign.pas' {fAlign},
  frmAllCommand in 'frmAllCommand.pas' {fAllCommand},
  frmFindText in 'frmFindText.pas' {fFindText},
  DragControl in '..\控件包\DragControl.pas',
  SpeedButtonEx in '..\控件包\SpeedButtonEx.pas',
  frmCheck in 'frmCheck.pas' {fCheck},
  frmBatchImport in 'frmBatchImport.pas' {fBatchImport},
  frmObj2Powerclip in 'frmObj2Powerclip.pas' {fObj2Powerclip};

{$R *.res}

type
  TisnPlugin = class(TObject, IVGAppPlugin, IDispatch, IUnknown)
    const
      CVersion: Integer = 2016091701;
      CommandBarName: WideString = 'tisn201600401';
      CommandID_All: WideString = 'cdrplugin1_全部';
      CommandID_ConvertTo: WideString = 'cdrplugin1_转换';
      CommandID_ToJPG: WideString = 'cdrplugin1_导出图片';
      CommandID_CropMark: WideString = 'cdrplugin1_裁切标记';
      CommandID_OnkeyPS: WideString = 'cdrplugin1_一键PS';
      CommandID_QRCode: WideString = 'cdrplugin1_二维码';
      CommandID_Select: WideString = 'cdrplugin1_同类选择';
      CommandID_FontRecognition: WideString = 'cdrplugin1_字体识别';
      //
      CommandID_PageAdaptation: WideString = 'cdrplugin1_页面适配';
      //
      CommandID_SuperUndo: WideString = 'cdrplugin1_超级撤销';
      CommandID_SuperRedo: WideString = 'cdrplugin1_超级重做';
  private
    FApp: IVGApplication;
    m_lCookie: longint;
    m_ulRefCount: ULONG;
    myCommandBar: ICUICommandBar;
    cmdList: TDictionary<WideString, WideString>;
    procedure OnAppStart; safecall;
    procedure OnPluginCMD(strCMD: string); safecall;
    procedure AddPluginCommands;
    procedure RemovePluginCommands;
    procedure OnException(Sender: TObject; E: Exception);
  public
    constructor Create;
  public
    //IVGAppPlugin
    procedure OnLoad(const Application: IVGApplication); safecall;
    procedure StartSession; safecall;
    procedure StopSession; safecall;
    procedure OnUnload; safecall;
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

constructor TisnPlugin.Create;
begin
  m_ulRefCount := 0;
  cmdList := TDictionary<WideString, WideString>.Create;
  cmdList.Add(CommandID_All, '所有');
  cmdList.Add(CommandID_ToJPG, '导出图片|强大的导出图片工具');
  cmdList.Add(CommandID_ConvertTo, '转换');
  cmdList.Add(CommandID_CropMark, '裁切标记');
  cmdList.Add(CommandID_OnkeyPS, '一键PS|一键调用PS修图');
  cmdList.Add(CommandID_QRCode, '二维码');
  cmdList.Add(CommandID_Select, '同类选择');
  cmdList.Add(CommandID_FontRecognition, '字体识别');

  cmdList.Add(CommandID_PageAdaptation, '页面适配|设置页面大小为选中对象大小');

  cmdList.Add(CommandID_SuperUndo, '超级撤销|超级撤销，如果执行了大批量操作，请使用这个');
  cmdList.Add(CommandID_SuperRedo, '超级重做|超级重做，如果执行了大批量操作，请使用这个');
end;

procedure TisnPlugin.OnAppStart;
var
  st: TResourceStream;
  tmpPath: string;
  inifile: TIniFile;
  rVersion: Integer;
begin
  Vcl.Forms.Application.Handle := FApp.AppWindow.Handle;
  Vcl.Forms.Application.OnException := OnException;
  AddPluginCommands;
  inifile := GetSettingsInifile;
  rVersion := inifile.ReadInteger('插件配置', '版本号', 0);
  //如果版本号不对，强制删除当前工具栏
  if rVersion <> CVersion then
  begin
    try
      FApp.CommandBars.Item[CommandBarName].Delete;
    finally
      inifile.WriteInteger('插件配置', '版本号', CVersion);
    end;
  end;
  inifile.Destroy;
  try
    myCommandBar := FApp.CommandBars.Item[CommandBarName];
  except

    tmpPath := TPath.GetTempPath + '\';
    if FApp.VersionMajor < 17 then
    begin
      st := TResourceStream.Create(HInstance, 'toolbar_x4', RT_RCDATA);
      st.SaveToFile(tmpPath + 'TTx4.xslt');
      st.Free;
      FApp.ImportWorkspace(tmpPath + 'TTx4.xslt');
      DeleteFile(tmpPath + 'TTx4.xslt')
    end
    else if FApp.VersionMajor = 17 then
    begin
      st := TResourceStream.Create(HInstance, 'toolbar_x7', RT_RCDATA);
      st.SaveToFile(tmpPath + 'TTx7.cdws');
      st.Free;
      FApp.ImportWorkspace(tmpPath + 'TTx7.cdws');
      DeleteFile(tmpPath + 'TTx7.cdws')
    end
    else if FApp.VersionMajor >= 18 then
    begin
      st := TResourceStream.Create(HInstance, 'toolbar_x8', RT_RCDATA);
      st.SaveToFile(tmpPath + 'TTx8.cdws');
      st.Free;
      FApp.ImportWorkspace(tmpPath + 'TTx8.cdws');
      DeleteFile(tmpPath + 'TTx8.cdws')
    end;
    FApp.CommandBars.Item[CommandBarName].Visible := True;
  end;

  Exit;
end;

procedure TisnPlugin.OnPluginCMD(strCMD: string);
begin
  if not Assigned(fAllCommand) then
    fAllCommand := TfAllCommand.Create(Vcl.Forms.Application, FApp);
  if strCMD = CommandID_All then
  begin
    if not Assigned(ffMain) then
      ffMain := TfMain.Create(Vcl.Forms.Application, FApp);
    ffMain.Show;
  end
  else if strCMD = CommandID_ToJPG then
  begin
    if not Assigned(ffToJPG) then
      ffToJPG := TfToJPG.Create(Vcl.Forms.Application, FApp);
    ffToJPG.Show;
  end
  else if strCMD = CommandID_ConvertTo then
  begin
    if not Assigned(fConvertTo) then
      fConvertTo := TfConvertTo.Create(Vcl.Forms.Application, FApp);
    fConvertTo.Show;
  end
  else if strCMD = CommandID_CropMark then
  begin
    if not Assigned(fCropMark) then
      fCropMark := TfCropMark.Create(Vcl.Forms.Application, FApp);
    fCropMark.Show;
  end
  else if strCMD = CommandID_OnkeyPS then
  begin
    if not Assigned(fOnekeyPS) then
      fOnekeyPS := TfOnekeyPS.Create(Vcl.Forms.Application, FApp);
    fOnekeyPS.Show;
  end
  else if strCMD = CommandID_QRCode then
  begin
    if not Assigned(fQrcode) then
      fQrcode := TfQrcode.Create(Vcl.Forms.Application, FApp);
    fQrcode.Show;
  end
  else if strCMD = CommandID_Select then
  begin
    if not Assigned(fSelect) then
      fSelect := TfSelect.Create(Vcl.Forms.Application, FApp);
    fSelect.Show;
  end
  else if strCMD = CommandID_FontRecognition then
  begin
    if not Assigned(ffMain) then
      ffMain := TfMain.Create(Vcl.Forms.Application, FApp);
    ffMain.Show;
  end
  else if strCMD = CommandID_PageAdaptation then
  begin
    fAllCommand.PageAdaptation;
  end
  else if strCMD = CommandID_SuperUndo then
  begin
    fAllCommand.SuperUndo;
  end
  else if strCMD = CommandID_SuperRedo then
  begin
    fAllCommand.SuperRedo;
  end;
end;

procedure TisnPlugin.AddPluginCommands;
var
  pair: TPair<WideString, WideString>;
  ts: string;
  tss: TArray<string>;
begin
  for pair in cmdList do
  begin
    ts := pair.Value;
    tss := ts.Split(['|']);
    if Length(tss) = 2 then
    begin
      FApp.AddPluginCommand(pair.Key, tss[0], tss[1]);
    end
    else
    begin
      FApp.AddPluginCommand(pair.Key, pair.Value, pair.Value);
    end;
  end;
end;

procedure TisnPlugin.RemovePluginCommands;
var
  pair: TPair<WideString, WideString>;
begin
  for pair in cmdList do
  begin
    FApp.RemovePluginCommand(pair.Key);
  end;
end;

procedure TisnPlugin.OnException(Sender: TObject; E: Exception);
begin
  DebugUtils.ShowMessage('TisnPlugin.OnException' + E.Message);
end;
{$REGION 'IVGAppPlugin'}

procedure TisnPlugin.OnLoad(const Application: IVGApplication);
begin
  self.FApp := Application;
  if self.FApp <> nil then
  begin
    self.FApp._AddRef;
  end;
end;

procedure TisnPlugin.StartSession;
begin
  try
    self.m_lCookie := self.FApp.AdviseEvents(self);
  except
    on E: Exception do
      MessageBox(0, PWideChar(E.Message + e.StackTrace), 'StartSession', 0);
  end;
end;

procedure TisnPlugin.StopSession;
begin
  if FApp.VersionMajor = 14 then
  begin
    self.FApp.UnadviseEvents(self.m_lCookie);
    RemovePluginCommands;
    if self.FApp <> nil then
    begin
      self.Destroy;
    end;
  end;
end;

procedure TisnPlugin.OnUnload;
begin
  self.FApp.UnadviseEvents(self.m_lCookie);
  RemovePluginCommands;
  if self.FApp <> nil then
  begin
    self.Destroy;
  end;
end;
{$ENDREGION}

function TisnPlugin.GetTypeInfoCount(out Count: Integer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TisnPlugin.GetTypeInfo(Index: Integer; LocaleID: Integer; out TypeInfo): HResult;
begin
  Result := E_NOTIMPL;
end;

function TisnPlugin.GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount: Integer; LocaleID: Integer; DispIDs: Pointer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TisnPlugin.Invoke(dispid: Integer; const IID: TGUID; LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; stdcall;
var
  strCMD: WideString;
  DispParams: TDispParams;
begin
  DispParams := TDispParams(Params);
  case dispid of
    $0011:
      begin // DISPID_APP_SELCHANGE

      end;
    $0012:
      begin // DISPID_APP_START
        OnAppStart;
      end;
    $0014:
      begin // DISPID_APP_ONPLUGINCMD
      {单击按钮事件}
        if Variant(DispParams.cArgs = 1) then
        begin
          strCMD := DispParams.rgvarg^[0].bstrVal;
          OnPluginCMD(strCmd);
        end;
      end;
    $0015:
      begin // DISPID_APP_ONPLUGINCMDSTATE
        if DispParams.cArgs = 3 then
        begin
          strCMD := DispParams.rgvarg^[2].bstrVal;
          if cmdList.ContainsKey(strCMD) then
          begin
            DispParams.rgvarg^[1].pbool^ := FApp.Documents.Count > 0;
          end;
        end;
      end;
  end;
  Result := S_OK;
end;

function TisnPlugin.QueryInterface(const IID: TGUID; out Obj): Hresult;
var
  hr: HResult;
begin
  hr := S_OK;
  //Inc(m_ulRefCount);
  if (IID = IID_IUnknown) then
  begin
    IUnknown(Obj) := self;
  end
  else if (IID = IID_IDispatch) then
  begin
    IDispatch(Obj) := self;
  end
  else if (IID = IID_IVGAppPlugin) then
  begin
    IVGAppPlugin(Obj) := Self;
  end
  else
  begin
    //Dec(m_ulRefCount);
    hr := E_NOINTERFACE;
  end;
  Result := hr;
end;

function TisnPlugin._AddRef;
begin
  inc(self.m_ulRefCount);
  Result := self.m_ulRefCount;
end;

function TisnPlugin._Release;
begin
  dec(self.m_ulRefCount);
  if (self.m_ulRefCount = 0) then
  begin
    //Destroy;
  end;
  Result := self.m_ulRefCount;
end;

function AttachPlugin(var ppIPlugin): ULONG; stdcall;
begin
  IVGAppPlugin(ppIPlugin) := TisnPlugin.Create;
  Result := $100;
end;

function DllEnterPoint(Reason: Integer): Boolean;
begin
  Result := True;
end;

exports
  AttachPlugin;

begin
  DllProc := @DllEnterPoint;
  DllEnterPoint(DLL_PROCESS_ATTACH);
end.

