unit U_tabela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.WinXPanels,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    CardPanel1: TCardPanel;
    CrdCadastro: TCard;
    PnlBotoes1: TPanel;
    PnlCadastro: TPanel;
    Button4: TButton;
    crdPesquisa: TCard;
    PnlBotoes2: TPanel;
    Button6: TButton;
    PnlPesquisa: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DS_clientes: TDataSource;
    Button8: TButton;
    Button1: TButton;
    Button2: TButton;
    Ed_nome: TEdit;
    Ed_endereco: TEdit;
    Ed_bairro: TEdit;
    Ed_cidade: TEdit;
    Ed_fone: TEdit;
    Ed_uf: TEdit;
    Label1: TLabel;
    Ed_cod: TEdit;
    Me_cep: TMaskEdit;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label9: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  nome,endereco,cidade,cep,uf,fone,bairro,pesq:string;


implementation

uses
  U_principal,U_dm,U_alterar;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

  DM.FDTable1.Insert;

  //Ativando/desativando Botoes
  Button8.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;

   //ativando edits
    Ed_cod.ReadOnly := True;
    Ed_nome.ReadOnly := True;
    Ed_endereco.ReadOnly := True;
    Ed_bairro.ReadOnly := True;
    Me_cep.ReadOnly := True;
    Ed_cidade.ReadOnly := True;
    Ed_uf.ReadOnly := True;
    Ed_fone.ReadOnly := True;

  if (Ed_nome.text = '') OR (Me_cep.text = '') OR (Ed_cod.text = '') then
    begin
      showmessage('Campo "Nome","CEP" e "COD" obrigatórios');
      Ed_nome.SetFocus;
    end

  else
    begin
    // Inclusao na tabela
     with DM.FDQuery1 do
     begin
     sql.clear;
     sql.add('Insert into cliente (CD_CODIGOCLI, DS_NOME, DS_ENDERECO,  DS_BAIRRO, NR_CEP, DS_CIDADE, DS_UF, DS_FONE) Values(:cod, :nome, :endereco, :bairro, :cep, :cidade, :uf, :fone);');
     ParamByName('cod').AsInteger := strtoint(Ed_cod.text);
     ParamByName('nome').AsString := Ed_nome.text;
     ParamByName('endereco').AsString := Ed_endereco.text;
     ParamByName('bairro').AsString := Ed_bairro.text;
     ParamByName('cidade').AsString := Ed_cidade.text;
     ParamByName('cep').AsString := Me_cep.text;
     ParamByName('uf').AsString := Ed_uf.text;
     ParamByName('fone').AsString := Ed_fone.text;

     execsql;
     end;

    //limpar edits
    Ed_cod.clear;
    Ed_nome.clear;
    Ed_endereco.clear;
    Ed_bairro.clear;
    Me_cep.clear;
    Ed_cidade.clear;
    Ed_uf.clear;
    Ed_fone.clear;
    end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin

  //Ativando/desativando Botoes
  Button8.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;

  //ativando edits
    Ed_cod.ReadOnly := True;
    Ed_nome.ReadOnly := True;
    Ed_endereco.ReadOnly := True;
    Ed_bairro.ReadOnly := True;
    Me_cep.ReadOnly := True;
    Ed_cidade.ReadOnly := True;
    Ed_uf.ReadOnly := True;
    Ed_fone.ReadOnly := True;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin

DM.FDQuery1.sql.clear;
DM.FDQuery1.sql.add('select * from cliente');
DM.FDQuery1.open;
    //trocar para o Card Pesquisa
    CardPanel1.ActiveCard := crdPesquisa;
    Form2.Caption := 'Pesquisa';

end;

procedure TForm2.Button6Click(Sender: TObject);
begin

    //Trocar para o Card Cadastro
    CardPanel1.ActiveCard := CrdCadastro;
    Form2.Caption := 'Cadastro';

end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  Form2.close;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin

    //Ativando/desativando Botoes
    Button8.Enabled := False;
    Button1.Enabled := True;
    Button2.Enabled := True;

    //ativando edits
  Ed_cod.ReadOnly := False;
  Ed_nome.ReadOnly := False;
  Ed_endereco.ReadOnly := False;
  Ed_bairro.ReadOnly := False;
  Me_cep.ReadOnly := False;
  Ed_cidade.ReadOnly := False;
  Ed_uf.ReadOnly := False;
  Ed_fone.ReadOnly := False;


end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
   application.CreateForm(TForm5,Form5);
   form5.ed_nome.Text := Dbgrid1.Fields[1].value;
   form5.ed_endereco.Text := Dbgrid1.fields[2].Value;
   form5.Ed_bairro.Text := Dbgrid1.Fields[3].Value;
   form5.Ed_cep.text :=  Dbgrid1.Fields[4].Value;
   form5.Ed_cidade.Text := Dbgrid1.Fields[5].Value;
   form5.Ed_uf.Text := Dbgrid1.Fields[6].Value;
   form5.Ed_telefone.Text :=  Dbgrid1.Fields[7].Value;
   form5.Ed_cod.Text := Dbgrid1.Fields[0].Value;
   Form5.ShowModal;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
with DM.FDQuery1 do
begin
  sql.Clear;
  sql.add('select * from cliente where DS_NOME CONTAINING(:pesq);');
  ParamByName('pesq').AsString := edit1.Text;
  open;
end;
end;

end.
