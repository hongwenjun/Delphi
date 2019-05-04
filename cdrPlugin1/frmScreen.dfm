inherited fScreen: TfScreen
  Caption = #23631#24149#23610#23544#21644#23454#29289'1 : 1'#26657#27491
  ClientHeight = 265
  ClientWidth = 335
  OnCreate = FormCreate
  ExplicitWidth = 341
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 72
    Height = 13
    Caption = #23631#24149#23610#23544#20026#65306
  end
  object lbl2: TLabel
    Left = 8
    Top = 27
    Width = 84
    Height = 13
    Caption = #23631#24149#20998#36776#29575#20026#65306
  end
  object lbl3: TLabel
    Left = 8
    Top = 46
    Width = 292
    Height = 13
    Caption = #22914#26524#33258#21160#35835#21462#23610#23544#19982#23454#38469#19981#31526','#35831#36755#20837#27491#30830#30340#26174#31034#22179#23610#23544
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 8
    Top = 65
    Width = 321
    Height = 152
    Caption = #26631#23610#26657#27491#21442#25968
    TabOrder = 0
    object lbl4: TLabel
      Left = 32
      Top = 48
      Width = 24
      Height = 13
      Caption = #27178#21521
    end
    object lbl5: TLabel
      Left = 32
      Top = 83
      Width = 24
      Height = 13
      Caption = #32437#21521
    end
    object edt1: TEdit
      Left = 62
      Top = 45
      Width = 67
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 62
      Top = 80
      Width = 67
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 150
      Top = 45
      Width = 67
      Height = 21
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 150
      Top = 80
      Width = 67
      Height = 21
      TabOrder = 3
    end
    object edt5: TEdit
      Left = 238
      Top = 45
      Width = 67
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edt6: TEdit
      Left = 238
      Top = 80
      Width = 67
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object btn1: TButton
      Left = 230
      Top = 107
      Width = 75
      Height = 25
      Caption = #37325#26032#35745#31639
      TabOrder = 6
      OnClick = btn1Click
    end
  end
  object btn2: TButton
    Left = 8
    Top = 223
    Width = 75
    Height = 25
    Caption = #35774#32622
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 120
    Top = 224
    Width = 113
    Height = 25
    Caption = #37325#21551'CorelDraw'
    TabOrder = 2
    OnClick = btn3Click
  end
end
