object Form7: TForm7
  Left = 1082
  Top = 194
  Caption = 'Form7'
  ClientHeight = 313
  ClientWidth = 500
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
  object Label4: TLabel
    Left = 390
    Top = 5
    Width = 32
    Height = 13
    Caption = #1054#1090#1074#1077#1090
  end
  object Label5: TLabel
    Left = 335
    Top = 256
    Width = 80
    Height = 13
    Caption = #1054#1073#1098#1077#1084' '#1088#1102#1082#1079#1072#1082#1072
  end
  object Memo3: TMemo
    Left = 335
    Top = 24
    Width = 153
    Height = 224
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 335
    Top = 275
    Width = 145
    Height = 21
    TabOrder = 1
    Text = '12'
  end
  object Button1: TButton
    Left = 8
    Top = 254
    Width = 321
    Height = 42
    Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 321
    Height = 240
    ColCount = 3
    DefaultColWidth = 100
    RowCount = 9
    TabOrder = 3
  end
end
