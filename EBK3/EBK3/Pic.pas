unit Pic;

interface

uses
  System.SysUtils, PicModel, PicByteModel;

type
  TPic = class
  public
    function GetPicByte(model: TPicModel): TArray<Byte>;
  end;

implementation

function TPic.GetPicByte(model: TPicModel): TArray<Byte>;
var
  model2: TPicByteModel;
  objArray: array[0..5] of TObject;
  num: Integer;
  buffer: TArray<Byte>;
  num2: Integer;
  I: Integer;
begin
  model2 := TPicByteModel.Create;
  //model2.bytecover_img_type := model.cover_img_type.GetBytes;
end;

end.

