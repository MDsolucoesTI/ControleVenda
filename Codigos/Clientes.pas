//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Tabelas, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmCliente = class(TForm)
    gbCodigo: TGroupBox;
    dbedtCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbedtNome: TDBEdit;
    gbEnder: TGroupBox;
    dbedtEndereco: TDBEdit;
    dbnvClientes: TDBNavigator;
    gbNumero: TGroupBox;
    dbedtNumero: TDBEdit;
    gbComple: TGroupBox;
    dbedtComplemento: TDBEdit;
    gbBairro: TGroupBox;
    dbedtBairro: TDBEdit;
    gbCep: TGroupBox;
    dbedtCep: TDBEdit;
    gbCidade: TGroupBox;
    dbedtCidade: TDBEdit;
    gbEstado: TGroupBox;
    dbedtEstado: TDBEdit;
    gbTelefone: TGroupBox;
    dbedtTelefone: TDBEdit;
    gbCelular: TGroupBox;
    dbedtCelular: TDBEdit;
    gbEMail: TGroupBox;
    dbedtEMail: TDBEdit;
    gbCodVendedor: TGroupBox;
    gbNmVendedor: TGroupBox;
    dbedtNomeVend: TDBEdit;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    btCancCad: TBitBtn;
    btCadastro: TBitBtn;
    dblkcbCdVendedor: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCadastroClick(Sender: TObject);
    procedure btCancCadClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbnvClientesClick(Sender: TObject; Button: TNavigateBtn);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.DFM}

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TfrmCliente.btCadastroClick(Sender: TObject);
begin
   dbnvClientes.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblClientes.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCliente.btCancCadClick(Sender: TObject);
begin
   dbnvClientes.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblClientes.Cancel;
   dtmdlTabelas.tblClientes.First;
end;


procedure TfrmCliente.btOkClick(Sender: TObject);
begin
   dtmdlTabelas.tblClientes.Post;
   dtmdlTabelas.tblClientes.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCliente.btCancelClick(Sender: TObject);
begin
   dtmdlTabelas.tblClientes.Cancel;
   dtmdlTabelas.tblClientes.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCliente.dbnvClientesClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   If Button in [nbInsert] then
      dbedtNome.SetFocus;
end;

end.
