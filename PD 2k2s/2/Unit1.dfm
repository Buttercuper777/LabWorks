object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 417
  ClientWidth = 596
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
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 361
    Height = 249
    RowCount = 9
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 375
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 1
    OnChange = ComboBox1Change
    Items.Strings = (
      '1 '#1089#1090#1088#1086#1082#1072
      '2 '#1089#1090#1088#1086#1082#1072
      '3 '#1089#1090#1088#1086#1082#1072
      '4 '#1089#1090#1088#1086#1082#1072)
  end
  object Button1: TButton
    Left = 375
    Top = 35
    Width = 145
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 2
  end
end
