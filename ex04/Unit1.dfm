object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 88
    Top = 35
    Width = 83
    Height = 16
    Caption = 'Sequencia 1:'
  end
  object Label2: TLabel
    Left = 88
    Top = 65
    Width = 83
    Height = 16
    Caption = 'Sequencia 2:'
  end
  object Edit1: TEdit
    Left = 176
    Top = 32
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 62
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object Button1: TButton
    Left = 152
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
