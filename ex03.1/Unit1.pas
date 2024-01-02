unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.RegularExpressions;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
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
var
wrd,frs:string;
nwrd:Tarray<string>;
tam,i,qt:integer;
begin
frs:= uppercase(edit1.text);
wrd:= uppercase(edit2.text);
qt:=0;

nwrd := TRegEx.Split(frs,' ');
tam:= length(nwrd);
for i := 0 to tam do
if POS(wrd,nwrd[i]) > 1 then
begin
  qt:= qt +1;
end;
showmessage('Quantidade de vezes em que a palavra apareceu na frase ' + inttostr(qt));
end;

end.
