unit SVGImage;

interface

uses
  System.Classes, Vcl.Graphics, System.SysUtils, System.Math, System.UITypes;

type
  TSVGImage = class
  private
    fContent: TStringList;
    function getContent: string;
    function GetColorRgb(color: TAlphaColorF): string;
    function ConvertAlpha(color: TAlphaColorF): Double;
    function GetBackgroundStyle(color: TAlphaColorF): string;
  public
    constructor Create;
    property Content: string read getContent;
    procedure AddHeader;
    procedure AddEnd;
    procedure AddTag(displaysizeX, displaysizeY, viewboxSizeX, viewboxSizeY: Integer; background, fill: TAlphaColorF);
    procedure AddRec(posX, posY, width, height: Integer);
    procedure SaveToFile(AFileName: string);
  end;

implementation

constructor TSVGImage.Create;
begin
  fContent := TStringList.Create;
end;

function TSVGImage.getContent: string;
begin
  Result := fContent.Text;
end;

procedure TSVGImage.AddHeader;
begin
  fContent.Append('<?xml version="1.0" standalone="no"?>');
  //fContent.Append('<!-- Created with ZXing.Net (http://zxingnet.codeplex.com/) -->');
  fContent.Append('<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">');
end;

procedure TSVGImage.AddEnd;
begin
  fContent.Append('</g>');
  fContent.Append('</svg>');
end;

procedure TSVGImage.AddTag(displaysizeX: Integer; displaysizeY: Integer; viewboxSizeX: Integer; viewboxSizeY: Integer; background: TAlphaColorF; fill: TAlphaColorF);
begin
  if (displaysizeX <= 0) or (displaysizeY <= 0) then
  begin
    fContent.Append(Format('<svg xmlns="http://www.w3.org/2000/svg" version="1.2" baseProfile="tiny" viewBox="0 0 %d %d" viewport-fill="rgb(%s)" viewport-fill-opacity="1" fill="rgb(%s)" fill-opacity="1" %s>', [viewboxSizeX, viewboxSizeY, GetColorRgb(background), GetColorRgb(fill), GetBackgroundStyle(background)]));
  end
  else
  begin
    fContent.Append(Format('<svg xmlns="http://www.w3.org/2000/svg" version="1.2" baseProfile="tiny" viewBox="0 0 %d %d" viewport-fill="rgb(%s)" viewport-fill-opacity="1" fill="rgb(%s)" fill-opacity="1" %s width="%d" height="%d">', [viewboxSizeX, viewboxSizeY, GetColorRgb(background), GetColorRgb(fill), GetBackgroundStyle(background), displaysizeX, displaysizeY]));
  end;
  fContent.Append('<g transform="rotate(90)">');
end;

procedure TSVGImage.AddRec(posX: Integer; posY: Integer; width: Integer; height: Integer);
begin
  fContent.Append(Format('<rect x="%d" y="%d" width="%d" height="%d"/>', [posX, posY, width, height]));
end;

function TSVGImage.GetColorRgb(color: TAlphaColorF): string;
begin
  Result := Format('%.0f,%.0f,%.0f', [color.R * 255, color.G * 255, color.B * 255]);
end;

function TSVGImage.ConvertAlpha(color: TAlphaColorF): Double;
begin
  Result := RoundTo(color.A / 255.0, 2);
end;

function TSVGImage.GetBackgroundStyle(color: TAlphaColorF): string;
var
  alpha: Double;
begin
  alpha := ConvertAlpha(color);
  Result := Format('style="background-color:rgb(%.0f,%.0f,%.0f);background-color:rgba(%.0f);"', [color.R * 255, color.G * 255, color.B * 255, alpha]);
end;

procedure TSVGImage.SaveToFile(AFileName: string);
begin
  fContent.SaveToFile(AFileName);
end;

end.

