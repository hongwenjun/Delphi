unit blockinfobyteModel;

interface

type
  TblockinfobyteModel = class
  public
    bytechapter_content_decompress_lengt12: TArray<Byte>;
    bytechapter_file_size13: TArray<Byte>;
    bytechapter_index: TArray<Byte>;
    bytechapter_level: TArray<Byte>;
    bytechapter_name: TArray<Byte>;
    bytecompress_block_size: TArray<Byte>;
    bytecompress_type: TArray<Byte>;
    bytedatatype: TArray<Byte>;
    byteencoding: TArray<Byte>;
    bytefile_list_offset11: TArray<Byte>;
    bytelocale: TArray<Byte>;
    bytemin_tip: TArray<Byte>;
    bytemin_version: TArray<Byte>;
    constructor Create;
  end;

implementation

constructor TblockinfobyteModel.Create;
begin
  SetLength(Self.bytemin_version, 4);
  SetLength(self.bytecompress_type, 4);
  SetLength(self.bytecompress_block_size, 4);
  SetLength(self.bytedatatype, 4);
  SetLength(self.bytelocale, 4);
  SetLength(self.byteencoding, 4);
  SetLength(self.bytechapter_index, 4);
  SetLength(self.bytechapter_level, 4);
  SetLength(self.bytefile_list_offset11, 4);
  SetLength(self.bytechapter_content_decompress_lengt12, 4);
  SetLength(self.bytechapter_file_size13, 4);
end;

end.

