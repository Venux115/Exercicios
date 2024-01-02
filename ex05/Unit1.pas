unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,system.RegularExpressions, Vcl.StdCtrls;

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
    function encaixa(a, b:string) : string;

  public
    { Public declarations }
  end;



var
  Form1: TForm1;



implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
num1,num2:string;
begin
num1:= (edit1.text);
num2:= (edit2.text);
showmessage(encaixa(num1,num2));
end;

function TForm1.encaixa(a, b: string): string;
var
tama,tamb,i,j,h:integer;

num,num1:array[1..100] of string;
begin

tama :=length(a);
tamb :=length(b);
j:=1;
h:=1;
for i := tama downto 1 do
  begin
  num[j]:= a[i];
  j:= j + 1;
  end;
for i := tamb downto 1 do
  begin
  num1[h]:= b[i];
  h:= h + 1;
  end;
for i := 1 to tamb do
  begin
  num1[h+1] := num1[h+1] +num1[i];
  num[j+1]:= num[j+1] + num[i];
  end;
if num[j+1] = num1[h+1] then
  encaixa := 'encaixa'
else
  begin
  encaixa:= 'n�o encaixa';
  end;
end;

end.
