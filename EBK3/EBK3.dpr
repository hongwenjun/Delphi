program EBK3;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  BookItems in 'EBK3\BookItems.pas',
  BookInfo in 'EBK3\BookInfo.pas',
  Pic in 'EBK3\Pic.pas',
  PicByteModel in 'EBK3\PicByteModel.pas',
  PicHeadModel in 'EBK3\PicHeadModel.pas',
  PicModel in 'EBK3\PicModel.pas',
  Util in 'EBK3\Util.pas',
  EBK3HeadStruct in 'EBK3\EBK3HeadStruct.pas',
  ByteToStructEbk3 in 'EBK3\ByteToStructEbk3.pas',
  ChapterListStruct in 'EBK3\ChapterListStruct.pas',
  blockStruct in 'EBK3\blockStruct.pas',
  ChapterHeadModelStruct in 'EBK3\ChapterHeadModelStruct.pas',
  DynDataStruct in 'EBK3\DynDataStruct.pas',
  Ebk3Open in 'EBK3\Ebk3Open.pas',
  Ebk3_Data in 'EBK3\Ebk3_Data.pas',
  ChapterListModel in 'EBK3\ChapterListModel.pas',
  EBK3HeadInfoModel in 'EBK3\EBK3HeadInfoModel.pas',
  EBK3HeadByteModel in 'EBK3\EBK3HeadByteModel.pas',
  blockfilelistStruct in 'EBK3\blockfilelistStruct.pas',
  blockfileStruct in 'EBK3\blockfileStruct.pas',
  blockinfoArray in 'EBK3\blockinfoArray.pas',
  blockinfobyteModel in 'EBK3\blockinfobyteModel.pas',
  blockinfoModel in 'EBK3\blockinfoModel.pas',
  GetData in 'EBK3\GetData.pas',
  byteinfo in 'EBK3\byteinfo.pas',
  m_compressList in 'EBK3\m_compressList.pas',
  DeCompress in 'EBK3\DeCompress.pas',
  ZLibEx in 'Zlib\ZLibEx.pas',
  ZLibExApi in 'Zlib\ZLibExApi.pas',
  ZLibExGZ in 'Zlib\ZLibExGZ.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
