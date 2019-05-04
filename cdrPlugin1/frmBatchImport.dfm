inherited fBatchImport: TfBatchImport
  Caption = #25209#37327#23548#20837
  ClientHeight = 441
  ClientWidth = 642
  ExplicitWidth = 648
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  object chklst1: TCheckListBox
    Left = 8
    Top = 8
    Width = 626
    Height = 393
    ItemHeight = 13
    PopupMenu = pm1
    TabOrder = 0
  end
  object btnAddfile: TButton
    Left = 8
    Top = 407
    Width = 75
    Height = 25
    Caption = #28155#21152#25991#20214
    TabOrder = 1
    OnClick = btnAddfileClick
  end
  object btnImport: TButton
    Left = 270
    Top = 407
    Width = 75
    Height = 25
    Caption = #23548#20837
    TabOrder = 2
    OnClick = btnImportClick
  end
  object flpndlg1: TFileOpenDialog
    DefaultExtension = '.jpg'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'JPEG'
        FileMask = '*.jpg;*.jpeg'
      end>
    Options = [fdoAllowMultiSelect, fdoPathMustExist, fdoFileMustExist]
    Title = #36873#25321#25991#20214
    Left = 152
    Top = 408
  end
  object pm1: TPopupMenu
    Left = 216
    Top = 408
    object N1: TMenuItem
      Caption = #20840#36873
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #21453#36873
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = #28165#31354
      OnClick = N2Click
    end
  end
end
