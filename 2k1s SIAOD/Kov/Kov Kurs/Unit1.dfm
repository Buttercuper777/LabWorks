object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1050#1086#1074#1072#1083#1105#1074' '#1048#1042#1058'-21'
  ClientHeight = 454
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 67
    Top = 383
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 14
    Caption = #1042#1074#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 8
    Width = 42
    Height = 14
    Caption = #1042#1099#1074#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 335
    Width = 15
    Height = 18
    Caption = 'N:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 429
    Width = 46
    Height = 14
    Caption = #1042#1099#1074#1086#1076':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 65
    Top = 429
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TreeView1: TTreeView
    Left = 231
    Top = 32
    Width = 209
    Height = 297
    Indent = 19
    TabOrder = 0
  end
  object Button1: TButton
    Left = 351
    Top = 335
    Width = 86
    Height = 83
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 217
    Height = 297
    Lines.Strings = (
      '4'
      '2'
      '1'
      '3'
      '9'
      '5'
      '7'
      '6'
      '8'
      '20'
      '19'
      '17'
      '25'
      '23'
      '24'
      '26')
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 29
    Top = 336
    Width = 50
    Height = 21
    TabOrder = 3
    Text = '10'
  end
  object Button2: TButton
    Left = 85
    Top = 335
    Width = 140
    Height = 25
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 231
    Top = 335
    Width = 114
    Height = 83
    Caption = #1042#1099#1074#1086#1076':'
    Enabled = False
    Items.Strings = (
      #1055#1088#1103#1084#1086#1081
      #1054#1073#1088#1072#1090#1085#1099#1081
      #1057#1080#1084#1084#1077#1090#1088#1080#1095#1085#1099#1081)
    TabOrder = 5
    OnClick = RadioGroup1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 366
    Width = 217
    Height = 21
    TabOrder = 6
  end
  object Button3: TButton
    Left = 8
    Top = 393
    Width = 63
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    Enabled = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 77
    Top = 393
    Width = 79
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Enabled = False
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 162
    Top = 393
    Width = 63
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    TabOrder = 9
    OnClick = Button5Click
  end
end
