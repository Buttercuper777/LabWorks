object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 175
  ClientWidth = 600
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
    Width = 122
    Height = 13
    Caption = #1044#1074#1086#1081#1085#1086#1077' '#1093#1077#1096#1080#1088#1086#1074#1072#1085#1080#1077': '
  end
  object Label2: TLabel
    Left = 8
    Top = 117
    Width = 104
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1083#1077#1084#1077#1085#1090':'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 27
    Width = 584
    Height = 78
    DefaultColWidth = 22
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 135
    Top = 134
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
end
