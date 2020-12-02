object Form13: TForm13
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1095#1072' '#1086' '#1088#1072#1085#1094#1077
  ClientHeight = 393
  ClientWidth = 366
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
    Top = 339
    Width = 148
    Height = 13
    Caption = #1042#1089#1077#1075#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1077#1076#1084#1077#1090#1086#1074
  end
  object Label2: TLabel
    Left = 8
    Top = 366
    Width = 151
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1084#1072#1089#1089#1072' '#1088#1102#1082#1079#1072#1082#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 13
    Caption = #1042#1077#1089#1072' '#1087#1088#1077#1076#1084#1077#1090#1086#1074':'
  end
  object Label4: TLabel
    Left = 159
    Top = 8
    Width = 91
    Height = 19
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 165
    Top = 336
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '4'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 165
    Top = 363
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '12'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 33
    Width = 145
    Height = 288
    ColCount = 2
    DefaultColWidth = 60
    DefaultRowHeight = 20
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 159
    Top = 33
    Width = 185
    Height = 288
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 248
    Top = 334
    Width = 96
    Height = 50
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 4
    OnClick = Button1Click
  end
end
