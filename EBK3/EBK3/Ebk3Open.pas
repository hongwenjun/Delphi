unit Ebk3Open;

interface

uses
  System.Generics.Collections, System.SysUtils, System.Types, System.Classes,
  Ebk3_Data, ChapterListStruct, ChapterHeadModelStruct, ChapterListModel,
  BookInfo, EBK3HeadStruct, EBK3HeadInfoModel, blockinfoModel, ByteToStructEbk3,
  Util, DynDataStruct, blockStruct, GetData, DeCompress, BookItems;

type
  TEbk3Open = class
  private
    Febk3_data: TEbk3_Data;
    mChapterList: TList<TChapterListModel>;
    mEBK3Buffer: TArray<Byte>;
    mEBK3Stream: TStream;
    function getblocksize(buffer: TArray<Byte>): TList<Integer>;
    function Getchapter(blockdata: TArray<Byte>; _type: Integer): string;
    function GetChapterList(chaptercount: Integer; headlenth: Integer; buff: TArray<Byte>; key: Integer): TList<TChapterListModel>;
    function getHeadDy(dy: TDynDataStruct): TArray<Byte>; overload;
    function getHeadDy(head: TArray<Byte>; dy: TDynDataStruct): TArray<Byte>; overload;
    function GetOneChapter(blockdata: TArray<Byte>; _type: Integer; mChapterIndex: Integer): string;
    function getOneChapterList(OneChapter: TChapterListModel; key: Integer): TArray<Byte>;
    function GetRecodeBlockModel(allbuffer: TArray<Byte>; count: Integer): TblockinfoModel;
    function SortChapterList(chapterList: TList<TChapterListModel>): TList<TChapterListModel>; overload;
  public
    constructor Create;
    function Open(filename: string): TBookInfo; overload;
    function Open(buffer: TArray<Byte>): TBookInfo; overload;
    procedure Close;
    class function GetRecodeModel(allbuffer: TArray<Byte>; count: Integer): TEBK3HeadInfoModel; static;
    function EBK3GetChapter(mChapterIndex: Integer): string;
    procedure SortChapterLis; overload;
    procedure SaveToTxt(filename: string);
  end;

implementation

constructor TEbk3Open.Create;
begin
  Febk3_data := TEbk3_Data.Create;
end;

function TEbk3Open.Open(filename: string): TBookInfo;
begin
  mEBK3Stream := TFileStream.Create(filename, fmOpenRead);
  SetLength(mEBK3Buffer, mEBK3Stream.Size);
  mEBK3Stream.ReadBuffer(mEBK3Buffer[0], mEBK3Stream.Size);
  Result := Open(mEBK3Buffer);
end;

function TEbk3Open.Open(buffer: TArray<System.Byte>): TBookInfo;
var
  headStruct: TEBK3HeadStruct;
  recodeModel: TEBK3HeadInfoModel;
  chapterHeadModelStruct: TChapterHeadModelStruct;
  blockinfoModel: TblockinfoModel;
  dynDataStruct: TDynDataStruct;
  key: Integer;
  buffer2, data, buffs, buffer5, buff, blockdata, bytes, buffer9: TArray<Byte>;
  list: TList<TChapterListModel>;
  info: TBookInfo;
  i, num3, myindex, j, num6, num7: Integer;
  model2, model3, model4: TChapterListModel;
  chapter, str2: string;
  items, items2: TBookItems;
begin
  headStruct := TByteToStructEbk3.Create.GetHeadStruct(buffer);
  key := headStruct.decode_key;
  SetLength(buffer2, headStruct.header_length);
  TUtil.ArrayCopy(buffer[0], 0, buffer2[0], 0, Length(buffer2));
  SetLength(data, Length(buffer2) - $10);
  TUtil.ArrayCopy(buffer[0], $10, data[0], 0, Length(data));
  recodeModel := TEBK3HeadInfoModel.Create;
  recodeModel := Self.GetRecodeModel(Self.Febk3_data.pbk_sys_data_decode(data, key), recodeModel.modellenth);
  SetLength(buffs, $10);
  TUtil.ArrayCopy(buffer[0], recodeModel.chapter_dyn_info_offset5, buffs[0], 0, Length(buffs));
  dynDataStruct := TByteToStructEbk3.Create.GetDynDataStruct(buffs);
  SetLength(buffer5, dynDataStruct.chapter_list_length);
  TUtil.ArrayCopy(buffer[0], dynDataStruct.chapter_list_offset, buffer5[0], 0, Length(buffer5));
  chapterHeadModelStruct := TByteToStructEbk3.Create.GetChapterHeadModelStruct(buffer5);
  SetLength(buff, Length(buffer5) - 8);
  TUtil.ArrayCopy(buffer5[0], 8, buff[0], 0, Length(buffer5));
  list := self.GetChapterList(chapterHeadModelStruct.chapter_count, chapterHeadModelStruct.chapter_name_header_length, buff, key);
  Self.mChapterList := SortChapterList(list);
  Exit;
  info := TBookInfo.Create;
  i := 0;
  while ((i < list.Count)) do
  begin
    model2 := list[i];
    if ((model2.chapter_data_type3 <> 0) and (info.Text = '')) then
    begin
      //SetLength(blockdata, Length(buffer) - model2.chapter_data_block_offset4);
      //TUtil.ArrayCopy(buffer[0], (model2.chapter_data_block_offset4), blockdata[0], 0, Length(blockdata));
      //chapter := self.Getchapter(blockdata, 1);
      //info.Text := chapter
    end;
    inc(i)
  end;
  bytes := TEncoding.Unicode.GetBytes(info.Text);
  num3 := 0;
  myindex := 0;
  j := 0;
  while ((j < list.Count)) do
  begin
    model3 := list[j];
    if (model3.chapter_data_type3 = 1) then
    begin
      if (num3 = 0) then
      begin
        items := TBookItems.Create(model3.chapter_name_data8, 0, model3.chapter_name_data8.Length);
        info.Chapterlist.Add(items)
      end
      else
      begin
        model4 := list[j - 1];
        num6 := (model4.chapter_content_decompresss_offset5);
        num7 := (model4.chapter_content_decompress_length6);
        SetLength(buffer9, num7);
        TUtil.ArrayCopy(bytes[0], num6, buffer9[0], 0, num7);
        str2 := TEncoding.Unicode.GetString(buffer9, 0, Length(buffer9));
        inc(myindex, str2.Replace(#13#10, #10).Length);
        items2 := TBookItems.Create(model3.chapter_name_data8, myindex, model3.chapter_name_data8.Length);
        info.Chapterlist.Add(items2)
      end;
      inc(num3)
    end;
    inc(j)
  end;
  Result := info;
end;

procedure TEbk3Open.Close;
begin
  if Self.mEBK3Stream <> nil then
  begin
    Self.Free;
  end;
end;

class function TEbk3Open.GetRecodeModel(allbuffer: TArray<System.Byte>; count: Integer): TEBK3HeadInfoModel;
var
  model: TEBK3HeadInfoModel;
  buffer, buffer2, buffer3, buffer4, buffer5: TArray<Byte>;
  num, num3, num4, i: UInt32;
begin
  SetLength(buffer, Length(allbuffer) - 4);
  SetLength(buffer2, 4);
  TUtil.ArrayCopy(allbuffer[0], 0, buffer2[0], 0, 4);
  TBitConverter.InTo<UInt32>(buffer2, 0);
  TUtil.ArrayCopy(allbuffer[0], 4, buffer[0], 0, Length(buffer));
  model := TEBK3HeadInfoModel.Create;
  num := 0;
  i := 0;
  while i < count do
  begin
    SetLength(buffer3, 4);
    SetLength(buffer4, 4);
    TUtil.ArrayCopy(buffer[0], num, buffer3[0], 0, Length(buffer3));
    num3 := TBitConverter.InTo<UInt32>(buffer3, 0);
    TUtil.ArrayCopy(buffer[0], (num + 4), buffer4[0], 0, Length(buffer4));
    num4 := TBitConverter.InTo<UInt32>(buffer4, 0);
    if num4 <= 8 then
    begin
      inc(num, num4);
      inc(i);
      Continue;
    end;
    SetLength(buffer5, num4 - 8);
    TUtil.ArrayCopy(buffer[0], num + 8, buffer5[0], 0, Length(buffer5));
    inc(num, num4);
    case num3 of
      1:
        begin
          model.min_version1 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      2:
        begin
          model.unique_identifier2 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      3:
        begin
          model.book_file_type3 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      4:
        begin
          model.chapter_list_offset4 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      5:
        begin
          model.chapter_dyn_info_offset5 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      6:
        begin
          model.cover_data_offset6 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      7:
        begin
          model.creator7 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      8:
        begin
          model.create_timer8 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      9:
        begin
          model.name9 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      10:
        begin
          model.author10 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      11:
        begin
          model.subject11 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      12:
        begin
          model.publisher12 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      13:
        begin
          model.isbn13 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      14:
        begin
          model.file_size14 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      15:
        begin
          model.revise_version16 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
    end;
    inc(i);
  end;
  Result := model;
end;

function TEbk3Open.EBK3GetChapter(mChapterIndex: Integer): string;
var
  buffer, buffer2, blockdata: TArray<Byte>;
  model, model2: TChapterListModel;
  str: string;
  num: UInt64;
begin
  if (self.mEBK3Stream = nil) then
  begin
    Result := '';
    exit
  end;
  buffer := self.mEBK3Buffer;
  TBookInfo.Create;
  str := '';
  if ((mChapterIndex < 0) or (mChapterIndex >= self.mChapterList.Count)) then
  begin
    Result := str;
    exit
  end;
  model := self.mChapterList[mChapterIndex];
  if mChapterIndex < Self.mChapterList.Count - 1 then
  begin
    model2 := mChapterList[mChapterIndex + 1];
    num := model2.chapter_data_block_offset4 - model.chapter_data_block_offset4;
  end
  else
  begin
    num := Length(buffer) - model.chapter_data_block_offset4;
  end;
  if (model.chapter_data_type3 = 0) then
  begin
    SetLength(buffer2, num);
    TUtil.ArrayCopy(buffer[0], (model.chapter_data_block_offset4), buffer2[0], 0, Length(buffer2));
    begin
      Result := self.Getchapter(buffer2, 0);
      exit
    end
  end;
  SetLength(blockdata, num);
  TUtil.ArrayCopy(buffer[0], (model.chapter_data_block_offset4), blockdata[0], 0, Length(blockdata));
  begin
    Result := self.GetOneChapter(blockdata, 1, mChapterIndex);
    exit
  end

end;

procedure TEbk3Open.SortChapterLis;
begin
  Self.mChapterList := Self.SortChapterList(Self.mChapterList);
end;

procedure TEbk3Open.SaveToTxt(filename: string);
var
  stream: TFileStream;
  i: Integer;
  model2: TChapterListModel;
  buffer, blockdata: TArray<Byte>;
  chapter: string;
begin
  Self.mEBK3Stream.Seek(0, TSeekOrigin.soBeginning);
  SetLength(buffer, mEBK3Stream.Size);
  Self.mEBK3Stream.ReadBuffer(buffer, mEBK3Stream.Size);
  stream := TFileStream.Create(filename, fmCreate);
  for I := 0 to mChapterList.Count - 1 do
  begin
    chapter := Self.EBK3GetChapter(I);
    stream.Write(chapter, Length(chapter));
  end;
  stream.Free;
end;

function TEbk3Open.SortChapterList(chapterList: TList<ChapterListModel.TChapterListModel>): TList<TChapterListModel>;
var
  model: TChapterListModel;
  i, j: Integer;
begin
  model := nil;
  i := chapterList.Count;
  while ((i > 0)) do
  begin
    j := 0;
    while ((j < (i - 1))) do
    begin
      if (chapterList[j].chapter_index1 > chapterList[j + 1].chapter_index1) then
      begin
        model := chapterList[j];
        chapterList[j] := chapterList[j + 1];
        chapterList[j + 1] := model;
      end;
      inc(j)
    end;
    if ((i > 2) and (chapterList[(i - 1)].chapter_index1 = chapterList[(i - 2)].chapter_index1)) then
    begin
      chapterList.Delete(i - 1);
    end;
    dec(i)
  end;
  Result := chapterList;
end;

function TEbk3Open.getblocksize(buffer: TArray<System.Byte>): TList<Integer>;
var
  list: TList<Integer>;
  buffer2, buffer3: TArray<Byte>;
  num, num2, num4, i: Integer;
begin
  list := TList<Integer>.Create;
  SetLength(buffer2, 4);
  TUtil.ArrayCopy(buffer[0], 0, buffer2[0], 0, 4);
  num := TBitConverter.InTo<UInt32>(buffer2);
  num2 := 4;
  i := 0;
  while i < num do
  begin
    SetLength(buffer3, 4);
    TUtil.ArrayCopy(buffer[0], num2, buffer3[0], 0, Length(buffer3));
    num4 := TBitConverter.InTo<UInt32>(buffer3, 0);
    inc(num2, Length(buffer3));
    list.Add(num4);
    inc(i)
  end;
  Result := list;
end;

function TEbk3Open.Getchapter(blockdata: TArray<System.Byte>; _type: Integer): string;
var
  blockStruct: TblockStruct;
  gData: TGetData;
  bytes, buff, buffer, buffer2, buffer3, buffer4, buffer5, buffer6, buffer99, buffer9, buffer10: TArray<Byte>;
  recodeBlockModel: TblockinfoModel;
  i, num, num2, num3, num4, num6: Integer;
begin
  blockStruct := TByteToStructEbk3.Create.GetBlockStruct(blockdata);
  gData := TGetData.Create;
  SetLength(buffer, blockStruct.header_length);
  TUtil.ArrayCopy(blockdata[0], 12, buffer[0], 0, Length(buffer));
  recodeBlockModel := self.GetRecodeBlockModel(self.Febk3_data.pbk_sys_data_decode(buffer, blockStruct.decode_key), 11);
  if recodeBlockModel.file_list_offset11 <> 0 then
  begin
    SetLength(buffer2, Length(blockData) - recodeBlockModel.file_list_offset11);
    TUtil.ArrayCopy(blockdata[0], recodeBlockModel.file_list_offset11, buffer2[0], 0, Length(buffer2));
  end;
  SetLength(buffer3, 4);
  TUtil.ArrayCopy(blockdata[0], blockStruct.header_length, buffer3[0], 0, 4);
  num := TBitConverter.InTo<UInt32>(self.Febk3_data.pbk_sys_data_decode(buffer3, blockStruct.decode_key));
  num2 := blockStruct.header_length + 4;
  SetLength(buffer4, $1400000);
  num3 := 0;
  num4 := 0;
  SetLength(buffer5, num * 4);
  TUtil.ArrayCopy(blockdata[0], num2, buffer5[0], 0, Length(buffer5));
  buffer6 := self.Febk3_data.pbk_sys_data_decode(buffer5, blockStruct.decode_key);
  //SetLength(buffer99, 4);
  for I := 0 to num - 1 do
  begin
    TUtil.ArrayCopy(buffer6[0], (i * 4), buffer3[0], 0, 4);
    num6 := TBitConverter.InTo<UInt32>(buffer3);
    SetLength(buff, num6);
    TUtil.ArrayCopy(blockdata[0], ((num2 + (num * 4)) + num4), buff[0], 0, Length(buff));
    SetLength(buffer9, num6);
    buffer10 := TDeCompress.Decompress(gData.decodeingtext(buff, blockStruct.decode_key));
    TUtil.ArrayCopy(buffer10[0], 0, buffer4[0], num3, Length(buffer10));
    inc(num4, num6);
    inc(num3, Length(buffer10));
  end;
  SetLength(bytes, num3);
  TUtil.ArrayCopy(buffer4[0], 0, bytes[0], 0, Length(bytes));
  if (_type = 0) then
  begin
    Result := TEncoding.Unicode.GetString(bytes, 0, Length(bytes));
  end;
  begin
    Result := TEncoding.Unicode.GetString(bytes, 0, Length(bytes));
  end
end;

function TEbk3Open.GetChapterList(chaptercount: Integer; headlenth: Integer; buff: TArray<System.Byte>; key: Integer): TList<TChapterListModel>;
var
  list: TList<TChapterListModel>;
  blockFileList: TChapterListStruct;
  num, i: Integer;
  model: TChapterListModel;
  buffs, data, buffer3: TArray<Byte>;
  fs: TFileStream;
begin
  list := TList<TChapterListModel>.Create;
  num := 0;
  i := 0;
  while ((i < chaptercount)) do
  begin
    model := TChapterListModel.Create;
    SetLength(buffs, $18);
    TUtil.ArrayCopy(buff[0], num, buffs[0], 0, Length(buffs));
    SetLength(data, 4);
    TUtil.ArrayCopy(buffs[0], 12, data[0], 0, 4);
    TUtil.ArrayCopy(self.Febk3_data.pbk_sys_data_decode(data, key)[0], 0, buffs[0], 12, 4);
    blockFileList := TByteToStructEbk3.Create.GetBlockFileList(buffs);
    model.chapter_index1 := blockFileList.chapter_index1;
    model.chapter_level2 := blockFileList.chapter_level2;
    model.chapter_data_type3 := blockFileList.chapter_data_type3;
    model.chapter_data_block_offset4 := blockFileList.chapter_data_block_offset4;
    model.chapter_content_decompresss_offset5 := blockFileList.chapter_content_decompresss_offset5;
    model.chapter_content_decompress_length6 := blockFileList.chapter_content_decompress_length6;
    model.chapter_name_length7 := blockFileList.chapter_name_length7;
    SetLength(buffer3, model.chapter_name_length7);
    TUtil.ArrayCopy(buff[0], num + Length(buffs), buffer3[0], 0, Length(buffer3));
    model.chapter_name_data8 := TEncoding.Unicode.GetString(self.Febk3_data.pbk_sys_data_decode(buffer3, key), 0, Length(buffer3));
    inc(num, (Length(buffs) + Length(buffer3)));
    list.Add(model);
    inc(i)
  end;
  Result := list;
end;

function TEbk3Open.getHeadDy(dy: TDynDataStruct): TArray<Byte>;
begin

end;

function TEbk3Open.getHeadDy(head: TArray<Byte>; dy: TDynDataStruct): TArray<Byte>;
begin

end;

function TEbk3Open.GetOneChapter(blockdata: TArray<Byte>; _type: Integer; mChapterIndex: Integer): string;
var
  blockStruct: TblockStruct;
  data: TGetData;
  buffer, buffer2, buffer3, buffer4, buffer5, buffer6, buffer7, buffer9, buffer10, buffer12, buff, bytes: TArray<Byte>;
  recodeBlockModel: TblockinfoModel;
  i, j, num, num1, num2, num3, num4, num5, num6: Integer;
  str: string;
begin
  data := TGetData.Create;
  blockStruct := TByteToStructEbk3.Create.GetBlockStruct(blockdata);
  SetLength(buffer, blockStruct.header_length - 12);
  TUtil.ArrayCopy(blockdata[0], 12, buffer[0], 0, Length(buffer));
  recodeBlockModel := self.GetRecodeBlockModel(self.Febk3_data.pbk_sys_data_decode(buffer, (blockStruct.decode_key)), 13);
  if recodeBlockModel.file_list_offset11 <> 0 then
  begin
    SetLength(buffer2, Length(blockdata) - recodeBlockModel.file_list_offset11);
    TUtil.ArrayCopy(blockdata[0], recodeBlockModel.file_list_offset11, buffer2[0], 0, Length(buffer2))
  end;
  SetLength(buffer3, 4);
  TUtil.ArrayCopy(blockdata[0], blockStruct.header_length, buffer3[0], 0, 4);
  num := TBitConverter.InTo<UInt32>(self.Febk3_data.pbk_sys_data_decode(buffer3, blockStruct.decode_key), 0);
  num2 := blockStruct.header_length + 4;
  SetLength(buffer4, num * 4);
  TUtil.ArrayCopy(blockdata[0], num2, buffer4[0], 0, Length(buffer4));
  buffer5 := self.Febk3_data.pbk_sys_data_decode(buffer4, (blockStruct.decode_key));
  num3 := self.mChapterList[mChapterIndex].chapter_content_decompresss_offset5 div $10000;
  if num3 > num then
  begin
    Result := '';
    exit
  end;
  num4 := 0;
  num5 := self.mChapterList[mChapterIndex].chapter_content_decompresss_offset5 mod $10000;
  num6 := 0;
  i := 0;
  while ((i < num3)) do
  begin
    SetLength(buffer6, 4);
    TUtil.ArrayCopy(buffer5[0], i * 4, buffer6[0], 0, 4);
    num6 := TBitConverter.InTo<UInt32>(buffer6, 0);
    inc(num4, num6);
    inc(i)
  end;
  SetLength(buffer7, 4);
  TUtil.ArrayCopy(buffer5[0], num3 * 4, buffer7[0], 0, 4);
  num6 := (TBitConverter.InTo<UInt32>(buffer7, 0));
  SetLength(buff, num6);
  TUtil.ArrayCopy(blockdata[0], (num2 + (num * 4)) + num4, buff[0], 0, Length(buff));
  SetLength(buffer9, num6);
  buffer10 := TDeCompress.Decompress(data.decodeingtext(buff, blockStruct.decode_key));
  SetLength(bytes, self.mChapterList[mChapterIndex].chapter_content_decompress_length6);
  str := '';
  if (num5 + Length(bytes)) < $10000 then
    TUtil.ArrayCopy(buffer10[0], num5, bytes[0], 0, Length(bytes))
  else
    TUtil.ArrayCopy(buffer10[0], num5, bytes[0], 0, ($10000 - num5));
  if (num5 + self.mChapterList[mChapterIndex].chapter_content_decompress_length6) > $10000 then
  begin
    inc(num3);
    if num3 >= num then
    begin
      Result := '';
      exit
    end;
    num1 := (num5 + self.mChapterList[mChapterIndex].chapter_content_decompress_length6) mod $10000;
    num6 := 0;
    num4 := 0;
    j := 0;
    while j < num3 do
    begin
      SetLength(buffer12, 4);
      TUtil.ArrayCopy(buffer5[0], j * 4, buffer12[0], 0, 4);
      num6 := TBitConverter.InTo<UInt32>(buffer12, 0);
      inc(num4, num6);
      inc(j)
    end;
    SetLength(buffer7, 4);
    TUtil.ArrayCopy(buffer5[0], num3 * 4, buffer7[0], 0, 4);
    num6 := TBitConverter.InTo<UInt32>(buffer7);
    SetLength(buff, num6);
    TUtil.ArrayCopy(blockdata[0], (num2 + (num * 4)) + num4, buff[0], 0, Length(buff));
    SetLength(buffer9, num6);
    TUtil.ArrayCopy(TDeCompress.Decompress(data.decodeingtext(buff, blockStruct.decode_key))[0], 0, bytes[0], $10000 - num5, Length(bytes) - ($10000 - num5))
  end;
  if _type <> 0 then
    str := TEncoding.Unicode.GetString(bytes, 0, Length(bytes));
  begin
    Result := str;
    exit
  end

end;

function TEbk3Open.getOneChapterList(OneChapter: TChapterListModel; key: Integer): TArray<Byte>;
begin

end;

function TEbk3Open.GetRecodeBlockModel(allbuffer: TArray<System.Byte>; count: Integer): TblockinfoModel;
var
  model: TblockinfoModel;
  buffer, buffer2, buffer3, buffer4, buffer5: TArray<Byte>;
  num, num3, num4, i: Integer;
begin
  model := TblockinfoModel.Create;
  SetLength(buffer, Length(allbuffer) - 4);
  SetLength(buffer2, 4);
  TUtil.ArrayCopy(allbuffer[0], 0, buffer2[0], 0, 4);
  TBitConverter.InTo<UInt32>(buffer2);
  TUtil.ArrayCopy(allbuffer[0], 4, buffer[0], 0, Length(buffer));
  num := 0;
  i := 0;
  while i < count do
  begin
    SetLength(buffer3, 4);
    SetLength(buffer4, 4);
    TUtil.ArrayCopy(buffer[0], num, buffer3[0], 0, Length(buffer3));
    num3 := TBitConverter.InTo<UInt32>(buffer3);
    TUtil.ArrayCopy(buffer[0], num + 4, buffer4[0], 0, Length(buffer4));
    num4 := TBitConverter.InTo<UInt32>(buffer4);
    if num4 <= 8 then
    begin
      inc(num, num4);
      inc(i);
      Continue;
    end;
    SetLength(buffer5, num4 - 8);
    TUtil.ArrayCopy(buffer[0], num + 8, buffer5[0], 0, Length(buffer5));
    Inc(num, num4);
    case num3 of
      1:
        begin
          model.min_version1 := TBitConverter.InTo<UInt32>(buffer5);
        end;
      2:
        begin
          model.min_tip2 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      3:
        begin
          model.compress_type3 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      4:
        begin
          model.compress_block_size4 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      5:
        begin
          model.datatype5 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      6:
        begin
          model.locale6 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      7:
        begin
          model.encoding7 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      8:
        begin
          model.chapter_index8 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      9:
        begin
          model.chapter_level9 := TBitConverter.InTo<UInt16>(buffer5, 0);
        end;
      10:
        begin
          model.chapter_name10 := TEncoding.Unicode.GetString(buffer5, 0, Length(buffer5));
        end;
      11:
        begin
          model.file_list_offset11 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      12:
        begin
          model.chapter_content_decompress_length12 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
      13:
        begin
          model.chapter_file_size13 := TBitConverter.InTo<UInt32>(buffer5, 0);
        end;
    end;
    Inc(I);
  end;
  Result := model;
end;

end.

