unit Automa.View.Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseCRUD, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.Rtti,
  Vitrine.Controller.Unidade,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Entidade.Unidade, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,
  math, Automa.View.TransparentDialog;

type
  TfrmUnidade = class(TfrmBaseCRUD)
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
    FUnidade : iControllerDAOGeneric<TUNIDADE>;
    Crud : TUNIDADE;
    procedure preencherEntidade;
    procedure updateNumberPage;
    procedure updatePanelPage;
  public
    { Public declarations }

  end;

var
  frmUnidade: TfrmUnidade;

implementation

{$R *.dfm}

procedure TfrmUnidade.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;

  end
  else
  begin

    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  FUnidade := TControllerUnidade<TUNIDADE>.New;
  FUnidade.DataSource(DSFind);

  Crud := TUNIDADE.Create;

  filtro := 'NOME';
  tableName := 'UNIDADE.';

  filtro := tableName+filtro;

  aFirst := 100;
  aSkip  := 0;

  FUnidade
    .Limit(aFirst,aSkip)
    .OrderBy('CODIGO')
  .Find;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmUnidade.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Crud);

end;

procedure TfrmUnidade.FormShow(Sender: TObject);
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
          'Cadastro Rápido de Unidade';
        Height := 290;
        Width  := 800;

        region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
        setwindowrgn(handle, region, true);

        pnlAgrupaSaveCancelar.Margins.Left := 0;
      end;
  end;
end;

procedure TfrmUnidade.pnlDeleteClick(Sender: TObject);
var
  ViewTransparetDialog : TfrmTransparentDialog;
begin
  try
    ViewTransparetDialog := TfrmTransparentDialog.Create(Self);

    ViewTransparetDialog.TypeDialog := mrDanger;
    ViewTransparetDialog.aTitle := 'Confirmação de Exclusão';
    ViewTransparetDialog.aMsg := 'Confirma a Exclusão do Registro?';
    ViewTransparetDialog.aTitleLabelConfirmation := 'Desejo Excluir';

    ViewTransparetDialog.ShowModal;

    if ViewTransparetDialog.Confirmation = mrYes then
    begin
      Crud.CODIGO := DSFind.DataSet.FieldByName('CODIGO').AsInteger;
      FUnidade.Delete(Crud);
      FUnidade.Find;
    end;


  finally
    FreeAndNil(ViewTransparetDialog);
  end;

  inherited;

end;

procedure TfrmUnidade.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmUnidade.pnlInserirClick(Sender: TObject);
begin
  inherited;
  fieldCodigo.Text := '000000';
  fieldNome.SetFocus;

end;

procedure TfrmUnidade.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmUnidade.pnlNextClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmUnidade.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmUnidade.pnlPriorClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmUnidade.pnlSaveClick(Sender: TObject);
begin
  preencherEntidade;

  case FEstado of
    crudInsert:
    begin
      FUnidade.Insert(Crud);

      if FTipoCadastro = mrCadastroRapido then
        close;

    end;

    crudUpdate:
    begin
      FUnidade.Update(Crud);
    end;

    crudDelete:
    begin

    end;

  end;

  FUnidade.OrderBy('CODIGO').Find;

  inherited;

end;

procedure TfrmUnidade.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FUnidade
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmUnidade.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  fieldNome.SetFocus;
end;

procedure TfrmUnidade.preencherEntidade;
begin
  Crud.CODIGO := StrToInt(fieldCodigo.Text);
  Crud.NOME   := fieldNome.Text;

end;

procedure TfrmUnidade.updatePanelPage;
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

procedure TfrmUnidade.updateNumberPage;
var
  FGrupoCount : iControllerDAOGeneric<TUNIDADE>;
begin
  FGrupoCount := TControllerUnidade<TUNIDADE>.New;

  numberRecords := FGrupoCount
                    .Where(aSQL, aFiltro)
                    .NumberRecords;

  pages := numberRecords / aFirst;

  pagesTotal := Ceil(pages);

  aPenultimatePage := pagesTotal - 2;
  aLastPage := pagesTotal - 1;

end;

end.

