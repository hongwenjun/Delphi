unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, GdiPlus, Vcl.Buttons;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    img2: TImage;
    dlgOpenPic1: TOpenPictureDialog;
    svpctrdlg1: TSavePictureDialog;
    img3: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    FFileName: string;
    procedure MoveForm(var M: TWMNCHITTEST); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  pic: TWICImage;
begin
  if dlgOpenPic1.Execute then
  begin
    pic := TWICImage.Create;
    pic.LoadFromFile(dlgOpenPic1.FileName);
    img2.Picture := nil;
    img2.Picture.Assign(pic);
    FFileName := dlgOpenPic1.FileName;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  bmp2, bmp1: IGPImage;
  grp: IGPGraphics;
begin
  if img2.Picture = nil then
  begin
    Exit;
  end;
  if svpctrdlg1.Execute then
  begin
    bmp1 := TGPImage.Create(FFileName);
    bmp2 := TGPBitmap.Create(295, 413);

    grp := TGPGraphics.Create(bmp2);
    grp.InterpolationMode := InterpolationModeHighQualityBicubic;
    grp.PixelOffsetMode := PixelOffsetModeHighSpeed;

    grp.DrawImage(bmp1, 0, 0, 295, 413, 0, 0, bmp1.Width, bmp1.Height, UnitPixel);

    bmp2.Save(svpctrdlg1.FileName, TGPImageFormat.Jpeg);
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
                //更改“.Result”域的值
end;

procedure TForm1.MoveForm(var M: TWMNCHITTEST);
begin
  inherited;                                  //继承，窗体可以继续处理以后的事件
  if (M.Result = HTCLIENT)                    //如果发生在客户区
    and ((GetKeyState(vk_CONTROL) < 0))            //检测“Ctrl”键是否按下
    then
    M.Result := HTCAPTION;
end;

end.

