object DM: TDM
  OldCreateOrder = False
  Height = 300
  Width = 548
  object SQLconexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\vinil\OneDrive\Documentos\Atividades\ex7\DB\DB' +
        '.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'CD_CODIGOCLI'
    Connection = SQLconexao
    TableName = 'cliente'
    Left = 136
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 200
    Top = 56
  end
end
