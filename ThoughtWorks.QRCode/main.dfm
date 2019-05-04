object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 492
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    584
    492)
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 8
    Top = 8
    Width = 568
    Height = 476
    ActivePage = ts1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 619
    ExplicitHeight = 439
    object ts1: TTabSheet
      Caption = #32534#30721
      ExplicitWidth = 611
      ExplicitHeight = 411
      DesignSize = (
        560
        448)
      object img1: TImage
        Left = 3
        Top = 3
        Width = 551
        Height = 230
        Anchors = [akLeft, akTop, akRight]
      end
      object lbl1: TLabel
        Left = 3
        Top = 248
        Width = 24
        Height = 13
        Caption = #25968#25454
      end
      object edtData: TEdit
        Left = 33
        Top = 245
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btnEncode: TButton
        Left = 256
        Top = 420
        Width = 75
        Height = 25
        Caption = #32534#30721
        TabOrder = 1
        OnClick = btnEncodeClick
      end
    end
  end
end
