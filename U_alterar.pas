unit U_alterar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, U_dm, Data.DB;

type
  TForm5 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Button8: TButton;
    Button1: TButton;
    Button2: TButton;
    Ed_nome: TEdit;
    Ed_cep: TEdit;
    Ed_endereco: TEdit;
    Ed_bairro: TEdit;
    Ed_cidade: TEdit;
    Ed_telefone: TEdit;
    Ed_uf: TEdit;
    Ed_cod: TEdit;
    Button3: TButton;
    DS2: TDataSource;
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  U_principal, U_tabela;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
     with DM.FDQuery1 do
     begin
     sql.clear;
     sql.add('Update cliente  set DS_NOME = :nome, DS_ENDERECO = :endereco,  DS_BAIRRO = :bairro, NR_CEP = :cep, DS_CIDADE = :cidade, DS_UF = :uf, DS_FONE = :fone  where CD_CODIGOCLI = :cod ;');

     ParamByName('nome').AsString := Ed_nome.text;
     ParamByName('endereco').AsString := Ed_endereco.text;
     ParamByName('bairro').AsString := Ed_bairro.text;
     ParamByName('cidade').AsString := Ed_cidade.text;
     ParamByName('cep').AsString := Ed_cep.text;
     ParamByName('uf').AsString := Ed_uf.text;
     ParamByName('fone').AsString := Ed_telefone.text;
     ParamByName('cod').AsInteger := strtoint(Ed_cod.text);
     execsql;

     sql.clear;
     sql.add('Select * from cliente;');
     open;
     end;

   form5.ed_nome.Text := DM.FDQuery1.Fields[1].value;
   form5.ed_endereco.Text := DM.FDQuery1.fields[2].Value;
   form5.Ed_bairro.Text := DM.FDQuery1.Fields[3].Value;
   form5.Ed_cep.text :=  DM.FDQuery1.Fields[4].Value;
   form5.Ed_cidade.Text := DM.FDQuery1.Fields[5].Value;
   form5.Ed_uf.Text := DM.FDQuery1.Fields[6].Value;
   form5.Ed_telefone.Text :=  DM.FDQuery1.Fields[7].Value;
   form5.Ed_cod.Text := DM.FDQuery1.Fields[0].Value;

     //Ativando/desativando Botoes
  Button8.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;

  //ativando edits
  Ed_cod.ReadOnly := True;
  Ed_nome.ReadOnly := True;
  Ed_endereco.ReadOnly := True;
  Ed_bairro.ReadOnly := True;
  Ed_cep.ReadOnly := True;
  Ed_cidade.ReadOnly := True;
  Ed_uf.ReadOnly := True;
  Ed_telefone.ReadOnly := True;

end;

procedure TForm5.Button2Click(Sender: TObject);
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
  Ed_cep.ReadOnly := True;
  Ed_cidade.ReadOnly := True;
  Ed_uf.ReadOnly := True;
  Ed_telefone.ReadOnly := True;


   form5.ed_nome.Text := form2.Dbgrid1.Fields[0].value;
   form5.ed_endereco.Text := form2.Dbgrid1.fields[1].Value;
   form5.Ed_bairro.Text := form2.Dbgrid1.Fields[2].Value;
   form5.Ed_cep.text :=  form2.Dbgrid1.Fields[3].Value;
   form5.Ed_cidade.Text := form2.Dbgrid1.Fields[4].Value;
   form5.Ed_uf.Text := form2.Dbgrid1.Fields[5].Value;
   form5.Ed_telefone.Text :=  form2.Dbgrid1.Fields[6].Value;
   form5.Ed_cod.Text := form2.Dbgrid1.Fields[7].Value;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  with DM.FDQuery1 do
  begin
    sql.clear;
    sql.add('delete from cliente where CD_CODIGOCLI = :id;');
    ParamByName('id').AsString := Ed_cod.Text;
    execsql;
  end;


  form5.close;
end;

procedure TForm5.Button8Click(Sender: TObject);
begin
  Button8.Enabled := False;
  Button1.Enabled := True;
  Button2.Enabled := True;

  Ed_cod.ReadOnly := False;
  Ed_nome.ReadOnly := False;
  Ed_endereco.ReadOnly := False;
  Ed_bairro.ReadOnly := False;
  Ed_cep.ReadOnly := False;
  Ed_cidade.ReadOnly := False;
  Ed_uf.ReadOnly := False;
  Ed_telefone.ReadOnly := False;

end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 with DM.FDQuery1 do
 begin
   sql.clear;
   sql.add('Select * from cliente;');
   open;
 end;
 DM.FDTable1.Open();
end;

end.
