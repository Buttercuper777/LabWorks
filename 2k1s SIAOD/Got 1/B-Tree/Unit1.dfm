object Form1: TForm1
  Left = 103
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'B-Tree'
  ClientHeight = 488
  ClientWidth = 947
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 24
    Width = 945
    Height = 433
    Color = clMenu
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    OnPaint = PaintBox1Paint
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 81
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 432
    Top = 8
    Width = 57
    Height = 22
    MaxLength = 3
    MaxValue = 999
    MinValue = 0
    TabOrder = 1
    Value = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 945
    Height = 33
    Color = clSkyBlue
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 496
    Top = 8
    Width = 81
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
end
