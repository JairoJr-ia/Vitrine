unit Automa.View.Pesquisa.Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BasePESQUISA, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TfrmPesquisaUnidade = class(TfrmBasePesquisa)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaUnidade: TfrmPesquisaUnidade;

implementation

{$R *.dfm}

procedure TfrmPesquisaUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  tableName := 'UNIDADE';
  filtro := tableName + '.' + 'NOME';
  aField := 'NOME';
  filtrarRegistros('');
end;

end.
