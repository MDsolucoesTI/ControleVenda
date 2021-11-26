//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Cores;

interface

uses
  Tabelas,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmCores = class(TForm)
    gbCodigo: TGroupBox;
    dbedtCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbedtNome: TDBEdit;
    dbnvCor: TDBNavigator;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    btCancCad: TBitBtn;
    btCadastro: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCadastroClick(Sender: TObject);
    procedure btCancCadClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbnvCorClick(Sender: TObject; Button: TNavigateBtn);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCores: TfrmCores;

implementation

{$R *.DFM}

procedure TfrmCores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TfrmCores.btCadastroClick(Sender: TObject);
begin
   dbnvCor.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblCor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCores.btCancCadClick(Sender: TObject);
begin
   dbnvCor.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblCor.Cancel;
   dtmdlTabelas.tblCor.First;
end;


procedure TfrmCores.btOkClick(Sender: TObject);
begin
   dtmdlTabelas.tblCor.Post;
   dtmdlTabelas.tblCor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCores.btCancelClick(Sender: TObject);
begin
   dtmdlTabelas.tblCor.Cancel;
   dtmdlTabelas.tblCor.Append;
   dbedtNome.SetFocus;
end;

procedure TfrmCores.dbnvCorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
   If Button in [nbInsert] then
      dbedtNome.SetFocus;
end;

end.
