unit Unit2;

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
    Button3: TButton;
    Button4: TButton;
    crdPesquisa: TCard;
    PnlBotoes2: TPanel;
    Button5: TButton;
    Button6: TButton;
    PnlPesquisa: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button8: TButton;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  nome,endereco,cidade,cep,uf,fone,bairro:string;


implementation

uses
  Unit1,Unit3;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  form2.Close;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
    CardPanel1.ActiveCard := crdPesquisa;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := CrdCadastro;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  form2.close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.close;
end;

end.
