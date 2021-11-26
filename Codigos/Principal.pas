//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ImgList, ToolWin;

type
  TfrmPrincipal = class(TForm)
    stbrPrincipal: TStatusBar;
    mnPrincipal: TMainMenu;
    mntArquivos: TMenuItem;
    tlbrPrincipal: TToolBar;
    imglstPrincipal: TImageList;
    tlbtnCliente: TToolButton;
    mntClientes: TMenuItem;
    tlbtnSeparador1: TToolButton;
    mntVendedor: TMenuItem;
    tlbtnVendedor: TToolButton;
    mntFornecedor: TMenuItem;
    tlbtnFornecedor: TToolButton;
    mntConfigurar: TMenuItem;
    mntCores: TMenuItem;
    ToolButton1: TToolButton;
    tlbtnProduto: TToolButton;
    mntProduto: TMenuItem;
    procedure tlbtnClienteClick(Sender: TObject);
    procedure mntClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mntVendedorClick(Sender: TObject);
    procedure mntFornecedorClick(Sender: TObject);
    procedure tlbtnVendedorClick(Sender: TObject);
    procedure tlbtnFornecedorClick(Sender: TObject);
    procedure mntCoresClick(Sender: TObject);
    procedure mntProdutoClick(Sender: TObject);
    procedure tlbtnProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ShowHints(Sender : TObject);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Clientes, Vendedores, Fornecedores, Cores, Produto;

{$R *.DFM}

Procedure TfrmPrincipal.tlbtnClienteClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmCliente Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmCliente := TfrmCliente.Create( Application );
      frmCliente.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
End;

procedure TfrmPrincipal.mntClientesClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmCliente Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmCliente := TfrmCliente.Create( Application );
      frmCliente.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
End;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
   with Application do
   Begin
      HintPause := 200;
      OnHint := ShowHints;
   End;
end;

Procedure TfrmPrincipal.ShowHints(Sender : TObject);
Begin
   stbrPrincipal.Panels.Items[0].text := Application.Hint;
End;


procedure TfrmPrincipal.mntVendedorClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmVendedor Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmVendedor := TfrmVendedor.Create( Application );
      frmVendedor.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.mntFornecedorClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmFornecedor Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmFornecedor := TfrmFornecedor.Create( Application );
      frmFornecedor.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.tlbtnVendedorClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmVendedor Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmVendedor := TfrmVendedor.Create( Application );
      frmVendedor.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.tlbtnFornecedorClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmFornecedor Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmFornecedor := TfrmFornecedor.Create( Application );
      frmFornecedor.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.mntCoresClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmCores Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmCores := TfrmCores.Create( Application );
      frmCores.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.mntProdutoClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmProdutos Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmProdutos := TfrmProdutos.Create( Application );
      frmProdutos.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;
end;

procedure TfrmPrincipal.tlbtnProdutoClick(Sender: TObject);
Var
   OldCursor : TCursor;
   iCont : Integer;
Begin
   For iCont:=0 To MDIChildCount-1 Do
      If MDIChildren[iCont] Is TfrmProdutos Then
         Begin
            MDIChildren[iCont].WindowState:=wsNormal;
            MDIChildren[iCont].Show;
            Exit;
         End;
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   Try
      frmProdutos := TfrmProdutos.Create( Application );
      frmProdutos.Show;
   Finally
      Screen.Cursor := OldCursor;
   End;

end;

end.
