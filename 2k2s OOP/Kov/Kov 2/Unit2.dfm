object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form 1'
  ClientHeight = 301
  ClientWidth = 432
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
    Top = 13
    Width = 11
    Height = 19
    Caption = #1061
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 62
    Height = 19
    Caption = #1058#1086#1095#1085#1086#1089#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 19
    Width = 129
    Height = 19
    Caption = #1063#1072#1089#1090#1080#1095#1085#1099#1077' '#1089#1091#1084#1084#1099#8217
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label_Func: TLabel
    Left = 8
    Top = 183
    Width = 54
    Height = 13
    Caption = 'Label_Func'
    Visible = False
  end
  object Label_Sum: TLabel
    Left = 8
    Top = 218
    Width = 50
    Height = 13
    Caption = 'Label_sum'
    Visible = False
  end
  object Label_AbsE: TLabel
    Left = 8
    Top = 245
    Width = 55
    Height = 13
    Caption = 'Label_AbsE'
    Visible = False
  end
  object Label_Kol: TLabel
    Left = 8
    Top = 280
    Width = 45
    Height = 13
    Caption = 'Label_Kol'
    Visible = False
  end
  object Edit_X: TEdit
    Left = 96
    Top = 14
    Width = 65
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit_XKeyPress
  end
  object Edit_Eps: TEdit
    Left = 96
    Top = 52
    Width = 65
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit_EpsKeyPress
  end
  object Button_Calc: TButton
    Left = 8
    Top = 79
    Width = 153
    Height = 29
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 2
    OnClick = Button_CalcClick
  end
  object Memo_ChSum: TMemo
    Left = 256
    Top = 38
    Width = 161
    Height = 209
    ReadOnly = True
    TabOrder = 3
  end
end
