object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 422
  ClientWidth = 671
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
    Left = 327
    Top = 5
    Width = 42
    Height = 13
    Caption = #1044#1077#1088#1077#1074#1086':'
  end
  object Label2: TLabel
    Left = 8
    Top = 381
    Width = 85
    Height = 13
    Caption = #1054#1089#1090#1086#1074#1086#1081' '#1082#1072#1088#1082#1072#1089':'
  end
  object Label4: TLabel
    Left = 99
    Top = 381
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 8
    Top = 400
    Width = 24
    Height = 13
    Caption = #1042#1077#1089': '
  end
  object Label6: TLabel
    Left = 38
    Top = 400
    Width = 64
    Height = 13
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 313
    Height = 303
    ColCount = 9
    DefaultColWidth = 30
    DefaultRowHeight = 30
    RowCount = 9
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 333
    Width = 313
    Height = 42
    Caption = #1047#1072#1087#1091#1089#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object TreeView1: TTreeView
    Left = 327
    Top = 24
    Width = 178
    Height = 351
    Indent = 19
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 511
    Top = 24
    Width = 138
    Height = 313
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
end
