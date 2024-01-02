unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Button5: TButton;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Button6: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    Button7: TButton;
    Label8: TLabel;
    Edit8: TEdit;
    Button8: TButton;
    Button9: TButton;
    Edit9: TEdit;
    Label9: TLabel;
    Button10: TButton;
    Edit10: TEdit;
    Label10: TLabel;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10:integer;
  qt:integer;
  soma:integer;
  media:real;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
n10:=strtoint(edit10.text);

qt:= qt + 1;
end;

procedure TForm1.Button11Click(Sender: TObject);

begin
  //somagem das notas
  soma:= n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9 + n10;

  //verificao de entradas de numeros
  if qt < 2 then
  showmessage('Numeros insuficientes')
  else
  begin
    //media
    media:= soma / qt;
    showmessage(floattostr(media));
  end;

  //Limpar variaveis
  n1:=0;
  edit1.clear;
  n2:=0;
  edit2.clear;
  n3:=0;
  edit3.clear;
  n4:=0;
  edit4.clear;
  n5:=0;
  edit5.clear;
  n6:=0;
  edit6.clear;
  n7:=0;
  edit7.clear;
  n8:=0;
  edit8.clear;
  n9:=0;
  edit9.clear;
  n10:=0;
  edit10.clear;;
  qt:=0;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
n1:=strtoint(edit1.text);

qt:= qt + 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
n2:=strtoint(edit2.text);

qt:= qt + 1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
n3:=strtoint(edit3.text);

qt:= qt + 1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
n4:=strtoint(edit4.text);

qt:= qt + 1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
n5:=strtoint(edit5.text);

qt:= qt + 1;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
n6:=strtoint(edit6.text);

qt:= qt + 1;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
n7:=strtoint(edit7.text);

qt:= qt + 1;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
n8:=strtoint(edit8.text);

qt:= qt + 1;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
n9:=strtoint(edit9.text);

qt:= qt + 1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  qt:=0;
end;

end.
