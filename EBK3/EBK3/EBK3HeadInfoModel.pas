unit EBK3HeadInfoModel;

interface

type
  TEBK3HeadInfoModel = class
  public
    author10: string;
    book_file_type3: Cardinal;
    chapter_dyn_info_offset5: Cardinal;
    chapter_list_offset4: Cardinal;
    cover_data_offset6: Cardinal;
    create_timer8: string;
    creator7: string;
    file_size14: Cardinal;
    isbn13: string;
    min_version1: Cardinal;
    modellenth: Cardinal;
    name9: string;
    publisher12: string;
    revise_version16: Cardinal;
    subject11: string;
    unique_identifier2: string;
    constructor Create;
  end;

implementation

constructor TEBK3HeadInfoModel.Create;
begin
  self.modellenth := 15;
end;

end.

