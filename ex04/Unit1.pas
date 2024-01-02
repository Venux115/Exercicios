unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var

  seq1, seq2: array [1 .. 100] of integer;
  tam1, tam2, soma: integer;
  i: integer;

begin

  // pegando tamanho das sequencias
  tam1 := length(Edit1.text);
  tam2 := length(Edit2.text);

  //inicializando a variavel soma
  soma:=0;

  // loop para percorrer toda a sequenci 1
  for i := 1 to tam1 do
  begin

    // dividindo a sequencia em array
    seq1[i] := strtoint(Edit1.text[i]);

    // Condi��o para somar somente os n�mero pares da sequencia 2
    if seq1[i] mod 2 = 0 then
    begin
      soma := soma + seq1[i];
    end;

  end;

  // loop para percorrer toda a sequenci 2
  for i := 1 to tam2 do
  begin

    // dividindo a sequencia em array
    seq2[i] := strtoint(Edit2.text[i]);

    // Condi��o para somar somente os n�mero pares da sequencia 2
    if seq2[i] mod 2 = 0 then
    begin
      soma := soma + seq2[i];
    end;
  end;

  // Mostrar soma dos n�meros pares da sequencia 1 e 2
  showmessage(inttostr(soma));

end;

end.
