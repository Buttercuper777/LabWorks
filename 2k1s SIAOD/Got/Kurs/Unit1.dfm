object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1086#1090#1084#1072#1085#1086#1074' '#1048#1042#1058'-21'
  ClientHeight = 322
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 13
    Cursor = crHandPoint
    Caption = #1054' '#1089#1080#1089#1090#1077#1084#1077
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 8
    Top = 28
    Width = 77
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1090#1077#1089#1090#1086#1074':'
  end
  object Label3: TLabel
    Left = 8
    Top = 76
    Width = 82
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088' '#1084#1072#1089#1089#1080#1074#1072':'
  end
  object Label4: TLabel
    Left = 224
    Top = 13
    Width = 121
    Height = 13
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074#1089#1090#1072#1074#1082#1072#1084#1080':'
  end
  object Label5: TLabel
    Left = 226
    Top = 183
    Width = 112
    Height = 13
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074#1099#1073#1086#1088#1086#1084':'
  end
  object Edit1: TEdit
    Left = 8
    Top = 47
    Width = 201
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object Edit2: TEdit
    Left = 8
    Top = 95
    Width = 201
    Height = 21
    TabOrder = 1
    Text = '9000'
  end
  object Button1: TButton
    Left = 8
    Top = 122
    Width = 201
    Height = 46
    Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1090#1077#1089#1090
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 224
    Top = 37
    Width = 321
    Height = 108
    ColCount = 4
    DefaultColWidth = 70
    DefaultRowHeight = 25
    RowCount = 4
    TabOrder = 3
  end
  object StringGrid2: TStringGrid
    Left = 226
    Top = 207
    Width = 321
    Height = 108
    ColCount = 4
    DefaultColWidth = 70
    DefaultRowHeight = 25
    RowCount = 4
    TabOrder = 4
  end
  object Button2: TButton
    Left = 135
    Top = 182
    Width = 74
    Height = 132
    Caption = #1043#1088#1072#1092#1080#1082
    TabOrder = 5
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 174
    Width = 121
    Height = 59
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
    Items.Strings = (
      'Insertion'
      'Selection')
    TabOrder = 6
  end
  object RadioGroup2: TRadioGroup
    Left = 16
    Top = 239
    Width = 113
    Height = 75
    Items.Strings = (
      '1..n'
      'n..1'
      'Random')
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 551
    Top = 37
    Width = 74
    Height = 277
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object Memo2: TMemo
    Left = 631
    Top = 37
    Width = 74
    Height = 277
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
end
