object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #33258#29992
  ClientHeight = 392
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tv1: TTreeView
    Left = 8
    Top = 8
    Width = 201
    Height = 321
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    OnClick = tv1Click
  end
  object pnl1: TPanel
    Left = 215
    Top = 8
    Width = 514
    Height = 252
    TabOrder = 1
    object grp1: TGroupBox
      Left = 16
      Top = 8
      Width = 481
      Height = 225
      Caption = #24037#20855#26639
      TabOrder = 0
      object lbl3: TLabel
        Left = 32
        Top = 108
        Width = 24
        Height = 13
        Caption = #26631#39064
      end
      object lbl2: TLabel
        Left = 32
        Top = 72
        Width = 24
        Height = 13
        Caption = #21517#31216
      end
      object lbl1: TLabel
        Left = 32
        Top = 36
        Width = 25
        Height = 13
        Caption = 'GUID'
      end
      object edt_CBar_Caption: TEdit
        Left = 62
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt_CBar_Name: TEdit
        Left = 62
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt_CBar_Guid: TEdit
        Left = 63
        Top = 32
        Width = 410
        Height = 21
        TabOrder = 0
      end
    end
  end
  object pnl2: TPanel
    Left = 215
    Top = 8
    Width = 514
    Height = 252
    TabOrder = 2
    object grp2: TGroupBox
      Left = 16
      Top = 8
      Width = 481
      Height = 225
      Caption = #21629#20196#25353#38062
      TabOrder = 0
      object lbl4: TLabel
        Left = 32
        Top = 111
        Width = 24
        Height = 13
        Caption = #26631#39064
      end
      object lbl5: TLabel
        Left = 32
        Top = 75
        Width = 24
        Height = 13
        Caption = #21629#20196
      end
      object lbl6: TLabel
        Left = 32
        Top = 38
        Width = 25
        Height = 13
        Caption = 'GUID'
      end
      object lbl10: TLabel
        Left = 32
        Top = 148
        Width = 24
        Height = 13
        Caption = #22270#26631
      end
      object img_CButton_img: TImage
        Left = 360
        Top = 62
        Width = 105
        Height = 105
        Stretch = True
      end
      object lbl8: TLabel
        Left = 189
        Top = 88
        Width = 48
        Height = 13
        Caption = #24037#20855#25552#31034
      end
      object lbl14: TLabel
        Left = 21
        Top = 188
        Width = 35
        Height = 13
        Caption = #22270#26631'ID'
      end
      object edt_CButton_Caption: TEdit
        Left = 62
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt_CButton_Cmd: TEdit
        Left = 62
        Top = 69
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt_CButton_Guid: TEdit
        Left = 63
        Top = 35
        Width = 410
        Height = 21
        TabOrder = 0
      end
      object edt_CButton_IconPath: TEdit
        Left = 62
        Top = 144
        Width = 211
        Height = 21
        TabOrder = 3
      end
      object btn_CButton_Browse: TButton
        Left = 279
        Top = 142
        Width = 75
        Height = 25
        Caption = #27983#35272
        TabOrder = 4
        OnClick = btn_CButton_BrowseClick
      end
      object edt_CButton_Tooltip: TEdit
        Left = 189
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object edt_CButton_IconGuid: TEdit
        Left = 62
        Top = 184
        Width = 411
        Height = 21
        TabOrder = 6
      end
    end
  end
  object pnl3: TPanel
    Left = 215
    Top = 8
    Width = 514
    Height = 252
    TabOrder = 3
    object grp3: TGroupBox
      Left = 16
      Top = 8
      Width = 481
      Height = 225
      Caption = #23376#24037#20855#26639
      TabOrder = 0
      object lbl7: TLabel
        Left = 32
        Top = 112
        Width = 24
        Height = 13
        Caption = #26631#39064
      end
      object lbl9: TLabel
        Left = 32
        Top = 36
        Width = 25
        Height = 13
        Caption = 'GUID'
      end
      object lbl11: TLabel
        Left = 32
        Top = 71
        Width = 31
        Height = 13
        Caption = 'GUID2'
      end
      object lbl12: TLabel
        Left = 32
        Top = 147
        Width = 24
        Height = 13
        Caption = #22270#26631
      end
      object img_CSub_img: TImage
        Left = 376
        Top = 94
        Width = 81
        Height = 84
        Stretch = True
      end
      object lbl13: TLabel
        Left = 189
        Top = 88
        Width = 48
        Height = 13
        Caption = #24037#20855#25552#31034
      end
      object lbl15: TLabel
        Left = 21
        Top = 188
        Width = 35
        Height = 13
        Caption = #22270#26631'ID'
      end
      object edt_CSub_Caption: TEdit
        Left = 62
        Top = 108
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt_CSub_Guid: TEdit
        Left = 63
        Top = 32
        Width = 410
        Height = 21
        TabOrder = 0
      end
      object edt_CSub_Guid2: TEdit
        Left = 63
        Top = 67
        Width = 410
        Height = 21
        TabOrder = 1
      end
      object edt_CSub_IconPath: TEdit
        Left = 62
        Top = 143
        Width = 211
        Height = 21
        TabOrder = 3
      end
      object btn_CSub_Browse: TButton
        Left = 279
        Top = 141
        Width = 75
        Height = 25
        Caption = #27983#35272
        TabOrder = 4
        OnClick = btn_CSub_BrowseClick
      end
      object edt_CSub_Tooltip: TEdit
        Left = 189
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object edt_CSub_IconGuid: TEdit
        Left = 62
        Top = 184
        Width = 411
        Height = 21
        TabOrder = 6
      end
    end
  end
  object btn_Modify: TButton
    Left = 576
    Top = 266
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 4
    OnClick = btn_ModifyClick
  end
  object btn_Exit: TButton
    Left = 657
    Top = 266
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 5
    OnClick = btn_ExitClick
  end
  object btn_AddButton: TButton
    Left = 224
    Top = 266
    Width = 75
    Height = 25
    Caption = #28155#21152#25353#38062
    TabOrder = 6
    OnClick = btn_AddButtonClick
  end
  object btn_AddSub: TButton
    Left = 305
    Top = 266
    Width = 75
    Height = 25
    Caption = #28155#21152#23376#33756#21333
    TabOrder = 7
    OnClick = btn_AddSubClick
  end
  object btn_AddSeg: TButton
    Left = 386
    Top = 266
    Width = 75
    Height = 25
    Caption = #28155#21152#20998#21106#32447
    TabOrder = 8
    OnClick = btn_AddSegClick
  end
  object btn_Delete: TButton
    Left = 467
    Top = 266
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 9
    OnClick = btn_DeleteClick
  end
  object btn_ExportX4: TButton
    Left = 224
    Top = 297
    Width = 75
    Height = 25
    Caption = #23548#20986'X4-X6'
    TabOrder = 10
    OnClick = btn_ExportX4Click
  end
  object btn_ExportX7: TButton
    Left = 305
    Top = 297
    Width = 75
    Height = 25
    Caption = #23548#20986'X7'
    TabOrder = 11
    OnClick = btn_ExportX7Click
  end
  object btn_ExportX8: TButton
    Left = 386
    Top = 297
    Width = 75
    Height = 25
    Caption = #23548#20986'X8'
    TabOrder = 12
    OnClick = btn_ExportX8Click
  end
  object btn1: TButton
    Left = 467
    Top = 297
    Width = 75
    Height = 25
    Caption = #19968#38190#23548#20986
    TabOrder = 13
    OnClick = btn1Click
  end
  object btn_MoveUp: TButton
    Left = 8
    Top = 335
    Width = 75
    Height = 25
    Caption = #19978#31227
    TabOrder = 14
    OnClick = btn_MoveUpClick
  end
  object btn_MoveDown: TButton
    Left = 134
    Top = 335
    Width = 75
    Height = 25
    Caption = #19979#31227
    TabOrder = 15
    OnClick = btn_MoveDownClick
  end
  object flpndlg1: TFileOpenDialog
    DefaultExtension = 'ico'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Windows 3.x/Nt Icon Resource'
        FileMask = '*.ico'
      end>
    Options = [fdoPathMustExist, fdoFileMustExist]
    Left = 616
    Top = 296
  end
  object flsvdlg1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 648
    Top = 296
  end
end
