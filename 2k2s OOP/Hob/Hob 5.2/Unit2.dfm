object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 426
  ClientWidth = 566
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
  object Image1: TImage
    Left = 0
    Top = 8
    Width = 558
    Height = 321
  end
  object Label1: TLabel
    Left = 32
    Top = 335
    Width = 39
    Height = 13
    Caption = #1058#1086#1095#1082#1072' 1'
  end
  object Label5: TLabel
    Left = 20
    Top = 390
    Width = 6
    Height = 13
    Caption = 'Y'
  end
  object Label6: TLabel
    Left = 20
    Top = 363
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 168
    Top = 335
    Width = 39
    Height = 13
    Caption = #1058#1086#1095#1082#1072' 2'
  end
  object Label3: TLabel
    Left = 304
    Top = 335
    Width = 39
    Height = 13
    Caption = #1058#1086#1095#1082#1072' 3'
  end
  object Edit1: TEdit
    Left = 32
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '70'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 32
    Top = 387
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '250'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 442
    Top = 335
    Width = 97
    Height = 34
    Caption = #1053#1072#1088#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 442
    Top = 375
    Width = 97
    Height = 34
    Caption = #1062#1074#1077#1090
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 168
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '140'
    OnKeyPress = Edit1KeyPress
  end
  object Edit4: TEdit
    Left = 168
    Top = 387
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '80'
    OnKeyPress = Edit1KeyPress
  end
  object Edit5: TEdit
    Left = 304
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '230'
    OnKeyPress = Edit1KeyPress
  end
  object Edit6: TEdit
    Left = 304
    Top = 387
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '300'
    OnKeyPress = Edit1KeyPress
  end
  object ColorDialog1: TColorDialog
    Left = 528
  end
end
