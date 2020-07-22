unit Automa.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls,FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Automa.View.Marca,
  Automa.View.Unidade, Automa.View.Tributo;

type
  TfrmPrincipal = class(TForm)
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Automa.View.Grupo, Automa.View.Produto;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  ViewProduto : TfrmProdutos;
begin
  try
    if  ViewProduto <> nil then
      ViewProduto := TfrmProdutos.Create(Self);

    ViewProduto.ShowModal;

  finally
    FreeAndNil(ViewProduto);

  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  ViewGrupo : TfrmGrupo;
begin
  try
    if  ViewGrupo <> nil then
      ViewGrupo := TfrmGrupo.Create(Self);

    ViewGrupo.ShowModal;

  finally
    FreeAndNil(ViewGrupo);

  end;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
var
  ViewMarca : TfrmMarca;
begin
  try
    if  ViewMarca <> nil then
      ViewMarca := TfrmMarca.Create(Self);

    ViewMarca.ShowModal;

  finally
    FreeAndNil(ViewMarca);

  end;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
var
  ViewUnidade : TfrmUnidade;
begin
  try
    if  ViewUnidade <> nil then
      ViewUnidade := TfrmUnidade.Create(Self);

    ViewUnidade.ShowModal;

  finally
    FreeAndNil(ViewUnidade);

  end;

end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
var
  ViewTributo : TfrmTributo;
begin
  try
    if  ViewTributo <> nil then
      ViewTributo := TfrmTributo.Create(Self);

    ViewTributo.ShowModal;

  finally
    FreeAndNil(ViewTributo);

  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
//  ReportMemoryLeaksOnShutdown := True;
end;

end.
