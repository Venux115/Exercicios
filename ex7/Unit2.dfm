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
  OnClose = FormClose
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
    ExplicitWidth = 1278
    ExplicitHeight = 679
    object CrdCadastro: TCard
      Left = 1
      Top = 1
      Width = 1161
      Height = 578
      Caption = 'CrdCadastro'
      CardIndex = 0
      TabOrder = 0
      ExplicitWidth = 775
      ExplicitHeight = 482
      object PnlBotoes1: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 775
        object Button3: TButton
          Left = 96
          Top = 0
          Width = 90
          Height = 57
          Align = alLeft
          Caption = 'Alterar'
          TabOrder = 0
          ExplicitLeft = 97
          ExplicitTop = 1
          ExplicitHeight = 55
        end
        object Button4: TButton
          Left = 0
          Top = 0
          Width = 96
          Height = 57
          Align = alLeft
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = Button4Click
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 55
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
        ExplicitLeft = -1
        ExplicitWidth = 1264
        ExplicitHeight = 531
        object Label2: TLabel
          Left = 100
          Top = 27
          Width = 53
          Height = 19
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 72
          Top = 73
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
          Top = 163
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
          Top = 196
          Width = 78
          Height = 19
          Caption = 'Telefone:'
        end
        object Button8: TButton
          Left = 88
          Top = 248
          Width = 113
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 159
          Top = 24
          Width = 442
          Height = 27
          DataField = 'DS_NOME'
          DataSource = DM.DataSource1
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 159
          Top = 67
          Width = 442
          Height = 27
          DataField = 'DS_ENDERECO'
          DataSource = DM.DataSource1
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 159
          Top = 100
          Width = 442
          Height = 27
          DataField = 'DS_BAIRRO'
          DataSource = DM.DataSource1
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 159
          Top = 133
          Width = 98
          Height = 27
          DataField = 'NR_CEP'
          DataSource = DM.DataSource1
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 159
          Top = 163
          Width = 442
          Height = 27
          DataField = 'DS_CIDADE'
          DataSource = DM.DataSource1
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 159
          Top = 196
          Width = 442
          Height = 27
          DataField = 'DS_FONE'
          DataSource = DM.DataSource1
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 560
          Top = 130
          Width = 34
          Height = 27
          DataField = 'DS_UF'
          DataSource = DM.DataSource1
          TabOrder = 7
        end
        object DBNavigator1: TDBNavigator
          Left = 361
          Top = 247
          Width = 240
          Height = 25
          DataSource = DM.DataSource1
          TabOrder = 8
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
      ExplicitWidth = 775
      ExplicitHeight = 482
      object PnlBotoes2: TPanel
        Left = 0
        Top = 0
        Width = 1161
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 775
        object Button5: TButton
          Left = 105
          Top = 0
          Width = 95
          Height = 57
          Align = alLeft
          Caption = 'Alterar'
          TabOrder = 0
          ExplicitLeft = 106
          ExplicitTop = 1
          ExplicitHeight = 55
        end
        object Button6: TButton
          Left = 0
          Top = 0
          Width = 105
          Height = 57
          Align = alLeft
          Caption = 'Cadastrar'
          TabOrder = 1
          OnClick = Button6Click
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 55
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
        ExplicitLeft = -24
        ExplicitTop = 28
        ExplicitWidth = 1264
        ExplicitHeight = 531
        object Label1: TLabel
          Left = 34
          Top = 24
          Width = 78
          Height = 19
          Caption = 'Pesquisa:'
        end
        object Edit1: TEdit
          Left = 35
          Top = 49
          Width = 526
          Height = 27
          TabOrder = 0
        end
        object Button1: TButton
          Left = 584
          Top = 46
          Width = 97
          Height = 27
          Caption = 'Pesquisar'
          TabOrder = 1
        end
        object DBGrid1: TDBGrid
          Left = 35
          Top = 117
          Width = 1086
          Height = 364
          DataSource = DM.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'DS_NOME'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'DS_ENDERECO'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'DS_BAIRRO'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'NR_CEP'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'DS_CIDADE'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'DS_UF'
              Width = 150
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'DS_FONE'
              Width = 150
              Visible = True
            end>
        end
      end
    end
  end
end
