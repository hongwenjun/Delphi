unit EBK3HeadByteModel;

interface

type
  TEBK3HeadByteModel = class
  public
    byteauthor10: TArray<Byte>;
    bytebook_file_type3: array[0..4] of Byte;
    bytechapter_dyn_info_offset5: array[0..4] of Byte;
    bytechapter_list_offset4: array[0..4] of Byte;
    bytecover_data_offset6: array[0..4] of Byte;
    bytecreate_timer8: TArray<Byte>;
    bytecreator7: array[0..4] of Byte;
    bytefile_size14: TArray<Byte>;
    byteisbn13: TArray<Byte>;
    bytemin_version1: array[0..4] of Byte;
    bytename9: TArray<Byte>;
    bytepublisher12: TArray<Byte>;
    byterevise_version16: TArray<Byte>;
    bytesubject11: TArray<Byte>;
    byteunique_identifier2: TArray<Byte>;
  end;

implementation

end.

