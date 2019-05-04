unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, SpeedButtonEx;

type
  TForm2 = class(TForm)
    il1: TImageList;
    btnALeft: TSpeedButton;
    btn1: TButton;
    spdbtnx1: TSpeedButtonEx;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    firstKTime, secondKTime: TDateTime;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  btnALeft.Glyph := nil;
  il1.GetBitmap(0, btnALeft.Glyph);
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(27)) and (not btn1.Visible) then
  begin
    if firstKTime = 0 then
    begin
      firstKTime := Now;
      Exit;
    end
    else
    begin
      if secondKTime = 0 then
      begin
        secondKTime := Now;
        if (secondKTime - firstKTime) * 24 * 60 * 60 > 0.5 then
        begin
          firstKTime := 0;
          secondKTime := 0;
        end;
        Exit;
      end
      else
      begin
        if (Now - secondKTime) * 24 * 60 * 60 > 0.5 then
        begin
          firstKTime := 0;
          secondKTime := 0;
          Exit;
        end;
      end;
    end;
    btn1.Visible := True;
  end;
end;

end.

