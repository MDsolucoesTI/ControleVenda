//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Fornecedores;

interface

uses
  Tabelas,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmFornecedor = class(TForm)
    gbCodigo: TGroupBox;
    dbedtCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbedtNome: TDBEdit;
    gbEnder: TGroupBox;
    dbedtEndereco: TDBEdit;
    dbnvFornecedor: TDBNavigator;
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
    procedure dbnvFornecedorClick(Sender: TObject; Button: TNavigateBtn);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.DFM}

procedure TfrmFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TfrmFornecedor.btCadastroClick(Sender: TObject);
begin
   dbnvFornecedor.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblFornecedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmFornecedor.btCancCadClick(Sender: TObject);
begin
   dbnvFornecedor.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblFornecedor.Cancel;
   dtmdlTabelas.tblFornecedor.First;
end;


procedure TfrmFornecedor.btOkClick(Sender: TObject);
begin
   dtmdlTabelas.tblFornecedor.Post;
   dtmdlTabelas.tblFornecedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmFornecedor.btCancelClick(Sender: TObject);
begin
   dtmdlTabelas.tblFornecedor.Cancel;
   dtmdlTabelas.tblFornecedor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmFornecedor.dbnvFornecedorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   If Button in [nbInsert] then
      dbedtNome.SetFocus;
end;

end.
