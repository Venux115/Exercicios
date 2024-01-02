object DM: TDM
  Height = 561
  Width = 889
  PixelsPerInch = 120
  object SQLconexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\vagvi\dev\ex07.01\DB\AVALIACAO.FDB'
      'User_Name=sysdba'
      'Password=vinicius'
      'DriverID=FB')
    LoginPrompt = False
    Left = 64
    Top = 70
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'CD_CODIGOCLI'
    Connection = SQLconexao
    TableName = 'CLIENTE'
    Left = 180
    Top = 70
    object FDTable1DS_NOME: TStringField
      DisplayWidth = 21
      FieldName = 'DS_NOME'
      Origin = 'DS_NOME'
      Size = 60
    end
    object FDTable1DS_ENDERECO: TStringField
      DisplayWidth = 16
      FieldName = 'DS_ENDERECO'
      Origin = 'DS_ENDERECO'
      Size = 60
    end
    object FDTable1DS_BAIRRO: TStringField
      DisplayWidth = 13
      FieldName = 'DS_BAIRRO'
      Origin = 'DS_BAIRRO'
      Size = 30
    end
    object FDTable1NR_CEP: TStringField
      DisplayWidth = 8
      FieldName = 'NR_CEP'
      Origin = 'NR_CEP'
      Size = 8
    end
    object FDTable1DS_CIDADE: TStringField
      DisplayWidth = 13
      FieldName = 'DS_CIDADE'
      Origin = 'DS_CIDADE'
      Size = 60
    end
    object FDTable1DS_UF: TStringField
      DisplayWidth = 5
      FieldName = 'DS_UF'
      Origin = 'DS_UF'
      Size = 2
    end
    object FDTable1DS_FONE: TStringField
      DisplayWidth = 13
      FieldName = 'DS_FONE'
      Origin = 'DS_FONE'
    end
    object FDTable1CD_CODIGOCLI: TIntegerField
      DisplayWidth = 13
      FieldName = 'CD_CODIGOCLI'
      Origin = 'CD_CODIGOCLI'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = SQLconexao
    SQL.Strings = (
      'select * from cliente;')
    Left = 280
    Top = 70
    object FDQuery1CD_CODIGOCLI: TIntegerField
      FieldName = 'CD_CODIGOCLI'
      Origin = 'CD_CODIGOCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DS_NOME: TStringField
      FieldName = 'DS_NOME'
      Origin = 'DS_NOME'
      Size = 60
    end
    object FDQuery1DS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Origin = 'DS_ENDERECO'
      Size = 60
    end
    object FDQuery1DS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Origin = 'DS_BAIRRO'
      Size = 30
    end
    object FDQuery1NR_CEP: TStringField
      FieldName = 'NR_CEP'
      Origin = 'NR_CEP'
      Size = 8
    end
    object FDQuery1DS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Origin = 'DS_CIDADE'
      Size = 60
    end
    object FDQuery1DS_UF: TStringField
      FieldName = 'DS_UF'
      Origin = 'DS_UF'
      Size = 2
    end
    object FDQuery1DS_FONE: TStringField
      FieldName = 'DS_FONE'
      Origin = 'DS_FONE'
    end
  end
end
