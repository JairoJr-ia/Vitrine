unit Automa.View.Marca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseCRUD, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.Rtti,
  Vitrine.Controller.MARCA,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Entidade.MARCA, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,
  math, Automa.View.TransparentDialog;

type
  TfrmMarca = class(TfrmBaseCRUD)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlInserirClick(Sender: TObject);
    procedure pnlUpdateClick(Sender: TObject);
    procedure pnlDeleteClick(Sender: TObject);
    procedure pnlSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlNextClick(Sender: TObject);
    procedure pnlPriorClick(Sender: TObject);
    procedure pnlFirstPageClick(Sender: TObject);
    procedure pnlSecondPageClick(Sender: TObject);
    procedure pnlPenutimatePageClick(Sender: TObject);
    procedure pnlLastPageClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations}
    FGrupo : iControllerDAOGeneric<TMARCA>;
    Crud : TMARCA;
    procedure preencherEntidade;
    procedure updateNumberPage;
    procedure updatePanelPage;
  public
    { Public declarations }
  end;

var
  frmMarca: TfrmMarca;

implementation

{$R *.dfm}

procedure TfrmMarca.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;

  end
  else
  begin

    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmMarca.FormCreate(Sender: TObject);
begin
  inherited;

  FGrupo := TControllerMarca<TMARCA>.New;
  FGrupo.DataSource(DSFind);

  Crud := TMARCA.Create;

  filtro := 'NOME';
  tableName := 'MARCA.';

  filtro := tableName+filtro;

  aFirst := 100;
  aSkip  := 0;

  FGrupo
    .Limit(aFirst,aSkip)
    .OrderBy('CODIGO')
  .Find;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmMarca.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Crud);

end;

procedure TfrmMarca.FormShow(Sender: TObject);
var
  region : hrgn;
begin
  inherited;
  lblFiltro.Caption := 'Pesquisar por Nome:';

  case FTipoCadastro of
    mrCadastroRapido:
      begin
        Align    := alNone;
        Position := poScreenCenter;
        pnlInserirClick(Sender);

        pnlBack.Visible   := False;
        pnlCancel.Visible := False;
        Panel25.Visible   := False;
        lblNome.Caption   := 'Software de Gestão Empresarial - Automa - 2.0 | '+
          'Cadastro Rápido de Marca';
        Height := 290;
        Width  := 800;

        region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
        setwindowrgn(handle, region, true);

        pnlAgrupaSaveCancelar.Margins.Left := 0;
      end;
  end;
end;

procedure TfrmMarca.pnlDeleteClick(Sender: TObject);
var
  ViewTransparentDialog : TfrmTransparentDialog;
begin
  try
    ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

    ViewTransparentDialog.TypeDialog := mrDanger;
    ViewTransparentDialog.aTitle := 'Confirmação de Exclusão';
    ViewTransparentDialog.aMsg := 'Confirma a Exclusão do Registro?';
    ViewTransparentDialog.aTitleLabelConfirmation := 'Desejo Excluir';

    ViewTransparentDialog.ShowModal;

    if ViewTransparentDialog.Confirmation = mrYes then
    begin
      Crud.CODIGO := DSFind.DataSet.FieldByName('CODIGO').AsInteger;
      FGrupo.Delete(Crud);
      FGrupo.Find;
    end;


  finally
    FreeAndNil(ViewTransparentDialog);
  end;

  inherited;

end;

procedure TfrmMarca.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmMarca.pnlInserirClick(Sender: TObject);
begin
  inherited;
  fieldCodigo.Text := '000000';
  fieldNome.SetFocus;

end;

procedure TfrmMarca.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmMarca.pnlNextClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmMarca.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmMarca.pnlPriorClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmMarca.pnlSaveClick(Sender: TObject);
begin
  preencherEntidade;

  case FEstado of
    crudInsert:
    begin
      FGrupo.Insert(Crud);

      if FTipoCadastro = mrCadastroRapido then
        close;

    end;

    crudUpdate:
    begin
      FGrupo.Update(Crud);
    end;

    crudDelete:
    begin

    end;

  end;

  FGrupo.OrderBy('CODIGO').Find;

  inherited;

end;

procedure TfrmMarca.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FGrupo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmMarca.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  fieldNome.SetFocus;
end;

procedure TfrmMarca.preencherEntidade;
begin
  Crud.CODIGO := StrToInt(fieldCodigo.Text);
  Crud.NOME   := fieldNome.Text;

end;

procedure TfrmMarca.updatePanelPage;
begin
  if pagesTotal = 0  then
  begin
    pnlFirstPage.Visible      := False;
    pnlSecondPage.Visible     := False;
    pnlPenutimatePage.Visible := False;
    pnlLastPage.Visible       := False;

    pnlPrior.Visible := False;
    pnlNext.Visible  := False;

    pnlCurrentPage.Visible := False;

  end
  else if pagesTotal = 1  then
  begin
    pnlFirstPage.Visible      := False;
    pnlSecondPage.Visible     := False;
    pnlPenutimatePage.Visible := False;
    pnlLastPage.Visible       := False;

    pnlPrior.Visible := False;
    pnlNext.Visible  := False;

    pnlCurrentPage.Visible := True;

  end
  else if pagesTotal = 2  then
  begin
    pnlFirstPage.Visible      := True;
    pnlSecondPage.Visible     := True;

    pnlFirstPage.Caption := '1';
    pnlSecondPage.Caption := '2';

    pnlPenutimatePage.Visible := False;
    pnlLastPage.Visible       := False;

    pnlPrior.Visible := False;
    pnlNext.Visible  := True;
    pnlCurrentPage.Visible := True;
  end
  else if pagesTotal = 3  then
  begin
    pnlFirstPage.Visible      := True;
    pnlSecondPage.Visible     := True;

    pnlFirstPage.Caption := '1';
    pnlSecondPage.Caption := '2';

    pnlPenutimatePage.Visible := False;
    pnlLastPage.Visible       := True;

    pnlLastPage.Caption := IntToStr(pagesTotal);

    pnlPrior.Visible := False;
    pnlNext.Visible  := True;
    pnlCurrentPage.Visible := True;
  end
  else
  begin
    pnlFirstPage.Visible      := True;
    pnlSecondPage.Visible     := True;
    pnlPenutimatePage.Visible := True;
    pnlLastPage.Visible       := True;

    pnlFirstPage.Caption := '1';
    pnlSecondPage.Caption := '2';
    pnlPenutimatePage.Caption := IntToStr(pagesTotal - 1);
    pnlLastPage.Caption := IntToStr(pagesTotal);

    pnlPrior.Visible := False;
    pnlNext.Visible  := True;
    pnlCurrentPage.Visible := True;
  end;

end;

procedure TfrmMarca.updateNumberPage;
var
  FMarcaCount : iControllerDAOGeneric<TMARCA>;
begin
  FMarcaCount := TControllerMarca<TMARCA>.New;

  numberRecords := FMarcaCount
                    .Where(aSQL, aFiltro)
                    .NumberRecords;

  pages := numberRecords / aFirst;

  pagesTotal := Ceil(pages);

  aPenultimatePage := pagesTotal - 2;
  aLastPage := pagesTotal - 1;

end;

end.
