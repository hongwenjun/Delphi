unit blockinfoArray;

interface

uses
  System.Types, System.Classes, System.SysUtils, blockinfoModel,
  blockinfobyteModel;

type
  TblockinfoArray = class
  public
    function infoblockinfoarray(infomodel: TblockinfoModel; count: Integer): TArray<TArray<Byte>>;
  end;

implementation

function TblockinfoArray.infoblockinfoarray(infomodel: TblockinfoModel; count: Integer): TArray<TArray<Byte>>;
var
  objArray: TArray<TArray<Byte>>;
  model: TblockinfobyteModel;
begin
  SetLength(objArray, count);
  model := TblockinfobyteModel.Create;
  TBitConverter.From<Cardinal>(infomodel.min_version1, model.bytemin_version);
  model.bytemin_tip := TEncoding.Unicode.GetBytes(infomodel.min_tip2);
  TBitConverter.From<Cardinal>(infomodel.compress_type3, model.bytecompress_type);
  TBitConverter.From<Cardinal>(infomodel.compress_block_size4, model.bytecompress_block_size);
  TBitConverter.From<Cardinal>(infomodel.datatype5, model.bytedatatype);
  TBitConverter.From<Cardinal>(infomodel.locale6, model.bytelocale);
  TBitConverter.From<Cardinal>(infomodel.encoding7, model.byteencoding);
  TBitConverter.From<Cardinal>(infomodel.chapter_index8, model.bytechapter_index);
  TBitConverter.From<Word>(infomodel.chapter_level9, model.bytechapter_level);
  model.bytechapter_name := TEncoding.Unicode.GetBytes(infomodel.chapter_name10);
  TBitConverter.From<Cardinal>(infomodel.file_list_offset11, model.bytefile_list_offset11);
  TBitConverter.From<Cardinal>(infomodel.chapter_content_decompress_length12, model.bytechapter_content_decompress_lengt12);
  TBitConverter.From<Cardinal>(infomodel.chapter_file_size13, model.bytechapter_file_size13);
  objArray[0] := model.bytemin_version;
  objArray[1] := model.bytemin_tip;
  objArray[2] := model.bytecompress_type;
  objArray[3] := model.bytecompress_block_size;
  objArray[4] := model.bytedatatype;
  objArray[5] := model.bytelocale;
  objArray[6] := model.byteencoding;
  objArray[7] := model.bytechapter_index;
  objArray[8] := model.bytechapter_level;
  objArray[9] := model.bytechapter_name;
  objArray[10] := model.bytefile_list_offset11;
  objArray[11] := model.bytechapter_content_decompress_lengt12;
  objArray[12] := model.bytechapter_file_size13;
  Result := objArray
end;

end.

