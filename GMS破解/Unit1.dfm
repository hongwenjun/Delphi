object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = btn_Exit
  BorderStyle = bsToolWindow
  Caption = 'GMS'#30772#35299
  ClientHeight = 71
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 8
    Top = 6
    Width = 254
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 268
    Top = 4
    Width = 75
    Height = 25
    Caption = #27983#35272
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn_CRK: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = #30772#35299
    TabOrder = 2
    OnClick = btn_CRKClick
  end
  object btn_RemovePWD: TButton
    Left = 138
    Top = 35
    Width = 75
    Height = 25
    Caption = #31227#38500#23494#30721
    TabOrder = 3
    OnClick = btn_RemovePWDClick
  end
  object btn_Exit: TButton
    Left = 268
    Top = 38
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 4
    OnClick = btn_ExitClick
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = 'gms'
    Filter = 'GMS'#25991#20214'|*.gms'
    Left = 224
    Top = 32
  end
  object tsdrgcntrl1: TTSDragControl
    DragControl = edt1
    OnDropFiles = tsdrgcntrl1DropFiles
    Left = 96
    Top = 32
  end
end
