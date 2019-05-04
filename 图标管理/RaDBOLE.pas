unit RaDBOLE;

interface

uses
  SysUtils, Classes, DB, DBTables, JPEG, ExtCtrls, GIFCtrl;

type
  TImageType = (itBMP, itJPG, itGIF, itOther);
  TOnSaveData = procedure(Sender: TObject) of object;
  TOnLoadData = procedure(Sender: TObject) of object;
  TOnShowImage = procedure(Sender: TObject; ImageType: TImageType) of object;

type
  TRaDBOLE = class(TComponent)
  private
    fDataSet: TDataSource;
    fDataField: string;
    fImage: TImage;
    fGifImage: TRxGIFAnimator;
    fOnSaveData: TOnSaveData;
    fOnLoadData: TOnLoadData;
    fOnShowImage: TOnShowImage;
  protected

  public
    constructor Create(AOwner: TComponent); override;
    {保存到数据库}
    function SaveToDatabase(AFileName: string): boolean;
    {追加到数据库}
    function AppendToDatabase(AFileName: string): boolean;
    {从数据库读出到流}
    function LoadToStream(var AStream: TStream): boolean;
    {从数据库读出到文件}
    function LoadToFile(AFileName: string): boolean;
    {读取图片}
    procedure GetImage;
  published
    property DataSet: TDataSource read fDataSet write fDataSet;
    property DataField: string read fDataField write fDataField;
    property Image: TImage read fImage write fImage;
    property GifImage: TRxGIFAnimator read fGifImage write fGifImage;
    property OnSaveData: TOnSaveData read fOnSaveData write fOnSaveData;
    property OnLoadData: TOnLoadData read fOnLoadData write fOnLoadData;
    property OnShowImage: TOnShowImage read fOnShowImage write fOnShowImage;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rarnu Components', [TRaDBOLE]);
end;

{ TRaDBOLE }

function TRaDBOLE.AppendToDatabase(AFileName: string): boolean;
var
  mm: tmemorystream;
begin
  result := True;
  mm := tmemorystream.Create;
  mm.LoadFromFile(AFileName);
  mm.Position := 0;
  try
    fDataSet.DataSet.Append;
    tblobfield(fDataSet.DataSet.FieldByName(fDataField)).LoadFromStream(mm);
    fDataSet.DataSet.Post;
  except
    result := False;
  end;
  mm.Free;
  if Assigned(OnSaveData) then
    OnSaveData(Self);
end;

constructor TRaDBOLE.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fDataSet := nil;
  fDataField := '';
  fImage := nil;
end;

procedure TRaDBOLE.GetImage;
var
  ww: tmemorystream;
  JPEG: TJPEGImage;
  IT: TImageType;
begin
  if fImage = nil then Exit;
  ww := tmemorystream.Create;
  tblobfield(fDataSet.DataSet.FieldByName(fDataField)).SaveToStream(ww);
  try
    fImage.Picture.Assign(fDataSet.DataSet.FieldByName(fDataField));
    IT := itBMP;
  except
    try
      JPEG := TJPEGImage.Create;
      JPEG.Assign(fDataSet.DataSet.FieldByName(fDataField));
      fImage.Picture.Assign(JPEG);
      IT := itJPG;
    except
      try
        if fGifImage = nil then Exit;
        fGifImage.Image.Assign(fDataSet.DataSet.FieldByName(fDataField));
        IT := itGIF;
      except
        IT := itOther;
      end;
    end;
  end;
  //fImage.Picture.Graphic.LoadFromStream(ww);
  ww.Free;
  if Assigned(OnShowImage) then
    OnShowImage(Self, IT);
end;

function TRaDBOLE.LoadToFile(AFileName: string): boolean;
var
  tt: tmemorystream;
begin
  result := True;
  tt := tmemorystream.Create;
  try
    tblobfield(fDataSet.DataSet.FieldByName(fDataField)).SaveToStream(tt);
    tt.Position := 0;
    tt.SaveToFile(AFileName);
  except
    result := False;
  end;
  tt.Free;
  if Assigned(OnLoadData) then
    OnLoadData(Self);
end;

function TRaDBOLE.LoadToStream(var AStream: TStream): boolean;
var
  tt: tmemorystream;
begin
  result := True;
  tt := tmemorystream.Create;
  try
    tblobfield(fDataSet.DataSet.FieldByName(fDataField)).SaveToStream(tt);
    tt.Position := 0;
    AStream := tt;
  except
    result := False;
  end;
  tt.Free;
  if Assigned(OnLoadData) then
    OnLoadData(Self);
end;

function TRaDBOLE.SaveToDatabase(AFileName: string): boolean;
var
  mm: tmemorystream;
begin
  result := True;
  mm := tmemorystream.Create;
  mm.LoadFromFile(AFileName);
  mm.Position := 0;
  try
    fDataSet.Edit;
    tblobfield(fDataSet.DataSet.FieldByName(fDataField)).LoadFromStream(mm);
    fDataSet.DataSet.Post;
  except
    result := False;
  end;
  mm.Free;
  if Assigned(OnSaveData) then
    OnSaveData(Self);
end;

end.
