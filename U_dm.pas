unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.Provider, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDM = class(TDataModule)
    SQLconexao: TFDConnection;
    FDTable1: TFDTable;
    FDTable1DS_NOME: TStringField;
    FDTable1DS_ENDERECO: TStringField;
    FDTable1DS_BAIRRO: TStringField;
    FDTable1NR_CEP: TStringField;
    FDTable1DS_CIDADE: TStringField;
    FDTable1DS_UF: TStringField;
    FDTable1DS_FONE: TStringField;
    FDTable1CD_CODIGOCLI: TIntegerField;
    FDQuery1: TFDQuery;
    FDQuery1CD_CODIGOCLI: TIntegerField;
    FDQuery1DS_NOME: TStringField;
    FDQuery1DS_ENDERECO: TStringField;
    FDQuery1DS_BAIRRO: TStringField;
    FDQuery1NR_CEP: TStringField;
    FDQuery1DS_CIDADE: TStringField;
    FDQuery1DS_UF: TStringField;
    FDQuery1DS_FONE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  pesq:string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
