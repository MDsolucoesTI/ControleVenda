//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Vendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Tabelas, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmVendedor = class(TForm)
    gbCodigo: TGroupBox;
    dbedtCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbedtNome: TDBEdit;
    gbEnder: TGroupBox;
    dbedtEndereco: TDBEdit;
    dbnvVendedor: TDBNavigator;
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
    btOk: TBitBtn;
    btCancel: TBitBtn;
    btCancCad: TBitBtn;
    btCadastro: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCadastroClick(Sender: TObject);
    procedure btCancCadClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbnvVendedorClick(Sender: TObject; Button: TNavigateBtn);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

{$R *.DFM}

procedure TfrmVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TfrmVendedor.btCadastroClick(Sender: TObject);
begin
   dbnvVendedor.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblVendedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmVendedor.btCancCadClick(Sender: TObject);
begin
   dbnvVendedor.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblVendedor.Cancel;
   dtmdlTabelas.tblVendedor.First;
end;


procedure TfrmVendedor.btOkClick(Sender: TObject);
begin
   dtmdlTabelas.tblVendedor.Post;
   dtmdlTabelas.tblVendedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmVendedor.btCancelClick(Sender: TObject);
begin
   dtmdlTabelas.tblVendedor.Cancel;
   dtmdlTabelas.tblVendedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmVendedor.dbnvVendedorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   If Button in [nbInsert] then
      dbedtNome.SetFocus;
end;

end.
