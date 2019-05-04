unit DynDataStruct;

interface

type
  TDynDataStruct = record
  public
    book_id: Cardinal;
    chapter_list_length: Cardinal;
    chapter_list_offset: Cardinal;
    dyn_data_length: Cardinal;
  end;

implementation

end.

