object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1048#1079#1091#1095#1077#1085#1080#1077' '#1086#1090#1083#1072#1076#1095#1080#1082#1072
  ClientHeight = 290
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 116
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 118
    Height = 13
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 123
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
  end
  object Label4: TLabel
    Left = 224
    Top = 176
    Width = 48
    Height = 18
    Caption = 'Result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 5
    Width = 65
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 136
    Top = 37
    Width = 65
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 136
    Top = 69
    Width = 65
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 153
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1084#1072#1089#1089#1080#1074#1072
    TabOrder = 3
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 144
    Width = 153
    Height = 97
    Caption = #1059#1089#1083#1086#1074#1080#1077' '#1074#1099#1073#1086#1088#1072
    Items.Strings = (
      #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1095#1080#1089#1083#1086
      #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1095#1080#1089#1083#1086
      #1047#1072#1076#1072#1085#1085#1086#1077' '#1095#1080#1089#1083#1086)
    TabOrder = 4
    Visible = False
    OnClick = RadioGroup1Click
  end
  object Button2: TButton
    Left = 96
    Top = 257
    Width = 81
    Height = 25
    Caption = #1042#1099#1073#1086#1088
    TabOrder = 5
    Visible = False
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 312
    Top = 8
    Width = 161
    Height = 273
    TabOrder = 6
    Visible = False
  end
  object Edit4: TEdit
    Left = 24
    Top = 261
    Width = 66
    Height = 21
    TabOrder = 7
    Visible = False
    OnKeyPress = Edit1KeyPress
  end
end
