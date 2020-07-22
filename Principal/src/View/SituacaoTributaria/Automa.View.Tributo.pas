unit Automa.View.Tributo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseCRUD, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.Rtti,
  Vitrine.Controller.Tributo,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Entidade.Tributo, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,
  math, Automa.View.TransparentDialog;

type
  TfrmTributo = class(TfrmBaseCRUD)
    Label3: TLabel;
    Label5: TLabel;
    fieldNRO_CST: TEdit;
    fieldICMS: TEdit;
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
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations}
    FTributo : iControllerDAOGeneric<TTRIBUTO>;
    Crud : TTRIBUTO;
    procedure preencherEntidade;
    procedure updateNumberPage;
    procedure updatePanelPage;
  public
    { Public declarations }

  end;

var
  frmTributo: TfrmTributo;

implementation

{$R *.dfm}

procedure TfrmTributo.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TFloatField(DBGrid.Fields[3]).DisplayFormat:= '#,###,##0.00';
end;

procedure TfrmTributo.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;

  end
  else
  begin

    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmTributo.FormCreate(Sender: TObject);
begin
  inherited;
  FTributo := TControllerTributo<TTRIBUTO>.New;
  FTributo.DataSource(DSFind);

  Crud := TTRIBUTO.Create;

  filtro := 'NOME';
  tableName := 'TRIBUTO.';

  filtro := tableName+filtro;

  aFirst := 100;
  aSkip  := 0;

  FTributo
    .Limit(aFirst,aSkip)
    .OrderBy('CODIGO')
  .Find;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmTributo.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Crud);

end;

procedure TfrmTributo.FormShow(Sender: TObject);
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
          'Cadastro Rápido de Tributo';
        Height := 290;
        Width  := 900;

        region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
        setwindowrgn(handle, region, true);

        pnlAgrupaSaveCancelar.Margins.Left := 0;
      end;
  end;
end;

procedure TfrmTributo.pnlDeleteClick(Sender: TObject);
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
      FTributo.Delete(Crud);
      FTributo.Find;
    end;


  finally
    FreeAndNil(ViewTransparentDialog);
  end;

  inherited;

end;

procedure TfrmTributo.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmTributo.pnlInserirClick(Sender: TObject);
begin
  inherited;
  fieldCodigo.Text := '000000';
  fieldNome.SetFocus;
  fieldNRO_CST.Text := '';
  fieldICMS.Text := '';

end;

procedure TfrmTributo.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmTributo.pnlNextClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmTributo.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmTributo.pnlPriorClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmTributo.pnlSaveClick(Sender: TObject);
begin
  preencherEntidade;

  case FEstado of
    crudInsert:
    begin
      FTributo.Insert(Crud);

      if FTipoCadastro = mrCadastroRapido then
        close;

    end;

    crudUpdate:
    begin
      FTributo.Update(Crud);
    end;

    crudDelete:
    begin

    end;

  end;

  FTributo.OrderBy('CODIGO').Find;

  inherited;

end;

procedure TfrmTributo.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FTributo
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmTributo.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  fieldNome.SetFocus;
end;

procedure TfrmTributo.preencherEntidade;
begin
  Crud.CODIGO := StrToInt(fieldCodigo.Text);
  Crud.NOME   := fieldNome.Text;
  crud.NRO_CST := fieldNRO_CST.Text;
  crud.ICMS := StrToCurrDef(fieldICMS.Text,0);

end;

procedure TfrmTributo.updatePanelPage;
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

procedure TfrmTributo.updateNumberPage;
var
  FTributoCount : iControllerDAOGeneric<TTRIBUTO>;
begin
  FTributoCount := TControllerTributo<TTRIBUTO>.New;

  numberRecords := FTributoCount
                    .Where(aSQL, aFiltro)
                    .NumberRecords;

  pages := numberRecords / aFirst;

  pagesTotal := Ceil(pages);

  aPenultimatePage := pagesTotal - 2;
  aLastPage := pagesTotal - 1;

end;

end.

