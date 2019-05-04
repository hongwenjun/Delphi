unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Soap.EncdDecd, Icon2Base64;

const
  WCMN: string = 'WCmnUI_UIItemBmp';

type
  TForm1 = class(TForm)
    redt1: TRichEdit;
    btn1: TButton;
    btn2: TButton;
    flpndlg1: TFileOpenDialog;
    flsvdlg1: TFileSaveDialog;
    lbl1: TLabel;
    redt2: TRichEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  fs: TFileStream;
  ss: TStringStream;
  bw: TBinaryWriter;
  b: TBytes;
  tp: Integer;
  bmp1: TBitmap;
  img: TWICImage;
begin
  if not flpndlg1.Execute then
  begin
    Exit;
  end;

  redt1.Clear;
  redt1.Lines.Add(TIcon2Base64.GetBase64(flpndlg1.FileName));

  redt2.Clear;
  redt2.Lines.Add(TIcon2Base64.GetBase64(flpndlg1.FileName , 24, 24));
  DeleteFile(flpndlg1.FileName + '_24x24.bmp');
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  fs: TFileStream;
  ss, ss1: TStringStream;
  br: TBinaryReader;
  bw: TBinaryWriter;
  biWidth, biHeight: Integer;
  biPlanes, biBitCount: Int16;
  biCompression, biSizeImage: Integer;
  biXPelsPerMeter, biYPelsPerMeter: Integer;
  biClrUsed, biClrImportant: Integer;
  blen, tmp1, ofs: Integer;
begin
  if not flsvdlg1.Execute then
  begin
    Exit;
  end;
  ss := TStringStream.Create;
  ss.WriteString(redt1.Text);
  ss1 := TStringStream.Create;
  ss.Seek(0, TSeekOrigin.soBeginning);
  DecodeStream(ss, ss1);
  ss1.SaveToFile(flsvdlg1.FileName + '__');
  br := TBinaryReader.Create(ss1);
  br.BaseStream.Position := 6;
  br.ReadBytes(16);
  br.BaseStream.Position := br.BaseStream.Position + 20;
  br.ReadInteger;
  biWidth := br.ReadInteger;
  biHeight := br.ReadInteger;
  biPlanes := br.ReadInt16;
  biBitCount := br.ReadInt16;
  biCompression := br.ReadInteger;
  biSizeImage := br.ReadInteger;
  biXPelsPerMeter := br.ReadInteger;
  biYPelsPerMeter := br.ReadInteger;
  biClrUsed := br.ReadInteger;
  biClrImportant := br.ReadInteger;
  blen := biSizeImage;
  tmp1 := 256 * 4;
  case biPlanes of
    1:
      begin
        tmp1 := 2 * 4;
      end;
    2:
      begin
        tmp1 := 16 * 4;
      end;
  end;
  ofs := 54 + tmp1;
  blen := blen + ofs;
  br.BaseStream.Position := 6 + 16 + 6;
  fs := TFileStream.Create(flsvdlg1.FileName, fmCreate);
  bw := TBinaryWriter.Create(fs);
  bw.Write(br.ReadBytes(br.BaseStream.Size - br.BaseStream.Position - 16));
  bw.BaseStream.Position := 0;
  bw.Write(BytesOf('BM'));
  bw.Write(Integer(blen - 8));
  bw.Seek(10, TSeekOrigin.soBeginning);
  bw.Write(Integer(ofs - 8));
  bw.Close;
  fs.Free;
end;

end.

