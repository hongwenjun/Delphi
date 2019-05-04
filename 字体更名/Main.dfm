object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 329
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 8
    Top = 8
    Width = 297
    Height = 21
    TabOrder = 0
    Text = 'C:\'
  end
  object btn1: TButton
    Left = 311
    Top = 8
    Width = 75
    Height = 25
    Caption = #36873#25321#25991#20214#22841
    TabOrder = 1
    OnClick = btn1Click
  end
  object chk1: TCheckBox
    Left = 8
    Top = 35
    Width = 97
    Height = 17
    Caption = #21253#21547#23376#30446#24405
    TabOrder = 2
  end
  object btn2: TButton
    Left = 311
    Top = 39
    Width = 75
    Height = 25
    Caption = #24320#22987
    TabOrder = 3
    OnClick = btn2Click
  end
  object lst1: TListBox
    Left = 8
    Top = 72
    Width = 378
    Height = 249
    ItemHeight = 13
    TabOrder = 4
  end
  object flpndlg1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist]
    Left = 160
    Top = 32
  end
end
