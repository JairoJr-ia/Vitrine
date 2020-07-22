unit Automa.View.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseCRUD, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.Rtti, Math,
  Vitrine.Controller.Produtos,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Entidade.Produtos, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,
  Automa.View.TransparentDialog, Automa.View.TransparentForm, ResizeKit;

type
  TfrmProdutos = class(TfrmBaseCRUD)
    pnlTopAgrupaPreco: TPanel;
    pnlEspecificacoes: TPanel;
    Shape14: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel14: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    fieldNOME_MARCA: TEdit;
    fieldCOD_UND: TEdit;
    fieldNOME_UNIDADE: TEdit;
    fieldCOD_GRUPO: TEdit;
    fieldNOME_GRUPO: TEdit;
    fieldCOD_TRIBUTO: TEdit;
    fieldNOME_TRIBUTO: TEdit;
    fieldCOD_MARCA: TEdit;
    pnlAgrupaImpostos: TPanel;
    pnlImpostos: TPanel;
    Shape15: TShape;
    Label34: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    fieldNCM: TEdit;
    fieldCEST: TEdit;
    fieldCFOPDENTRO: TEdit;
    fieldCFOPFORA: TEdit;
    fieldCSOSN: TEdit;
    Panel21: TPanel;
    Shape9: TShape;
    Label52: TLabel;
    pnlAggrupaPreco: TPanel;
    pnlPrecoCusto: TPanel;
    shpPrecoCusto: TShape;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    fieldPRECO_TAB: TEdit;
    fieldPRECO_CUSTO: TEdit;
    fieldIPI: TEdit;
    fieldFRETE: TEdit;
    fieldCICMS_FRETE: TEdit;
    fieldSTRIB: TEdit;
    fieldCICMS: TEdit;
    fieldACRESC: TEdit;
    fieldDESCONTO: TEdit;
    fieldCFIXO: TEdit;
    fieldPIS: TEdit;
    fieldCOFINS: TEdit;
    fieldICMS: TEdit;
    fieldCUSTO_FINAL: TEdit;
    Panel17: TPanel;
    Shape4: TShape;
    Label30: TLabel;
    pnlPrecoVenda: TPanel;
    Shape1: TShape;
    Label12: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    fieldPORC_VISTA: TEdit;
    fieldPRECO: TEdit;
    fieldPRECO_PRAZO: TEdit;
    Panel16: TPanel;
    Shape5: TShape;
    Label17: TLabel;
    fieldPORC_PRAZO: TEdit;
    fieldPCOMIS: TEdit;
    fieldDESC_MAX: TEdit;
    pnlEstoque: TPanel;
    Shape6: TShape;
    Label39: TLabel;
    Label33: TLabel;
    Panel19: TPanel;
    Shape7: TShape;
    Label41: TLabel;
    fieldESTOQUE_MAX: TEdit;
    fieldEST_MIN: TEdit;
    pnlOutrosDados: TPanel;
    Shape10: TShape;
    Panel24: TPanel;
    Shape11: TShape;
    Label48: TLabel;
    pnlAgrupaDetalhes: TPanel;
    pnlTipo: TPanel;
    Shape16: TShape;
    Panel30: TPanel;
    Shape17: TShape;
    Label53: TLabel;
    fieldPISO: TRadioGroup;
    fieldFLG_FRACIONA: TRadioGroup;
    fieldBALANCA: TRadioGroup;
    Label46: TLabel;
    fieldPESO: TEdit;
    Label47: TLabel;
    fieldMULTIPLO: TEdit;
    Label49: TLabel;
    fieldMETROS: TEdit;
    TabSheet3: TTabSheet;
    pnlmpostosNFe: TPanel;
    Panel35: TPanel;
    Shape20: TShape;
    Label56: TLabel;
    Panel36: TPanel;
    Shape21: TShape;
    Label60: TLabel;
    fieldPORC_ICMS: TEdit;
    pnlDetalhes: TPanel;
    Shape18: TShape;
    Label54: TLabel;
    Label55: TLabel;
    Panel33: TPanel;
    Shape19: TShape;
    Label57: TLabel;
    fieldGARANTIA: TEdit;
    fieldVALIDADE: TEdit;
    fieldPROMOCAO: TRadioGroup;
    fieldSITUACAO: TRadioGroup;
    fieldOBS: TEdit;
    Label37: TLabel;
    pnlDetails: TPanel;
    Image11: TImage;
    pnlImpostoNFe: TPanel;
    Image12: TImage;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    fieldPORC_BICMS: TEdit;
    fieldSIT_PIS_COFINS: TEdit;
    fieldPIS_SAIDA: TEdit;
    fieldCOFINS_SAIDA: TEdit;
    fieldPORC_IPI: TEdit;
    Label64: TLabel;
    fieldMVA: TEdit;
    Label65: TLabel;
    fieldMVA4: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    fieldMVA12: TEdit;
    fieldBASE_REDUCAO: TEdit;
    pnlOrigemProduto: TPanel;
    Shape22: TShape;
    Panel38: TPanel;
    Shape23: TShape;
    Label79: TLabel;
    fieldCST_ORIG: TRadioGroup;
    pnlAgrupaLocalizacao: TPanel;
    pnlLocalizacao: TPanel;
    Shape12: TShape;
    Label44: TLabel;
    Label45: TLabel;
    Label50: TLabel;
    Panel27: TPanel;
    Shape13: TShape;
    Label51: TLabel;
    fieldGONDOLA: TEdit;
    fieldCOLUNA: TEdit;
    fieldLADO: TRadioGroup;
    fieldPRATELEIRA: TEdit;
    pnlClasseProduto: TPanel;
    Shape24: TShape;
    Panel40: TPanel;
    Shape25: TShape;
    Label68: TLabel;
    fieldCLAS_ABC: TRadioGroup;
    pnlFindMarca: TPanel;
    Image14: TImage;
    Panel13: TPanel;
    Image15: TImage;
    Panel15: TPanel;
    Image16: TImage;
    Panel18: TPanel;
    Image17: TImage;
    pnlAddMarca: TPanel;
    imgAddMarca: TImage;
    pnlAddUnidade: TPanel;
    imgAddUnidade: TImage;
    pnlAddGrupo: TPanel;
    imgAddGrupo: TImage;
    pnlAddTributo: TPanel;
    imgAddTributo: TImage;
    Label3: TLabel;
    fieldCODIGO_BARRAS: TEdit;
    fieldCOD_FABR: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    fieldCOD_FOR: TEdit;
    fieldREFERENCIA: TEdit;
    Label7: TLabel;
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
    procedure pnlDetailsClick(Sender: TObject);
    procedure pnlImpostoNFeClick(Sender: TObject);
    procedure fieldCOD_MARCAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fieldCOD_UNDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fieldCOD_GRUPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fieldCOD_TRIBUTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image16Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure fieldPRECO_CUSTOExit(Sender: TObject);
    procedure fieldPRECO_TABExit(Sender: TObject);
    procedure fieldPRECOExit(Sender: TObject);
    procedure imgAddMarcaClick(Sender: TObject);
    procedure imgAddUnidadeClick(Sender: TObject);
    procedure imgAddGrupoClick(Sender: TObject);
    procedure imgAddTributoClick(Sender: TObject);
  private
    { Private declarations}
    FProduto : iControllerDAOGeneric<TPRODUTOS>;
    Crud : TPRODUTOS;
    procedure preencherEntidade;
    procedure updateNumberPage;
    procedure updatePanelPage;
    procedure limparEdit;
    function validarDados : Boolean;
    procedure calcularCustoFinal;
    procedure calcularPorcentagemVenda;
    procedure showPesqMarca;
    procedure showPesqunidade;
    procedure showPesqGrupo;
    procedure showPesqTributo;

  protected
      procedure alterarCorPanelSelecionado(Sender : TObject); override;

  public
    { Public declarations }

  end;

var
  frmGrupo: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.alterarCorPanelSelecionado(Sender: TObject);
var
  panelSelecionado : TPanel;
begin
  inherited;
  panelSelecionado := TPanel(Sender as TPanel);

  if panelSelecionado.Name = 'pnlDadosPrincipal' then
  begin
    panelSelecionado.Color := $009F4800;
    pnlDetails.Color       := $00007DFB;
    pnlImpostoNFe.Color    := $00007DFB;
  end
  else if panelSelecionado.Name = 'pnlDetails' then
  begin
    panelSelecionado.Color  := $009F4800;
    pnlDadosPrincipal.Color := $00007DFB;
    pnlImpostoNFe.Color     := $00007DFB;
  end
  else if panelSelecionado.Name = 'pnlImpostoNFe' then
  begin
    panelSelecionado.Color  := $009F4800;
    pnlDadosPrincipal.Color := $00007DFB;
    pnlDetails.Color        := $00007DFB;
  end;


end;

procedure TfrmProdutos.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TFloatField(DBGrid.Fields[2]).DisplayFormat:= '#,###,##0.00';

end;

procedure TfrmProdutos.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;

  end
  else
  begin

    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmProdutos.fieldCOD_GRUPOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if fieldCOD_GRUPO.Text <> '' then
    begin

      fieldNOME_GRUPO.Text := pesquisarRegistro('GRUPO', 'NOME', 'CODIGO',fieldCOD_GRUPO.Text);
      fieldCOD_GRUPO.Text  := FormatFloat('000000', StrToFloat(fieldCOD_GRUPO.Text));

      if fieldNOME_GRUPO.Text = '' then
      begin
        showPesqGrupo;
      end;

    end
    else
    begin
      showPesqGrupo;
    end;

    if fieldCOD_GRUPO.Text <> '' then
    begin
      fieldCOD_TRIBUTO.SetFocus;

    end
    else
      fieldCOD_GRUPO.SetFocus;
  end;
end;

procedure TfrmProdutos.fieldCOD_MARCAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if fieldCOD_MARCA.Text <> '' then
    begin

      fieldNOME_MARCA.Text := pesquisarRegistro('MARCA', 'NOME', 'CODIGO',fieldCOD_MARCA.Text);
      fieldCOD_MARCA.Text  := FormatFloat('000000', StrToFloat(fieldCOD_MARCA.Text));

      if fieldNOME_MARCA.Text = '' then
      begin
        showPesqMarca;
      end;

    end
    else
    begin
      showPesqMarca;
    end;

    if fieldCOD_MARCA.Text <> '' then
    begin
      fieldCOD_UND.SetFocus;

    end
    else
      fieldCOD_MARCA.SetFocus;

  end;

end;

procedure TfrmProdutos.fieldCOD_TRIBUTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if fieldCOD_TRIBUTO.Text <> '' then
    begin

      fieldNOME_TRIBUTO.Text := pesquisarRegistro('TRIBUTO', 'NOME', 'CODIGO',fieldCOD_TRIBUTO.Text);
      fieldCOD_TRIBUTO.Text  := FormatFloat('000000', StrToFloat(fieldCOD_TRIBUTO.Text));

      if fieldNOME_TRIBUTO.Text = '' then
      begin
        showPesqTributo;
      end;

    end
    else
    begin
      showPesqTributo;
    end;

    if fieldCOD_TRIBUTO.Text <> '' then
    begin
      fieldPRECO_TAB.SetFocus;

    end
    else
      fieldCOD_TRIBUTO.SetFocus;


  end;

end;

procedure TfrmProdutos.calcularPorcentagemVenda;
var
  precoVista, precoPrazo, custoFinal : Real;
begin

  precoVista := StrToCurrDef(fieldPRECO.Text, 0);
  precoPrazo := StrToCurrDef(fieldPRECO_PRAZO.Text, 0);
  custoFinal := StrToCurrDef(fieldCUSTO_FINAL.Text, 0);
  
  fieldPORC_VISTA.Text := FormatFloat('#,###,##0.00', ((precoVista - custoFinal) / 
                                                                    custoFinal) * 100);
                                                                    
  fieldPORC_PRAZO.Text := FormatFloat('#,###,##0.00', ((precoPrazo - custoFinal) / 
                                                                    custoFinal) * 100 );  
  

//  if (Dm.tp_ent <> 'U') then // Se entrada Makdown
//  begin
//    if dm.por_senun = 'S' then
//    begin
//      custoFinal := Dm.IBDS_Produtos.fieldbyname('CUSTO_FINAL').AsFloat;
//      precoVista := Dm.IBDS_Produtos.fieldbyname('PRECO').AsFloat;
//
//      precoPrazo := Dm.IBDS_Produtos.fieldbyname('PRECO').AsFloat + (Dm.IBDS_Produtos.fieldbyname('PRECO').AsFloat * 0.112) ;
//
//      Dm.IBDS_Produtos.fieldbyname('PRECO_PRAZO').AsFloat := precoPrazo;
//
//    end
//    else
//    begin
//      custoFinal := Dm.IBDS_Produtos.fieldbyname('CUSTO_FINAL').AsFloat;
//      precoVista := Dm.IBDS_Produtos.fieldbyname('PRECO').AsFloat;
//      precoPrazo := Dm.IBDS_Produtos.fieldbyname('PRECO_PRAZO').AsFloat;
//
//    end;
//
//    if custoFinal > 0 then
//    begin
//
//      porcentagem := ((precoVista - custoFinal) / custoFinal) * 100;
//      Dm.IBDS_Produtos.fieldbyname('PORC_VISTA').AsFloat := porcentagem;
//      porcentagem := ((precoPrazo - custoFinal) / custoFinal) * 100;
//      Dm.IBDS_Produtos.fieldbyname('PORC_PRAZO').AsFloat := porcentagem;
//
//    end
//    else
//    begin
//      Dm.IBDS_Produtos.fieldbyname('PORC_VISTA').AsFloat := 0;
//      Dm.IBDS_Produtos.fieldbyname('PORC_PRAZO').AsFloat := 0;
//
//    end;
//
//  end;
  
end;

procedure TfrmProdutos.fieldCOD_UNDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if fieldCOD_UND.Text <> '' then
    begin

      fieldNOME_UNIDADE.Text := pesquisarRegistro('UNIDADE', 'NOME', 'CODIGO',fieldCOD_UND.Text);
      fieldCOD_UND.Text  := FormatFloat('000000', StrToFloat(fieldCOD_UND.Text));

      if fieldNOME_UNIDADE.Text = '' then
      begin
        showPesqUnidade;
      end;

    end
    else
    begin
      showPesqUnidade;
    end;

    if fieldCOD_UND.Text <> '' then
    begin
      fieldCOD_GRUPO.SetFocus;

    end
    else
      fieldCOD_UND.SetFocus;
  end;

end;

procedure TfrmProdutos.fieldPRECOExit(Sender: TObject);
begin
  inherited;
  (Sender as TEdit).Text :=  FormatFloat('#,###,##0.00', StrToFloatDef((Sender as TEdit).Text,0));

  calcularPorcentagemVenda;
end;

procedure TfrmProdutos.fieldPRECO_CUSTOExit(Sender: TObject);
begin
  inherited;
  (Sender as TEdit).Text :=  FormatFloat('#,###,##0.00', StrToFloatDef((Sender as TEdit).Text,0));
  calcularCustoFinal;
end;

procedure TfrmProdutos.fieldPRECO_TABExit(Sender: TObject);
begin
  inherited;
  (Sender as TEdit).Text := FormatFloat('#,###,##0.00', StrToFloatDef((Sender as TEdit).Text,0));

end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
var
  i, arredondarPage : Integer;
begin
  inherited;

  FProduto := TControllerPRODUTOS<TPRODUTOS>.New;
  FProduto.DataSource(DSFind);

  Crud := TPRODUTOS.Create;

  filtro := 'NOME';
  tableName := 'PRODUTOS.';

  filtro := tableName+filtro;

  aFirst := 100;
  aSkip  := 0;

  FProduto
    .Limit(aFirst,aSkip)
    .OrderBy('CODIGO')
  .Find;

  updateNumberPage;
  updatePanelPage;

  MakeRounded(pnlDadosPrincipal,10,10);
  MakeRounded(pnlImpostoNFe,10,10);
  MakeRounded(pnlDetails,10,10);

  MakeRounded(pnlInserir,10,10);
  MakeRounded(pnlUpdate,10,10);
  MakeRounded(pnlDelete,10,10);
  MakeRounded(pnlSave,10,10);
  MakeRounded(pnlCancel,10,10);
  MakeRounded(pnlBack,10,10);

  arredondarPage := 15;

  MakeRounded(pnlFirstPage,arredondarPage,arredondarPage);
  MakeRounded(pnlSecondPage,arredondarPage,arredondarPage);
  MakeRounded(pnlPrior,arredondarPage,arredondarPage);
  MakeRounded(pnlNext,arredondarPage,arredondarPage);
  MakeRounded(pnlPenutimatePage,arredondarPage,arredondarPage);
  MakeRounded(pnlLastPage,arredondarPage,arredondarPage);
  MakeRounded(pnlCurrentPage,arredondarPage,arredondarPage);


end;

procedure TfrmProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Crud);

end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
  lblFiltro.Caption := 'Pesquisar por Nome:';

end;

procedure TfrmProdutos.showPesqMarca;
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrPesqMarca;

    ViewTransparentForm.ShowModal;

  finally
    fieldCOD_MARCA.Text := ViewTransparentForm.codigo;
    fieldNOME_MARCA.Text := ViewTransparentForm.nome;

    FreeAndNil(ViewTransparentForm);

    if fieldCOD_MARCA.Text <> '' then
      fieldCOD_UND.SetFocus
    else
      fieldCOD_MARCA.SetFocus;

  end;


end;

procedure TfrmProdutos.Image14Click(Sender: TObject);
begin
  showPesqMarca;
end;

procedure TfrmProdutos.Image15Click(Sender: TObject);
begin
  showPesqUnidade;

end;

procedure TfrmProdutos.showPesqunidade;
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrPesqUnidade;

    ViewTransparentForm.ShowModal;

  finally
    fieldCOD_UND.Text      := ViewTransparentForm.codigo;
    fieldNOME_UNIDADE.Text := ViewTransparentForm.nome;

    FreeAndNil(ViewTransparentForm);

    if fieldCOD_UND.Text <> '' then
      fieldCOD_GRUPO.SetFocus
    else
      fieldCOD_UND.SetFocus;

  end;

end;

procedure TfrmProdutos.Image16Click(Sender: TObject);
begin
  showPesqGrupo;
end;

procedure TfrmProdutos.showPesqGrupo;
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := MrPesqGrupo;

    ViewTransparentForm.ShowModal;

  finally
    fieldCOD_GRUPO.Text  := ViewTransparentForm.codigo;
    fieldNOME_GRUPO.Text := ViewTransparentForm.nome;

    FreeAndNil(ViewTransparentForm);

    if fieldCOD_GRUPO.Text <> '' then
      fieldCOD_TRIBUTO.SetFocus
    else
      fieldCOD_GRUPO.SetFocus;

  end;

end;

procedure TfrmProdutos.Image17Click(Sender: TObject);
begin
  showPesqTributo;

end;

procedure TfrmProdutos.showPesqTributo;
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrPesqTributo;

    ViewTransparentForm.ShowModal;

  finally
    fieldCOD_TRIBUTO.Text  := ViewTransparentForm.codigo;
    fieldNOME_TRIBUTO.Text := ViewTransparentForm.nome;

    FreeAndNil(ViewTransparentForm);

    if fieldCOD_TRIBUTO.Text <> '' then
      fieldPRECO_TAB.SetFocus
    else
      fieldCOD_TRIBUTO.SetFocus;

  end;

end;

procedure TfrmProdutos.imgAddGrupoClick(Sender: TObject);
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := MrGrupo;

    ViewTransparentForm.ShowModal;

  finally
    FreeAndNil(ViewTransparentForm);
    fieldCOD_GRUPO.SetFocus;

  end;

end;

procedure TfrmProdutos.imgAddMarcaClick(Sender: TObject);
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrMarca;

    ViewTransparentForm.ShowModal;

  finally
    FreeAndNil(ViewTransparentForm);
    fieldCOD_MARCA.SetFocus;

  end;
end;

procedure TfrmProdutos.imgAddTributoClick(Sender: TObject);
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrTributo;

    ViewTransparentForm.ShowModal;

  finally
    FreeAndNil(ViewTransparentForm);
    fieldCOD_TRIBUTO.SetFocus;

  end;
end;

procedure TfrmProdutos.imgAddUnidadeClick(Sender: TObject);
var
  ViewTransparentForm : TfrmTransparentForm;
begin
  inherited;
  try
    if  ViewTransparentForm <> nil then
      ViewTransparentForm := TfrmTransparentForm.Create(Self);

    ViewTransparentForm.TTypeCadastro := mrUnidade;

    ViewTransparentForm.ShowModal;

  finally
    FreeAndNil(ViewTransparentForm);
    fieldCOD_UND.SetFocus;

  end;

end;

procedure TfrmProdutos.limparEdit;
begin

  fieldNOME_MARCA.Text   := '';
  fieldNOME_UNIDADE.Text := '';
  fieldNOME_GRUPO.Text   := '';
  fieldNOME_TRIBUTO.Text := '';

  fieldCODIGO.Text        := '000000';
  fieldNOME.Text          := '';
  fieldCODIGO_BARRAS.Text := '';
  fieldCOD_FABR.Text      := '';
  fieldCOD_FOR.Text       := '';
  fieldREFERENCIA.Text    := '';

  fieldCOD_MARCA.Text     := '';
  fieldCOD_UND.Text       := '';
  fieldCOD_GRUPO.Text     := '';
  fieldCOD_TRIBUTO.Text   := '';

  fieldPRECO_TAB.Text     := '0,00';
  fieldPRECO_CUSTO.Text   := '0,00';
  fieldIPI.Text           := '0,00';
  fieldFRETE.Text         := '0,00';
  fieldCICMS_FRETE.Text   := '0,00';
  fieldSTRIB.Text         := '0,00';
  fieldCICMS.Text         := '0,00';
  fieldACRESC.Text        := '0,00';
  fieldDESCONTO.Text      := '0,00';
  fieldCFIXO.Text         := '0,00';
  fieldPIS.Text           := '0,00';
  fieldCOFINS.Text        := '0,00';
  fieldICMS.Text          := '0,00';
  fieldCUSTO_FINAL.Text   := '0,00';

  fieldPORC_VISTA.Text    := FormatFloat('#,###,##0.00', StrToCurrDef( pesquisarRegistro('EMPRESA', 'PORC_VISTA', 'NRO',1), 0));
  fieldPORC_PRAZO.Text    := FormatFloat('#,###,##0.00', StrToCurrDef( pesquisarRegistro('EMPRESA', 'PORC_PRAZO', 'NRO',1), 0));

  fieldPRECO.Text         := '0,00';
  fieldPRECO_PRAZO.Text   := '0,00';
  fieldPCOMIS.Text        := '0,00';
  fieldDESC_MAX.Text      := '0,00';

  fieldESTOQUE_MAX.Text   := '0,00';
  fieldEST_MIN.Text       := '0,00';

  fieldNCM.Text           := '12345678';
  fieldCEST.Text          := '123456';
  fieldCFOPDENTRO.Text    := '5101';
  fieldCFOPFORA.Text      := '6101';
  fieldCSOSN.Text         := '102';

  fieldSITUACAO.ItemIndex := 0;

  fieldOBS.Text           := '';

  fieldGARANTIA.Text      := '';

  fieldVALIDADE.Text      := '';

  fieldPROMOCAO.ItemIndex := 1;

  fieldPISO.ItemIndex := 1;
  fieldFLG_FRACIONA.ItemIndex := 1;
  fieldBALANCA.ItemIndex := 1;
  fieldPESO.Text := '0,00';
  fieldMULTIPLO.Text := '0,00';
  fieldMETROS.Text := '0,00';

  fieldGONDOLA.Text       := '';
  fieldLADO.ItemIndex     := 0;
  fieldPRATELEIRA.Text    := '';
  fieldCOLUNA.Text        := '';

  fieldCLAS_ABC.ItemIndex := 0;

  fieldPORC_ICMS.Text       := '0,00';
  fieldPIS_SAIDA.Text       := '0,00';
  fieldCOFINS_SAIDA.Text    := '0,00';
  fieldPORC_BICMS.Text      := '0,00';
  fieldSIT_PIS_COFINS.Text  := '';
  fieldPORC_IPI.Text        := '0,00';

  fieldMVA.Text             := '0,00';
  fieldMVA4.Text            := '0,00';
  fieldMVA12.Text           := '0,00';
  fieldBASE_REDUCAO.Text    := '0,00';

  fieldCST_ORIG.ItemIndex   := 0;

end;

procedure TfrmProdutos.pnlDeleteClick(Sender: TObject);
var
  ViewTransparentDialog : TfrmTransparentDialog;
begin

  try
    ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

    ViewTransparentDialog.TypeDialog := mrDanger;
    ViewTransparentDialog.aTitle := 'Confirmação de Exclusão';
    ViewTransparentDialog.aMsg   := 'Confirma a Exclusão do Registro?';
    ViewTransparentDialog.aTitleLabelConfirmation := 'Desejo Excluir';

    ViewTransparentDialog.ShowModal;

    if ViewTransparentDialog.Confirmation = mrYes then
    begin
      Crud.CODIGO := DSFind.DataSet.FieldByName('CODIGO').AsInteger;
      FProduto.Delete(Crud);
      FProduto.Find;
    end;


  finally
    FreeAndNil(ViewTransparentDialog);
  end;

  inherited;

end;

procedure TfrmProdutos.pnlDetailsClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[1];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmProdutos.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmProdutos.pnlImpostoNFeClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[2];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmProdutos.pnlInserirClick(Sender: TObject);
begin
  inherited;
  limparEdit;
  fieldNome.SetFocus;

end;

procedure TfrmProdutos.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmProdutos.pnlNextClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmProdutos.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmProdutos.pnlPriorClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

function TfrmProdutos.validarDados : Boolean;
var
  ViewTransparentDialog : TfrmTransparentDialog;
begin
  Result := True;

  if fieldCOD_MARCA.Text = '' then
  begin
    Result := False;
    try
      ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

      ViewTransparentDialog.TypeDialog := mrInformation;
      ViewTransparentDialog.aTitle := 'Preenchimento Incompleto';
      ViewTransparentDialog.aMsg := 'Favor preencher todos os campos! Campo MARCA precisa de preenchimento! ';
      ViewTransparentDialog.aTitleLabelConfirmation := 'Preencher Campo';

      ViewTransparentDialog.ShowModal;

      fieldCOD_MARCA.SetFocus;

    finally
      FreeAndNil(ViewTransparentDialog);
    end;
  end
  else if fieldCOD_UND.Text = '' then
  begin
    Result := False;
    try
      ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

      ViewTransparentDialog.TypeDialog := mrInformation;
      ViewTransparentDialog.aTitle := 'Preenchimento Incompleto';
      ViewTransparentDialog.aMsg := 'Favor preencher todos os campos! Campo UNIDADE precisa de preenchimento! ';
      ViewTransparentDialog.aTitleLabelConfirmation := 'Preencher Campo';

      ViewTransparentDialog.ShowModal;

      fieldCOD_UND.SetFocus;

    finally
      FreeAndNil(ViewTransparentDialog);
    end;
  end
  else if fieldCOD_GRUPO.Text = '' then
  begin
    Result := False;
    try
      ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

      ViewTransparentDialog.TypeDialog := mrInformation;
      ViewTransparentDialog.aTitle := 'Preenchimento Incompleto';
      ViewTransparentDialog.aMsg := 'Favor preencher todos os campos! Campo GRUPO precisa de preenchimento! ';
      ViewTransparentDialog.aTitleLabelConfirmation := 'Preencher Campo';

      ViewTransparentDialog.ShowModal;

      fieldCOD_GRUPO.SetFocus;

    finally
      FreeAndNil(ViewTransparentDialog);
    end;
  end
  else if fieldCOD_TRIBUTO.Text = '' then
  begin
    Result := False;
    try
      ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

      ViewTransparentDialog.TypeDialog := mrInformation;
      ViewTransparentDialog.aTitle := 'Preenchimento Incompleto';
      ViewTransparentDialog.aMsg := 'Favor preencher todos os campos! Campo CLASSIFICAÇÃO TRIBUTÁRIA precisa de preenchimento! ';
      ViewTransparentDialog.aTitleLabelConfirmation := 'Preencher Campo';

      ViewTransparentDialog.ShowModal;

      fieldCOD_TRIBUTO.SetFocus;

    finally
      FreeAndNil(ViewTransparentDialog);
    end;
  end;

end;

procedure TfrmProdutos.pnlSaveClick(Sender: TObject);
var
  ViewTransparentDialog : TfrmTransparentDialog;
begin
  if validarDados then
  begin

    preencherEntidade;

    case FEstado of
      crudInsert:
      begin
        FProduto.Insert(Crud);
      end;

      crudUpdate:
      begin
        try

          FProduto.Update(Crud);
        except
          on E: Exception do
          begin
            try
              ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

              ViewTransparentDialog.TypeDialog := mrWarning;
              ViewTransparentDialog.aTitle := 'Erro ao Tentar Salvar no Banco de Dados';
              ViewTransparentDialog.aMsg := 'Detalhes do erro: ' +E.Message;
              ViewTransparentDialog.aTitleLabelConfirmation := 'Ok';

              ViewTransparentDialog.ShowModal;

            finally
              FreeAndNil(ViewTransparentDialog);
            end;
          end;

        end;



      end;

      crudDelete:
      begin

      end;

    end;

    FProduto.OrderBy('CODIGO').Find;

    inherited;

  end;

end;

procedure TfrmProdutos.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FProduto
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmProdutos.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  fieldNome.SetFocus;
end;

procedure TfrmProdutos.preencherEntidade;
begin
  Crud.CODIGO          := StrToIntDef(fieldCODIGO.Text,0);
  Crud.NOME            := fieldNOME.Text;
  Crud.CODIGO_BARRAS   := fieldCODIGO_BARRAS.Text;
  Crud.COD_FABR        := fieldCOD_FABR.Text;
  Crud.COD_FOR         := fieldCOD_FOR.Text;
  Crud.REFERENCIA      := fieldREFERENCIA.Text;

  Crud.COD_MARCA       := StrToIntDef(fieldCOD_MARCA.Text,0);
  Crud.COD_UND         := StrToIntDef(fieldCOD_UND.Text,0);
  Crud.COD_GRUPO       := StrToIntDef(fieldCOD_GRUPO.Text,0);
  Crud.COD_TRIBUTO     := StrToIntDef(fieldCOD_TRIBUTO.Text,0);

  Crud.PRECO_TAB       := StrToCurrDef(fieldPRECO_TAB.Text,0);
  Crud.PRECO_CUSTO     := StrToCurrDef(fieldPRECO_CUSTO.Text,0);
  Crud.IPI             := StrToCurrDef(fieldIPI.Text,0);
  Crud.FRETE           := StrToCurrDef(fieldFRETE.Text,0);
  Crud.CICMS_FRETE     := StrToCurrDef(fieldCICMS_FRETE.Text,0);
  Crud.STRIB           := StrToCurrDef(fieldSTRIB.Text,0);
  Crud.CICMS           := StrToCurrDef(fieldCICMS.Text,0);
  Crud.ACRESC          := StrToCurrDef(fieldACRESC.Text,0);
  Crud.DESCONTO        := StrToCurrDef(fieldDESCONTO.Text,0);
  Crud.CFIXO           := StrToCurrDef(fieldCFIXO.Text,0);
  Crud.PIS             := StrToCurrDef(fieldPIS.Text,0);
  Crud.COFINS          := StrToCurrDef(fieldCOFINS.Text,0);
  Crud.ICMS            := StrToCurrDef(fieldICMS.Text,0);
  Crud.CUSTO_FINAL     := StrToCurrDef(fieldCUSTO_FINAL.Text,0);

  Crud.PORC_VISTA      := StrToCurrDef(fieldPORC_VISTA.Text,0);
  Crud.PORC_PRAZO      := StrToCurrDef(fieldPORC_PRAZO.Text,0);
  Crud.PRECO           := StrToCurrDef(fieldPRECO.Text,0);
  Crud.PRECO_PRAZO     := StrToCurrDef(fieldPRECO_PRAZO.Text,0);
  Crud.PCOMIS          := StrToCurrDef(fieldPCOMIS.Text,0);
  Crud.DESC_MAX        := StrToCurrDef(fieldDESC_MAX.Text,0);

  Crud.ESTOQUE_MAX     := StrToCurrDef(fieldESTOQUE_MAX.Text,0);
  Crud.EST_MIN         := StrToCurrDef(fieldEST_MIN.Text,0);

  Crud.NCM             := fieldNCM.Text;
  Crud.CEST            := fieldCEST.Text;
  Crud.CFOPDENTRO      := fieldCFOPDENTRO.Text;
  Crud.CFOPFORA        := fieldCFOPFORA.Text;
  Crud.CSOSN           := fieldCSOSN.Text;

  Crud.SITUACAO        := Copy(fieldSITUACAO.Items[fieldSITUACAO.ItemIndex],1,1);

  Crud.DT_ULTCOMPRA    := now;
  Crud.ULT_FORNEC      := 0;
  Crud.ULT_CONTROLE    := 0;

  Crud.OBS             := fieldOBS.Text;

  Crud.GARANTIA        := StrToIntDef(fieldGARANTIA.Text,0);

  if fieldVALIDADE.Text = '' then
    Crud.VALIDADE        := null
  else
    Crud.VALIDADE        := StrToDate(fieldVALIDADE.Text);

  Crud.PROMOCAO        := Copy(fieldPROMOCAO.Items[fieldPROMOCAO.ItemIndex],1,1);

  Crud.PISO            := Copy(fieldPISO.Items[fieldPISO.ItemIndex],1,1);
  Crud.FLG_FRACIONA    := Copy(fieldFLG_FRACIONA.Items[fieldFLG_FRACIONA.ItemIndex],1,1);
  Crud.BALANCA         := Copy(fieldBALANCA.Items[fieldBALANCA.ItemIndex],1,1);

  Crud.PESO            := StrToCurrDef(fieldPESO.Text,0);

  Crud.MULTIPLO        := StrToCurrDef(fieldMULTIPLO.Text,0);

  Crud.METROS          := StrToCurrDef(fieldMETROS.Text,0);

  Crud.GONDOLA         := fieldGONDOLA.Text;
  Crud.LADO            := Copy(fieldLADO.Items[fieldLADO.ItemIndex],1,1);
  Crud.PRATELEIRA      := fieldPRATELEIRA.Text;
  Crud.COLUNA          := fieldCOLUNA.Text;

  Crud.CLAS_ABC        := Copy(fieldCLAS_ABC.Items[fieldCLAS_ABC.ItemIndex],1,1);

  Crud.USU_INC         := 'VITRINE';
  Crud.DATA_INC        := now;

  Crud.PORC_ICMS       := StrToCurrDef(fieldPORC_ICMS.Text,0);
  Crud.PIS_SAIDA       := StrToCurrDef(fieldPIS_SAIDA.Text,0);
  Crud.COFINS_SAIDA    := StrToCurrDef(fieldCOFINS_SAIDA.Text,0);
  Crud.PORC_BICMS      := StrToCurrDef(fieldPORC_BICMS.Text,0);
  Crud.SIT_PIS_COFINS  := StrToIntDef(fieldSIT_PIS_COFINS.Text,0);
  Crud.PORC_IPI        := StrToCurrDef(fieldPORC_IPI.Text,0);

  Crud.MVA             := StrToCurrDef(fieldMVA.Text,0);
  Crud.MVA4            := StrToCurrDef(fieldMVA4.Text,0);
  Crud.MVA12           := StrToCurrDef(fieldMVA12.Text,0);
  Crud.BASE_REDUCAO    := StrToCurrDef(fieldBASE_REDUCAO.Text,0);

  Crud.CST_ORIG        := StrToIntDef( Copy(fieldCST_ORIG.Items[fieldCST_ORIG.ItemIndex],1,1),0);

  Crud.DATA_ALT        := now;

  Crud.USU_ALT         := null;
  Crud.KIT             := 'N';
  Crud.COD_CFOP        := null;
  Crud.PORC_DIF        := null;
  Crud.SEL             := null;
  Crud.NOME_REDUZ      := null;

end;

procedure TfrmProdutos.updatePanelPage;
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

procedure TfrmProdutos.updateNumberPage;
var
  FGrupoCount : iControllerDAOGeneric<TPRODUTOS>;
begin
  FGrupoCount := TControllerPRODUTOS<TPRODUTOS>.New;

  numberRecords := FGrupoCount
                    .Where(aSQL, aFiltro)
                    .NumberRecords;

  pages := numberRecords / aFirst;

  pagesTotal := Ceil(pages);

  aPenultimatePage := pagesTotal - 2;
  aLastPage := pagesTotal - 1;

end;

procedure TfrmProdutos.calcularCustoFinal;
var
  custo, ipi, frete, strib, acresc, desco, cicms,
  cicmsf, custof, cfixo, pis, cofins, icms,
  total, porc_icms, ind_pm, ind_venv, ind_venp : Currency;
begin
  custo  := StrToCurrDef(fieldPRECO_CUSTO.Text,0);
  ipi    := custo * (StrToCurrDef(fieldIPI.Text,0)/100); //Valor Total do IPI da N.F.
  frete  := (custo + ipi) * (StrToCurrDef(fieldFRETE.Text,0)/100);

  strib  := custo * (StrToCurrDef(fieldSTRIB.Text,0)/100);
  //strib  := custo * (Tabela.FieldByName('PORC_STRIB').asfloat/100);

  acresc := custo * (StrToCurrDef(fieldACRESC.Text,0)/100);
  desco  := custo * (StrToCurrDef(fieldDESCONTO.Text,0)/100);
  cicms  := custo * (StrToCurrDef(fieldCICMS.Text,0)/100);
  cicmsf := custo * (StrToCurrDef(fieldCICMS_FRETE.Text,0)/100);
  custof := custo + ipi + frete + strib + acresc - desco - cicms - cicmsf;     //CUSTO FINAL

  cfixo  := custof * (StrToCurrDef(fieldCFIXO.Text,0)/100);
  pis    := custof * (StrToCurrDef(fieldPIS.Text,0)/100);
  cofins := custof * (StrToCurrDef(fieldCOFINS.Text,0)/100);
  icms   := 0;//custo * (Dm.IBDS_produtos.FieldByName('ICMS').asfloat/100);

//  if (dm.tp_ent = 'D') then //verifica tipo da entrada Markdown
//  begin
    total := custof + cfixo + pis + cofins + icms;
    fieldPRECO.Text       := FormatFloat('#,###,##0.00', total +
        (total * (StrToCurrDef(fieldPORC_VISTA.Text,0)/100)));

    fieldPRECO_PRAZO.Text := FormatFloat('#,###,##0.00', total +
        (total * (StrToCurrDef(fieldPORC_PRAZO.Text,0)/100)));

//  end
//  else //MarkUp
//  begin
//    porc_icms := 0;
//
//    ind_pm    := abs(((StrToCurrDef(fieldCFIXO.Text,0) +
//        StrToCurrDef(fieldCOFINS.Text,0) + StrToCurrDef(fieldPIS.Text,0) +
//          porc_icms)/100)-1);
//
//    total     := custof / ind_pm;
//
//    if (dm.custo = 0) then //CALCULO CORRETO
//    begin
//      ind_venv  := ind_pm - (StrToCurrDef(fieldPORC_VISTA.Text,0)/100);
//      ind_venp  := ind_pm - (StrToCurrDef(fieldPORC_PRAZO.Text,0)/100);
//      fieldPRECO.Text       := FormatFloat('#,###,##0.00', (custof / abs(ind_venv)));
//      fieldPRECO_PRAZO.Text := FormatFloat('#,###,##0.00',(custof / abs(ind_venp)));
//
//    end
//    else //CALCULO INCOSPEL         //Rotina se tirar 10% do a prazo fica c/ o preço vista
//    begin
//      ind_venv := ind_pm - (StrToCurrDef(fieldPORC_VISTA.Text,0)/100);
//      fieldPRECO.Text := (custof / ind_venv);
//      ind_venp := StrToCurrDef(fieldPORC_PRAZO.Text,0) -
//                            StrToCurrDef(fieldPORC_VISTA.Text,0);
//      ind_venp := abs((ind_venp/100) -1);
//      fieldPRECO_PRAZO.Text := abs(StrToCurrDef(fieldPRECO.Text,0)/ind_venp);
//
//    end;
//
//  end;

  fieldCUSTO_FINAL.Text := FormatFloat('#,###,##0.00', total);

end;

end.

