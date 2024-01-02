object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o'
  ClientHeight = 467
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 100
    Top = 27
    Width = 40
    Height = 16
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 73
    Top = 70
    Width = 65
    Height = 16
    Caption = 'Endere'#231'o:'
  end
  object Label4: TLabel
    Left = 97
    Top = 103
    Width = 44
    Height = 16
    Caption = 'Bairro:'
  end
  object Label5: TLabel
    Left = 115
    Top = 136
    Width = 28
    Height = 16
    Caption = 'CEP:'
  end
  object Label6: TLabel
    Left = 91
    Top = 166
    Width = 48
    Height = 16
    Caption = 'Cidade:'
  end
  object Label7: TLabel
    Left = 527
    Top = 133
    Width = 19
    Height = 16
    Caption = 'UF:'
  end
  object Label8: TLabel
    Left = 75
    Top = 199
    Width = 60
    Height = 16
    Caption = 'Telefone:'
  end
  object Label1: TLabel
    Left = 518
    Top = 27
    Width = 28
    Height = 16
    Caption = 'Cod.'
  end
  object Button8: TButton
    Left = 97
    Top = 248
    Width = 113
    Height = 49
    Caption = 'Editar'
    TabOrder = 0
    OnClick = Button8Click
  end
  object Button1: TButton
    Left = 227
    Top = 248
    Width = 113
    Height = 49
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 513
    Top = 248
    Width = 113
    Height = 49
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Ed_nome: TEdit
    Left = 159
    Top = 24
    Width = 353
    Height = 24
    ReadOnly = True
    TabOrder = 3
  end
  object Ed_cep: TEdit
    Left = 159
    Top = 130
    Width = 100
    Height = 24
    ReadOnly = True
    TabOrder = 4
  end
  object Ed_endereco: TEdit
    Left = 160
    Top = 67
    Width = 443
    Height = 24
    ReadOnly = True
    TabOrder = 5
  end
  object Ed_bairro: TEdit
    Left = 159
    Top = 100
    Width = 443
    Height = 24
    ReadOnly = True
    TabOrder = 6
  end
  object Ed_cidade: TEdit
    Left = 159
    Top = 161
    Width = 443
    Height = 24
    ReadOnly = True
    TabOrder = 7
  end
  object Ed_telefone: TEdit
    Left = 158
    Top = 194
    Width = 443
    Height = 24
    ReadOnly = True
    TabOrder = 8
  end
  object Ed_uf: TEdit
    Left = 560
    Top = 130
    Width = 43
    Height = 24
    ReadOnly = True
    TabOrder = 9
  end
  object Ed_cod: TEdit
    Left = 560
    Top = 24
    Width = 43
    Height = 24
    ReadOnly = True
    TabOrder = 10
  end
  object Button3: TButton
    Left = 371
    Top = 248
    Width = 113
    Height = 49
    Caption = 'Deletar'
    TabOrder = 11
    OnClick = Button3Click
  end
  object DS2: TDataSource
    DataSet = DM.FDQuery1
    Left = 672
    Top = 40
  end
end
