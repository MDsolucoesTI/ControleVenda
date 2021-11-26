//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Tabelas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList;

type
  TdtmdlTabelas = class(TDataModule)
    tblClientes: TTable;
    tblProduto: TTable;
    Funcoes: TActionList;
    tblFornecedor: TTable;
    dtsClientes: TDataSource;
    dtsProduto: TDataSource;
    dtsFornecedor: TDataSource;
    tblDetaProd: TTable;
    dtsDetaProd: TDataSource;
    tblVendedor: TTable;
    dtsVendedor: TDataSource;
    tblVenda: TTable;
    dtsVenda: TDataSource;
    tblParcelas: TTable;
    dtsParcelas: TDataSource;
    tblDetaProd_Vendedor: TTable;
    dtsDetaProd_Vendedor: TDataSource;
    tblDetaProd_Venda: TTable;
    dtsDetaProd_Venda: TDataSource;
    tblProdutoReferencia: TStringField;
    tblProdutoDescricao: TStringField;
    tblProdutoPreco_Venda: TCurrencyField;
    tblProdutoCdFornec: TSmallintField;
    tblDetaProdReferencia: TStringField;
    tblDetaProdCor: TSmallintField;
    tblDetaProdData_Compra: TDateField;
    tblDetaProdPreco_Custo: TCurrencyField;
    tblDetaProdEstoque: TSmallintField;
    tblDetaProd_VendaCdVenda: TIntegerField;
    tblDetaProd_VendaReferencia: TStringField;
    tblDetaProd_VendaCor: TSmallintField;
    tblDetaProd_VendaPreco: TCurrencyField;
    tblDetaProd_VendaQuantidade: TSmallintField;
    tblVendaCdVenda: TAutoIncField;
    tblVendaCdCliente: TSmallintField;
    tblVendaValorVenda: TCurrencyField;
    tblVendaDataVenda: TDateField;
    tblVendaParcelas: TSmallintField;
    tblClientescdCliente: TAutoIncField;
    tblClientesNmCliente: TStringField;
    tblClientesEndereco: TStringField;
    tblClientesNumero: TSmallintField;
    tblClientesComplemento: TStringField;
    tblClientesCEP: TStringField;
    tblClientesBairro: TStringField;
    tblClientesCidade: TStringField;
    tblClientesEstado: TStringField;
    tblClientesTelefone: TStringField;
    tblClientesCelular: TStringField;
    tblClienteseMail: TStringField;
    tblClientescdVendedor: TSmallintField;
    tblFornecedorCdFornec: TAutoIncField;
    tblFornecedorNmFornec: TStringField;
    tblFornecedorEndereco: TStringField;
    tblFornecedorNumero: TSmallintField;
    tblFornecedorComplemento: TStringField;
    tblFornecedorCEP: TStringField;
    tblFornecedorBairro: TStringField;
    tblFornecedorCidade: TStringField;
    tblFornecedorEstado: TStringField;
    tblFornecedorTelefone: TStringField;
    tblFornecedorCelular: TStringField;
    tblFornecedoreMail: TStringField;
    tblVendedorcdVendedor: TAutoIncField;
    tblVendedorNmVendedor: TStringField;
    tblVendedorEndereco: TStringField;
    tblVendedorNumero: TSmallintField;
    tblVendedorComplemento: TStringField;
    tblVendedorCEP: TStringField;
    tblVendedorBairro: TStringField;
    tblVendedorCidade: TStringField;
    tblVendedorEstado: TStringField;
    tblVendedorTelefone: TStringField;
    tblVendedorCelular: TStringField;
    tblVendedoreMail: TStringField;
    tblDetaProd_VendedorReferencia: TStringField;
    tblDetaProd_VendedorCor: TSmallintField;
    tblDetaProd_VendedorcdVendedor: TSmallintField;
    tblDetaProd_VendedorQuantidade: TSmallintField;
    tblParcelasCdVenda: TIntegerField;
    tblParcelasNumPar: TSmallintField;
    tblParcelasCdVendedor: TSmallintField;
    tblParcelasValor: TCurrencyField;
    tblParcelasDataVenc: TDateField;
    tblParcelasDataPag: TDateField;
    tblParcelasValorPago: TCurrencyField;
    tblClientesNomeVendedor: TStringField;
    tblCor: TTable;
    dtsCor: TDataSource;
    tblCorCod_Cor: TAutoIncField;
    tblCorNome_Cor: TStringField;
    tblDetaProd_VendaNomeCor: TStringField;
    tblProdutoNomeFornecedor: TStringField;
    tblDetaProdTamanho: TStringField;
    tblDetaProd_VendaTamanho: TStringField;
    tblDetaProd_VendedorTamanho: TStringField;
    tblDetaProdDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
end;

var
  dtmdlTabelas: TdtmdlTabelas;

implementation

uses Produto;

{$R *.DFM}


end.
