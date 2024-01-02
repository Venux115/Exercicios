program Project1;

uses
  Vcl.Forms,
  U_principal in 'U_principal.pas' {Form1},
  U_tabela in 'U_tabela.pas' {Form2},
  U_dm in 'U_dm.pas' {DM: TDataModule},
  U_alterar in 'U_alterar.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
