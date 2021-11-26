//////////////////////////////////////////////////////////////////////////
// Criacao...........: 07/2000
// Sistema...........: Automação de Secretária de Club
// Analistas.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Desenvolvedores...: Marilene Esquiavoni & Denny Paulista Azevedo Filho
// Copyright.........: Marilene Esquiavoni & Denny Paulista Azevedo Filho
//////////////////////////////////////////////////////////////////////////

unit Apres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg;

type
  TfrmApres = class(TForm)
    pnlApres: TPanel;
    imgApresFun: TImage;
    imgApresEsf: TImage;
    lblEsfera: TLabel;
    lblCopy: TLabel;
    lblNome: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApres: TfrmApres;
  OldCursor : TCursor;

implementation

{$R *.DFM}

procedure TfrmApres.FormCreate(Sender: TObject);
begin
   OldCursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
end;

procedure TfrmApres.FormDestroy(Sender: TObject);
begin
   Screen.Cursor := OldCursor;
end;

end.
