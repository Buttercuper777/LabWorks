object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 598
  ClientWidth = 572
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
  object Label1: TLabel
    Left = 8
    Top = 476
    Width = 89
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1086#1083#1073#1094#1086#1074':'
  end
  object Label2: TLabel
    Left = 8
    Top = 505
    Width = 71
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1086#1082':'
  end
  object Label3: TLabel
    Left = 256
    Top = 475
    Width = 66
    Height = 13
    Caption = #8470' '#1057#1090#1086#1083#1073#1094#1072': '
  end
  object Label4: TLabel
    Left = 256
    Top = 504
    Width = 38
    Height = 13
    Caption = #1057#1091#1084#1084#1072': '
  end
  object Label5: TLabel
    Left = 8
    Top = 5
    Width = 98
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072':'
  end
  object Label6: TLabel
    Left = 8
    Top = 237
    Width = 74
    Height = 13
    Caption = #1052#1086#1076'. '#1084#1072#1090#1088#1080#1094#1072':'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 552
    Height = 201
    TabOrder = 0
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 256
    Width = 552
    Height = 201
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 103
    Top = 473
    Width = 122
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 103
    Top = 500
    Width = 122
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 531
    Width = 217
    Height = 25
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 562
    Width = 217
    Height = 25
    Caption = #1052#1086#1076'. '#1084#1072#1090#1088#1080#1094#1072
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 328
    Top = 472
    Width = 56
    Height = 21
    Enabled = False
    TabOrder = 6
    OnKeyPress = Edit1KeyPress
  end
  object Button3: TButton
    Left = 256
    Top = 531
    Width = 128
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    Enabled = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 423
    Top = 472
    Width = 137
    Height = 73
    Caption = #1042#1072#1088#1080#1072#1085#1090':'
    Items.Strings = (
      #1054#1073#1097#1080#1081' '#1074#1072#1088#1080#1072#1085#1090
      #1042#1072#1088#1080#1072#1085#1090' 11')
    TabOrder = 8
    OnClick = RadioGroup1Click
  end
end
