object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 347
  ClientWidth = 482
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
    Top = 5
    Width = 105
    Height = 13
    Caption = #1052#1072#1090#1088#1080#1094#1072' '#1089#1084#1077#1078#1085#1086#1089#1090#1080':'
  end
  object Label3: TLabel
    Left = 319
    Top = 5
    Width = 37
    Height = 13
    Caption = #1042#1099#1074#1086#1076':'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 305
    Height = 313
    ColCount = 9
    DefaultColWidth = 30
    DefaultRowHeight = 30
    RowCount = 9
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 319
    Top = 24
    Width = 154
    Height = 265
    TabOrder = 1
  end
  object Button1: TButton
    Left = 319
    Top = 295
    Width = 154
    Height = 42
    Caption = #1047#1072#1087#1091#1089#1082
    TabOrder = 2
    OnClick = Button1Click
  end
end
