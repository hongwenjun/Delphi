unit PicHeadModel;

interface

type
  TPicHeadModel = class
  public
    cover_count: Integer;
    cover_header_length: Integer;
    constructor Create;
  end;

implementation

constructor TPicHeadModel.Create;
begin
  Self.cover_header_length := $10;
end;

end.

