unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    num: TEdit;
    Button1: TButton;
    Label2: TLabel;
    inv: TEdit;
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
var
  i,j:integer;
  frase:array[1..10] of string;
  inve:string;
begin
 i := 1;

  while (num.text[i] <> '') do
  begin
    frase[i] := num.text[i];
    i := i + 1;
  end;




  for j := i - 1 downto 1 do
  begin


       inve := inve + (frase[j]);


  end;

  
    if inve = '' then
    inv.text := 'nada'
    else
    inv.text := inve;
end;

end.
