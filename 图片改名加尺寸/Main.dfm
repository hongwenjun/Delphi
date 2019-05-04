object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #22270#29255#25913#21517#21152#23610#23544
  ClientHeight = 295
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    530
    295)
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 8
    Top = 10
    Width = 433
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'D:\360data\'#37325#35201#25968#25454'\'#26700#38754'\'#20849#20139'\60-80'#21508#20889#30495#19968#24352
    ExplicitWidth = 550
  end
  object btn1: TButton
    Left = 447
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #27983#35272
    TabOrder = 1
    OnClick = btn1Click
    ExplicitLeft = 511
  end
  object btn2: TButton
    Left = 447
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #24320#22987
    TabOrder = 2
    OnClick = btn2Click
    ExplicitLeft = 511
  end
  object mmo1: TMemo
    Left = 8
    Top = 37
    Width = 433
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 3
    ExplicitWidth = 497
    ExplicitHeight = 154
  end
end
