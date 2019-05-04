object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 536
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 96
    Top = 296
    Width = 105
    Height = 105
    Stretch = True
  end
  object btn1: TButton
    Left = 48
    Top = 96
    Width = 113
    Height = 81
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 224
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edt2'
  end
  object btn2: TButton
    Left = 416
    Top = 232
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 3
    OnClick = btn2Click
  end
  object edt3: TEdit
    Left = 400
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'D:\1.jpg'
  end
end
