unit ByteToStructEbk3;

interface

uses
  EBK3HeadStruct, ChapterListStruct, blockStruct, ChapterHeadModelStruct,
  DynDataStruct, Util, System.SysUtils, System.Types;

type
  TByteToStructEbk3 = class
  private
    class function GetBytes(length: Integer; var offset: Integer; buff: TArray<Byte>): TArray<Byte>; static;
    class function GetInt16(length: Integer; var offset: Integer; buff: TArray<Byte>): Integer; static;
    class function GetInt32(length: Integer; var offset: Integer; buff: TArray<Byte>): Cardinal; static;
  public
    function GetBlockFileList(buffs: TArray<Byte>): TChapterListStruct;
    function GetBlockStruct(buffs: TArray<Byte>): TblockStruct;
    function GetChapterHeadModelStruct(buffs: TArray<Byte>): TChapterHeadModelStruct;
    function GetDynDataStruct(buffs: TArray<Byte>): TDynDataStruct;
    function GetHeadStruct(buffs: TArray<Byte>): TEBK3HeadStruct;
  end;

implementation

class function TByteToStructEbk3.GetBytes(length: Integer; var offset: Integer; buff: TArray<Byte>): TArray<Byte>;
var
  buffer: TArray<Byte>;
begin
  SetLength(buffer, length);
  TUtil.ArrayCopy(buff[0], offset, buffer[0], 0, length);
  Inc(offset, length);
  Result := buffer;
end;

class function TByteToStructEbk3.GetInt16(length: Integer; var offset: Integer; buff: TArray<Byte>): Integer;
var
  buffer: TArray<Byte>;
begin
  SetLength(buffer, length);
  TUtil.ArrayCopy(buff[0], offset, buffer[0], 0, length);
  Inc(offset, length);
  Result := TBitConverter.InTo<Int16>(buffer);
end;

class function TByteToStructEbk3.GetInt32(length: Integer; var offset: Integer; buff: TArray<Byte>): Cardinal;
var
  buffer: TArray<Byte>;
begin
  SetLength(buffer, length);
  TUtil.ArrayCopy(buff[0], offset, buffer[0], 0, length);
  Inc(offset, length);
  Result := TBitConverter.InTo<Int32>(buffer);
end;

function TByteToStructEbk3.GetBlockFileList(buffs: TArray<System.Byte>): TChapterListStruct;
var
  struct2: TChapterListStruct;
  offset: Integer;
begin
  offset := 0;
  struct2.chapter_name_length7 := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_index1 := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_level2 := TByteToStructEbk3.GetInt16(2, offset, buffs);
  struct2.chapter_data_type3 := TByteToStructEbk3.GetInt16(2, offset, buffs);
  struct2.chapter_data_block_offset4 := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_content_decompresss_offset5 := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_content_decompress_length6 := TByteToStructEbk3.GetInt32(4, offset, buffs);
  Result := struct2;
end;

function TByteToStructEbk3.GetBlockStruct(buffs: TArray<System.Byte>): TblockStruct;
var
  struct2: TblockStruct;
  offset: Integer;
begin
  offset := 0;
  struct2.header_key := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.header_length := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.decode_key := TByteToStructEbk3.GetInt32(4, offset, buffs);
  Result := struct2;
end;

function TByteToStructEbk3.GetChapterHeadModelStruct(buffs: TArray<System.Byte>): TChapterHeadModelStruct;
var
  struct2: TChapterHeadModelStruct;
  offset: Integer;
begin
  offset := 0;
  struct2.chapter_count := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_name_header_length := TByteToStructEbk3.GetInt32(4, offset, buffs);
  Result := struct2;
end;

function TByteToStructEbk3.GetDynDataStruct(buffs: TArray<System.Byte>): TDynDataStruct;
var
  struct2: TDynDataStruct;
  offset: Integer;
begin
  offset := 0;
  struct2.dyn_data_length := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.book_id := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_list_offset := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.chapter_list_length := TByteToStructEbk3.GetInt32(4, offset, buffs);
  Result := struct2;
end;

function TByteToStructEbk3.GetHeadStruct(buffs: TArray<System.Byte>): TEBK3HeadStruct;
var
  struct2: TEBK3HeadStruct;
  offset: Integer;
begin
  offset := 0;
  struct2 := TEBK3HeadStruct.Create;
  struct2.identifier := TByteToStructEbk3.GetBytes(4, offset, buffs);
  struct2.header_key := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.header_length := TByteToStructEbk3.GetInt32(4, offset, buffs);
  struct2.decode_key := TByteToStructEbk3.GetInt32(4, offset, buffs);
  Result := struct2;
end;

end.

