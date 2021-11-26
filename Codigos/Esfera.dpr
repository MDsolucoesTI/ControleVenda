//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

program Esfera;

uses
  SysUtils,
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Tabelas in 'Tabelas.pas' {dtmdlTabelas: TDataModule},
  Clientes in 'Clientes.pas' {frmCliente},
  Apres in 'Apres.pas' {frmApres},
  Vendedores in 'Vendedores.pas' {frmVendedor},
  Fornecedores in 'Fornecedores.pas' {frmFornecedor},
  Cores in 'Cores.pas' {frmCores},
  Produto in 'Produto.pas' {frmProdutos};

{$R *.RES}
Var
  NumSec : SmallInt;
  StartTime : TDateTime;
begin
  Application.Initialize;
  StartTime:=Now;
  NumSec:=3;
  frmApres := TfrmApres.Create( Application );
  frmApres.Show;
  Repeat
     Application.ProcessMessages;
  Until Now > StartTime + NumSec * (1/24/60/60);
  Application.Title := 'Esfera - Controle de Vendas';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmdlTabelas, dtmdlTabelas);
  frmApres.Free;
  Application.Run;
end.
