unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,Unit2;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.Clientes1Click(Sender: TObject);
begin
application.CreateForm(TForm2,Form2);
form2.Show;

end;

end.
