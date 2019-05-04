unit PicModel;

interface

type
  TPicModel = class
  public
    cover_data: array of Byte;
    cover_data_length: ShortInt;
    cover_height: ShortInt;
    cover_img_type: ShortInt;
    cover_width: ShortInt;
  end;

implementation

end.

