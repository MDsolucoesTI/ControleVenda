//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Produto;

interface

uses
  Tabelas,Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls,DB;

type
  TfrmProdutos = class(TForm)
    pgctrProdutos: TPageControl;
    tbshtProduto: TTabSheet;
    tbshtPecas: TTabSheet;
    gbReferencia: TGroupBox;
    dbedtReferencia: TDBEdit;
    gbDescricao: TGroupBox;
    dbedtDescricao: TDBEdit;
    gbPreco: TGroupBox;
    dbedtEndereco: TDBEdit;
    gbCodFornec: TGroupBox;
    dblkcbCdFornec: TDBLookupComboBox;
    gbNmFornec: TGroupBox;
    dbedtNmFornec: TDBEdit;
    dbnvProduto: TDBNavigator;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    btCancCad: TBitBtn;
    btCadastro: TBitBtn;
    gpRefe: TGroupBox;
    dbedtRefe: TDBEdit;
    gpDesc: TGroupBox;
    dbedtDescr: TDBEdit;
    gpEstoque: TGroupBox;
    dbedtEstoque: TDBEdit;
    gpCodCor: TGroupBox;
    dbllkcmbCodCor: TDBLookupComboBox;
    gpData: TGroupBox;
    dbedtData: TDBEdit;
    gpCusto: TGroupBox;
    dbedtCusto: TDBEdit;
    dbnvDetaProd: TDBNavigator;
    btOkPeca: TBitBtn;
    btCancelPeca: TBitBtn;
    btCanCadPeca: TBitBtn;
    btCadPeca: TBitBtn;
    gpNum: TGroupBox;
    dbedtNum: TDBEdit;
    rdgpTamanho: TRadioGroup;
    procedure btCadastroClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btCancCadClick(Sender: TObject);
    procedure btCadPecaClick(Sender: TObject);
    procedure btOkPecaClick(Sender: TObject);
    procedure btCancelPecaClick(Sender: TObject);
    procedure btCanCadPecaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdgpTamanhoClick(Sender: TObject);
    procedure tbshtPecasEnter(Sender: TObject);
    procedure dbedtNumChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.DFM}

procedure TfrmProdutos.btCadastroClick(Sender: TObject);
begin
   dbnvProduto.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblProduto.Append;
   dbedtReferencia.SetFocus;
end;

procedure TfrmProdutos.btOkClick(Sender: TObject);
begin
   dtmdlTabelas.tblProduto.Post;
   dtmdlTabelas.tblProduto.Append;
   dbedtReferencia.SetFocus;
end;

procedure TfrmProdutos.btCancelClick(Sender: TObject);
begin
   dtmdlTabelas.tblProduto.Cancel;
   dtmdlTabelas.tblProduto.Append;
   dbedtReferencia.SetFocus;
end;

procedure TfrmProdutos.btCancCadClick(Sender: TObject);
begin
   dbnvDetaProd.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblDetaProd.Cancel;
   dtmdlTabelas.tblDetaProd.First;
end;

procedure TfrmProdutos.btCadPecaClick(Sender: TObject);
begin
   dbnvDetaProd.Enabled:=False;
   btCadastro.Enabled:=False;
   btOk.Enabled:=True;
   btCancel.Enabled:=True;
   btCancCad.Enabled:=True;
   dtmdlTabelas.tblDetaProd.Append;
   dbedtRefe.SetFocus;
end;

procedure TfrmProdutos.btOkPecaClick(Sender: TObject);
begin
   dtmdlTabelas.tblDetaProd.Post;
   dtmdlTabelas.tblDetaProd.Append;
   dbedtRefe.SetFocus;
end;

procedure TfrmProdutos.btCancelPecaClick(Sender: TObject);
begin
   dtmdlTabelas.tblDetaProd.Cancel;
   dtmdlTabelas.tblDetaProd.Append;
   dbedtRefe.SetFocus;
end;

procedure TfrmProdutos.btCanCadPecaClick(Sender: TObject);
begin
   dbnvDetaProd.Enabled:=True;
   btCadastro.Enabled:=True;
   btOk.Enabled:=False;
   btCancel.Enabled:=False;
   btCancCad.Enabled:=False;
   dtmdlTabelas.tblDetaProd.Cancel;
   dtmdlTabelas.tblDetaProd.First;
end;

procedure TfrmProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmProdutos.rdgpTamanhoClick(Sender: TObject);
begin
  If dtmdlTabelas.tblDetaProd.State = dsInsert Then
    If rdgpTamanho.ItemIndex = 5 Then
      Begin
        gpNum.Visible:=True;
        dbedtNum.SetFocus;
      End
    Else
      Begin
        gpNum.Visible:=False;
        Case rdgpTamanho.ItemIndex of
          0 : dbedtNum.Text:='PP';
          1 : dbedtNum.Text:='P';
          2 : dbedtNum.Text:='M';
          3 : dbedtNum.Text:='G';
          4 : dbedtNum.Text:='GG';
        End;
      End;
end;

procedure TfrmProdutos.tbshtPecasEnter(Sender: TObject);
begin
  If dbedtNum.Text='PP' Then
    rdgpTamanho.ItemIndex:=0
  Else If dbedtNum.Text='P' Then
    rdgpTamanho.ItemIndex:=1
  Else If dbedtNum.Text='M' Then
    rdgpTamanho.ItemIndex:=2
  Else If dbedtNum.Text='G' Then
    rdgpTamanho.ItemIndex:=3
  Else If dbedtNum.Text='GG' Then
    rdgpTamanho.ItemIndex:=4
  Else
    Begin
      rdgpTamanho.ItemIndex:=5;
      gpNum.Visible:=True;
    End;
end;

procedure TfrmProdutos.dbedtNumChange(Sender: TObject);
begin
  If dtmdlTabelas.tblDetaProd.State <> dsInsert Then
    Begin
      gpNum.Visible:=False;
      If dbedtNum.Text='PP' Then
        rdgpTamanho.ItemIndex:=0
      Else If dbedtNum.Text='P' Then
        rdgpTamanho.ItemIndex:=1
      Else If dbedtNum.Text='M' Then
        rdgpTamanho.ItemIndex:=2
      Else If dbedtNum.Text='G' Then
        rdgpTamanho.ItemIndex:=3
      Else If dbedtNum.Text='GG' Then
        rdgpTamanho.ItemIndex:=4
      Else
        Begin
          rdgpTamanho.ItemIndex:=5;
          gpNum.Visible:=True;
        End;
    End;

end;

end.
