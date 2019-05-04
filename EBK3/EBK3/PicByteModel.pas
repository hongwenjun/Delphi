unit PicByteModel;

interface

type
  TPicByteModel = class
  public
    bytecover_data: array[0..4] of Byte;
    bytecover_data_length: array[0..4] of Byte;
    bytecover_height: array[0..4] of Byte;
    bytecover_img_type: array[0..4] of Byte;
    bytecover_width: array[0..4] of Byte;
  end;

implementation

end.

