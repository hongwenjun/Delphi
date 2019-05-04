object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #23433#35013
  ClientHeight = 147
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 97
    Caption = #23433#35013#21040
    TabOrder = 0
    object chk_X4: TCheckBox
      Left = 22
      Top = 24
      Width = 49
      Height = 17
      Caption = 'X4'
      TabOrder = 0
    end
    object chk_X5: TCheckBox
      Left = 92
      Top = 24
      Width = 49
      Height = 17
      Caption = 'X5'
      TabOrder = 1
    end
    object chk_X632: TCheckBox
      Left = 161
      Top = 24
      Width = 59
      Height = 17
      Caption = 'X6 32'#20301
      TabOrder = 2
    end
    object chk_X664: TCheckBox
      Left = 231
      Top = 24
      Width = 59
      Height = 17
      Caption = 'X6 64'#20301
      TabOrder = 3
    end
    object chk_X732: TCheckBox
      Left = 22
      Top = 56
      Width = 59
      Height = 17
      Caption = 'X7 32'#20301
      TabOrder = 4
    end
    object chk_X764: TCheckBox
      Left = 92
      Top = 56
      Width = 59
      Height = 17
      Caption = 'X7 64'#20301
      TabOrder = 5
    end
    object chk_X832: TCheckBox
      Left = 161
      Top = 56
      Width = 59
      Height = 17
      Caption = 'X8 32'#20301
      TabOrder = 6
    end
    object chk_X864: TCheckBox
      Left = 231
      Top = 56
      Width = 59
      Height = 17
      Caption = 'X8 64'#20301
      TabOrder = 7
    end
  end
  object btn_Install: TButton
    Left = 153
    Top = 111
    Width = 75
    Height = 25
    Caption = #23433#35013
    TabOrder = 1
    OnClick = btn_InstallClick
  end
  object btn_Uninstall: TButton
    Left = 246
    Top = 111
    Width = 75
    Height = 25
    Caption = #21368#36733
    Enabled = False
    TabOrder = 2
  end
end
