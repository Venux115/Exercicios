object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 580
  ClientWidth = 1163
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 1163
    Height = 580
    Align = alClient
    ActiveCard = CrdCadastro
    Caption = 'CardPanel1'
    TabOrder = 0
    object CrdCadastro: TCard
      Left = 1
      Top = 1
      Width = 1161
      Height = 578
      Caption = 'CrdCadastro'
      CardIndex = 0
      TabOrder = 0
      object PnlBotoes1: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button4: TButton
          Left = 0
          Top = 0
          Width = 96
          Height = 57
          Align = alLeft
          Caption = 'Dados'
          TabOrder = 0
          OnClick = Button4Click
        end
      end
      object PnlCadastro: TPanel
        Left = 0
        Top = 57
        Width = 1161
        Height = 521
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 100
          Top = 27
          Width = 53
          Height = 19
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 73
          Top = 70
          Width = 81
          Height = 19
          Caption = 'Endere'#231'o:'
        end
        object Label4: TLabel
          Left = 97
          Top = 103
          Width = 56
          Height = 19
          Caption = 'Bairro:'
        end
        object Label5: TLabel
          Left = 115
          Top = 136
          Width = 38
          Height = 19
          Caption = 'CEP:'
        end
        object Label6: TLabel
          Left = 91
          Top = 166
          Width = 62
          Height = 19
          Caption = 'Cidade:'
        end
        object Label7: TLabel
          Left = 527
          Top = 133
          Width = 27
          Height = 19
          Caption = 'UF:'
        end
        object Label8: TLabel
          Left = 75
          Top = 199
          Width = 78
          Height = 19
          Caption = 'Telefone:'
        end
        object Label1: TLabel
          Left = 518
          Top = 27
          Width = 36
          Height = 19
          Caption = 'Cod.'
        end
        object Button8: TButton
          Left = 73
          Top = 256
          Width = 113
          Height = 49
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = Button8Click
        end
        object Button1: TButton
          Left = 201
          Top = 256
          Width = 113
          Height = 49
          Caption = 'Salvar'
          Enabled = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 489
          Top = 256
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
          Height = 27
          ReadOnly = True
          TabOrder = 3
        end
        object Ed_endereco: TEdit
          Left = 160
          Top = 67
          Width = 443
          Height = 27
          ReadOnly = True
          TabOrder = 4
        end
        object Ed_bairro: TEdit
          Left = 159
          Top = 100
          Width = 443
          Height = 27
          ReadOnly = True
          TabOrder = 5
        end
        object Ed_cidade: TEdit
          Left = 159
          Top = 161
          Width = 443
          Height = 27
          ReadOnly = True
          TabOrder = 6
        end
        object Ed_fone: TEdit
          Left = 158
          Top = 194
          Width = 443
          Height = 27
          ReadOnly = True
          TabOrder = 7
        end
        object Ed_uf: TEdit
          Left = 560
          Top = 130
          Width = 43
          Height = 27
          TabOrder = 8
        end
        object Ed_cod: TEdit
          Left = 560
          Top = 24
          Width = 43
          Height = 27
          TabOrder = 9
        end
        object Me_cep: TMaskEdit
          Left = 159
          Top = 133
          Width = 118
          Height = 27
          EditMask = '99999-999;1;_'
          MaxLength = 9
          TabOrder = 10
          Text = '     -   '
        end
      end
    end
    object crdPesquisa: TCard
      Left = 1
      Top = 1
      Width = 1161
      Height = 578
      Caption = 'crdPesquisa'
      CardIndex = 1
      TabOrder = 1
      object PnlBotoes2: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label9: TLabel
          Left = 152
          Top = 22
          Width = 78
          Height = 19
          Caption = 'Pesquisa:'
        end
        object Button6: TButton
          Left = 0
          Top = 0
          Width = 105
          Height = 57
          Align = alLeft
          Caption = 'Cadastrar'
          TabOrder = 0
          OnClick = Button6Click
        end
        object Edit1: TEdit
          Left = 248
          Top = 15
          Width = 473
          Height = 27
          TabOrder = 1
          OnChange = Edit1Change
        end
      end
      object PnlPesquisa: TPanel
        Left = 0
        Top = 57
        Width = 1161
        Height = 521
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 23
          Top = 22
          Width = 1057
          Height = 353
          DataSource = DS_clientes
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CD_CODIGOCLI'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_NOME'
              Width = 238
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_ENDERECO'
              Width = 253
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_BAIRRO'
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_CEP'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_CIDADE'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_UF'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_FONE'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  object DS_clientes: TDataSource
    DataSet = DM.FDQuery1
    Left = 1048
    Top = 8
  end
end
