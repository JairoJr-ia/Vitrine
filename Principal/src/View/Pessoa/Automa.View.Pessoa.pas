unit Automa.View.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseCRUD, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  System.Rtti,
  Automa.Controller.Pessoa,
  Automa.Controller.DAOGeneric.Interfaces,
  Entidade.Pessoa, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,
  math, Automa.View.TransparentDialog, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Automa.View.TransparentForm,
  Vcl.Imaging.GIFImg, System.Threading, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ResizeKit;

type
  TfrmPessoa = class(TfrmBaseCRUD)
    Label3: TLabel;
    fieldCPF_CNPJ: TEdit;
    Label5: TLabel;
    fieldRG_IE: TEdit;
    fieldTPESSOA: TRadioGroup;
    pnlAgrupaDetalhes: TPanel;
    pnlTipo: TPanel;
    Shape16: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel30: TPanel;
    Shape17: TShape;
    Label53: TLabel;
    fieldFONE: TEdit;
    fieldCELULAR: TEdit;
    fieldFAX: TEdit;
    fieldCONTATO: TEdit;
    Panel18: TPanel;
    pnlDetails: TPanel;
    Image11: TImage;
    Panel19: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Shape1: TShape;
    Panel15: TPanel;
    Shape3: TShape;
    Label16: TLabel;
    fieldFLG_EC: TRadioGroup;
    Panel16: TPanel;
    Shape4: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Panel17: TPanel;
    Shape5: TShape;
    Label20: TLabel;
    fieldMAE: TEdit;
    fieldPAI: TEdit;
    fieldSEXO: TRadioGroup;
    Panel22: TPanel;
    Shape9: TShape;
    Panel23: TPanel;
    Shape10: TShape;
    Label15: TLabel;
    fieldFLG_CLI: TCheckBox;
    fieldFLG_FOR: TCheckBox;
    fieldFLG_VEN: TCheckBox;
    fieldFLG_TRA: TCheckBox;
    fieldFLG_FUN: TCheckBox;
    fieldFLG_CXA: TCheckBox;
    fieldFLG_SOCIO: TCheckBox;
    fieldFLG_PROD_RURAL: TCheckBox;
    Panel21: TPanel;
    Shape6: TShape;
    Label12: TLabel;
    Panel24: TPanel;
    Shape7: TShape;
    Label14: TLabel;
    fieldCEP: TEdit;
    Panel26: TPanel;
    Shape11: TShape;
    Panel27: TPanel;
    Shape12: TShape;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    pnlGif: TPanel;
    Image12: TImage;
    RESTClientCEP: TRESTClient;
    RESTRequestCEP: TRESTRequest;
    RESTResponseCEP: TRESTResponse;
    imgGif: TImage;
    Label13: TLabel;
    fieldENDERECO: TEdit;
    Label19: TLabel;
    fieldNRO: TEdit;
    Label21: TLabel;
    fieldBAIRRO: TEdit;
    Label23: TLabel;
    fieldCOD_CID: TEdit;
    fieldNOME_CIDADE: TEdit;
    fieldUF: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    lblInfoCEP: TLabel;
    lblCepNotFound: TLabel;
    DSEndereco: TDataSource;
    queryEndereco: TFDQuery;
    fieldFLG_SNF: TCheckBox;
    Label6: TLabel;
    fieldNASCTO: TEdit;
    Label54: TLabel;
    fieldFANTASIA: TEdit;
    Label26: TLabel;
    fieldEMAIL: TEdit;
    pnlBloqueio: TPanel;
    Image14: TImage;
    TabSheet3: TTabSheet;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel33: TPanel;
    Shape15: TShape;
    Panel34: TPanel;
    Shape18: TShape;
    Label31: TLabel;
    fieldUSA_BLOQ: TRadioGroup;
    fieldBLOQ_VV: TRadioGroup;
    fieldBLOQ_VP: TRadioGroup;
    fieldBLOQ_OS: TRadioGroup;
    Label28: TLabel;
    fieldLMT_CREDITO: TEdit;
    Label29: TLabel;
    fieldCARENCIA: TEdit;
    Label30: TLabel;
    Label32: TLabel;
    fieldPORCENTAGEM_JUROS: TEdit;
    Panel35: TPanel;
    Panel38: TPanel;
    Shape21: TShape;
    Label34: TLabel;
    Panel39: TPanel;
    Shape22: TShape;
    Label38: TLabel;
    fieldOBSERVACAO: TEdit;
    Label27: TLabel;
    fieldOBS: TEdit;
    fieldSITUACAO: TRadioGroup;
    Panel31: TPanel;
    Panel37: TPanel;
    Shape19: TShape;
    Panel40: TPanel;
    Shape20: TShape;
    Label39: TLabel;
    fieldABR_CXA: TRadioGroup;
    fieldCOB_JUROS: TRadioGroup;
    Label35: TLabel;
    fieldDESC_MAX: TEdit;
    Label7: TLabel;
    fieldDATA_INC: TEdit;
    fieldFLG_CLS: TRadioGroup;
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
    procedure pnlGifClick(Sender: TObject);
    procedure pnlDadosPrincipalClick(Sender: TObject);
    procedure pnlDetailsClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnlBloqueioClick(Sender: TObject);
  private
    { Private declarations}
    FPessoa : iControllerDAOGeneric<TPESSOA>;
    Crud : TPESSOA;
    semConexao : Boolean;
    procedure preencherEntidade;
    procedure updateNumberPage;
    procedure updatePanelPage;
    procedure inserirCidade(nome, uf, CEP, IBGE : String);
    function consultarCEP(CEP: String) : Boolean;
    procedure exibirEnderecoEdits;
    procedure limparEndereco;
    procedure alterarCorPanelSelecionado(Sender : TObject); override;
    procedure limparEdit;
  public
    { Public declarations }

  end;

var
  frmPessoa: TfrmPessoa;

implementation

uses
  System.JSON, uConnection;

{$R *.dfm}

procedure TfrmPessoa.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;

  end
  else
  begin

    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

  updateNumberPage;
  updatePanelPage;
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
var
  arredondarPage : Integer;
begin
  inherited;
  FPessoa := TControllerPessoa<TPESSOA>.New;
  FPessoa.DataSource(DSFind);

  Crud := TPESSOA.Create;

  filtro := 'NOME';
  tableName := 'PESSOA.';

  filtro := tableName+filtro;

  aFirst := 100;
  aSkip  := 0;

  FPessoa
    .Limit(aFirst,aSkip)
    .OrderBy('CODIGO')
  .Find;

  updateNumberPage;
  updatePanelPage;

  MakeRounded(pnlInserir,10,10);
  MakeRounded(pnlUpdate,10,10);
  MakeRounded(pnlDelete,10,10);
  MakeRounded(pnlSave,10,10);
  MakeRounded(pnlCancel,10,10);
  MakeRounded(pnlBack,10,10);
  MakeRounded(pnlDetails,10,10);
  MakeRounded(pnlBloqueio,10,10);

  MakeRounded(pnlGif,10,10);

  arredondarPage := 15;

  MakeRounded(pnlFirstPage,arredondarPage,arredondarPage);
  MakeRounded(pnlSecondPage,arredondarPage,arredondarPage);
  MakeRounded(pnlPrior,arredondarPage,arredondarPage);
  MakeRounded(pnlNext,arredondarPage,arredondarPage);
  MakeRounded(pnlPenutimatePage,arredondarPage,arredondarPage);
  MakeRounded(pnlLastPage,arredondarPage,arredondarPage);
  MakeRounded(pnlCurrentPage,arredondarPage,arredondarPage);

end;

procedure TfrmPessoa.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Crud);

end;

procedure TfrmPessoa.FormShow(Sender: TObject);
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
          'Cadastro Rápido de Pessoa';
        Height := 290;
        Width  := 800;

        region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
        setwindowrgn(handle, region, true);

        pnlAgrupaSaveCancelar.Margins.Left := 0;
      end;
  end;
end;

procedure TfrmPessoa.exibirEnderecoEdits;
var
  jsonObj: TJSONObject;
  jv: TJSONValue;
  codigoCidade, codigoIBGE : String;
begin

  jsonObj := TJSONObject.ParseJSONValue(RESTResponseCEP.Content)
  as TJSONObject;

  jv := jsonobj.Get('logradouro').JsonValue;
  fieldENDERECO.Text := jv.Value;

  jv := jsonobj.Get('bairro').JsonValue;
  fieldBAIRRO.Text := jv.Value;

  jv := jsonobj.Get('localidade').JsonValue;
  fieldNOME_CIDADE.Text := jv.Value;

  jv := jsonobj.Get('uf').JsonValue;
  fieldUF.Text := jv.Value;

  jv := jsonobj.Get('ibge').JsonValue;
  codigoIBGE := jv.Value;

  if fieldNOME_CIDADE.Text <> '' then
  begin
    codigoCidade := pesquisarRegistro('CIDADE', 'CODIGO', 'NOME',fieldNOME_CIDADE.Text);

    if codigoCidade = '' then
    begin
      inserirCidade(fieldNOME_CIDADE.Text, fieldUF.Text, fieldCEP.Text, codigoIBGE);

    end;

    codigoCidade := pesquisarRegistro('CIDADE', 'CODIGO', 'NOME',fieldNOME_CIDADE.Text);

    if codigoCidade <> '' then
    begin
      fieldCOD_CID.Text := FormatFloat('000000', StrToCurr(codigoCidade));

    end;

  end;

end;

function TfrmPessoa.consultarCEP(CEP : String) : Boolean;
var
  jsonObj: TJSONObject;
  jv: TJSONValue;
  erro : String;
begin

  CEP := StringReplace(CEP,',','',[]);
  CEP := StringReplace(CEP,'.','',[]);
  CEP := StringReplace(CEP,'-','',[]);
  CEP := StringReplace(CEP,'/','',[]);

  RESTClientCEP.BaseURL := 'https://viacep.com.br/ws/'+CEP+'/json';

  try
    RESTRequestCEP.Execute;

    jsonObj := TJSONObject.ParseJSONValue(RESTResponseCEP.Content)
                  as TJSONObject;
    try
      jv := jsonObj.Pairs[0].JsonValue;
      erro := jv.Value;
    except
      erro := 'false';
    end;

    if erro <> 'true' then
      Result := True
    else
      Result := False;

    semConexao := False;

  except
    semConexao := True;
    Result := False;
  end;

end;

procedure TfrmPessoa.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  PreencherCampos(DBGrid1);
end;

procedure TfrmPessoa.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TIntegerField(DBGrid1.Fields[0]).DisplayFormat := '000000';

  if State = [] then
  begin
    if queryEndereco.RecNo mod 2 = 1 then
      DBGrid1.Canvas.Brush.Color := $00FFF7F0
    else
      DBGrid1.Canvas.Brush.Color := clWhite;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

procedure TfrmPessoa.pnlGifClick(Sender: TObject);
begin
  inherited;

  if fieldCEP.Text <> '' then
  begin
    TTask.Run(procedure
    begin
      imgGif.Visible := True;

      (imgGif.Picture.Graphic as TGIFImage).Animate := True;

      Sleep(3000);

      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
        if consultarCEP(fieldCEP.Text) then
        begin

          exibirEnderecoEdits;
          fieldNRO.SetFocus;
          imgGif.Visible := False;

        end
        else
        begin
          imgGif.Visible := False;
          if semConexao then
          begin
            lblCepNotFound.Caption := 'Erro ao tentar conectar com Internet.'
          end
          else
          begin
            lblCepNotFound.Caption := 'CEP Não Encontrado.'
          end;

          lblCepNotFound.Visible := True;
          Application.ProcessMessages;
          Sleep(2000);
          lblCepNotFound.Visible := False;
          limparEndereco;

        end;

      end);

    end);

  end
  else
  begin
    lblInfoCEP.Visible := True;
    Application.ProcessMessages;
    Sleep(2000);

    lblInfoCEP.Visible := False;
    Application.ProcessMessages;
    fieldCEP.SetFocus;

  end;

end;

procedure TfrmPessoa.inserirCidade(nome, uf, CEP, IBGE : String);
var
  aQuery : TFDQuery;
begin
  try
    aQuery := TFDQuery.Create(nil);
    aQuery.Connection := TConnection.GetInstance;

    with aQuery, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO CIDADE ');
      Add(' (CODIGO,NOME,COD_ESTADO,CEP,IDCIDADE) ');
      Add(' VALUES (:CODIGO,:NOME,:COD_ESTADO,:CEP,:IDCIDADE) ');
      ParamByName('CODIGO').AsInteger    := 0;
      ParamByName('NOME').AsString       := nome;
      ParamByName('COD_ESTADO').AsString := uf;
      ParamByName('CEP').AsString        := CEP;
      ParamByName('IDCIDADE').AsString   := IBGE;

      ExecSQL;

    end;

  finally
    FreeAndNil(aQuery);
  end;

end;

procedure TfrmPessoa.pnlBloqueioClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[2];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmPessoa.pnlDadosPrincipalClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[0];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmPessoa.pnlDeleteClick(Sender: TObject);
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
      FPessoa.Delete(Crud);
      FPessoa.Find;
    end;


  finally
    FreeAndNil(ViewTransparetDialog);
  end;

  inherited;

end;

procedure TfrmPessoa.pnlDetailsClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[1];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmPessoa.alterarCorPanelSelecionado(Sender: TObject);
var
  panelSelecionado : TPanel;
begin
  inherited;
  panelSelecionado := TPanel(Sender as TPanel);

  if panelSelecionado.Name = 'pnlDadosPrincipal' then
  begin
    panelSelecionado.Color := $009F4800;
    pnlDetails.Color       := $00007DFB;
    pnlBloqueio.Color       := $00007DFB;


  end
  else if panelSelecionado.Name = 'pnlDetails' then
  begin
    panelSelecionado.Color  := $009F4800;
    pnlDadosPrincipal.Color := $00007DFB;
    pnlBloqueio.Color       := $00007DFB;

  end
  else if panelSelecionado.Name = 'pnlBloqueio' then
  begin
    panelSelecionado.Color  := $009F4800;
    pnlDadosPrincipal.Color := $00007DFB;
    pnlDetails.Color        := $00007DFB;
  end;


end;

procedure TfrmPessoa.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmPessoa.pnlInserirClick(Sender: TObject);
var
  ViewTransparentDialog : TfrmTransparentDialog;
begin
  inherited;
  fieldCEP.Text := '';
  limparEndereco;

  limparEdit;

  try
    ViewTransparentDialog := TfrmTransparentDialog.Create(Self);

    ViewTransparentDialog.TypeDialog := mrInformationAsk;
    ViewTransparentDialog.aTitle := 'Tipo de Pessoa';
    ViewTransparentDialog.aMsg   := 'Favor selecionar o tipo de Pessoa: Física ou Jurídica.';
    ViewTransparentDialog.aTitleLabelConfirmation := 'Física';
    ViewTransparentDialog.aTitleLabelClose        := 'Jurídica';

    ViewTransparentDialog.ShowModal;

    if ViewTransparentDialog.Confirmation = mrYes then
    begin
      fieldTPESSOA.ItemIndex := 0;

    end
    else
    begin
      fieldTPESSOA.ItemIndex := 1;

    end;

  finally
    FreeAndNil(ViewTransparentDialog);
  end;

  fieldDATA_INC.Text := DateToStr(now);
  fieldSITUACAO.ItemIndex := 0;
  fieldCPF_CNPJ.SetFocus;

end;

procedure TfrmPessoa.limparEdit;
begin

  fieldCODIGO.Text        := '000000';
  fieldDATA_INC.Text      := '';
  fieldCPF_CNPJ.Text      := '';
  fieldRG_IE.Text         := '';
  fieldNOME.Text          := '';
  fieldFANTASIA.Text      := '';
  fieldFONE.Text          := '';
  fieldCELULAR.Text       := '';
  fieldFAX.Text           := '';
  fieldCONTATO.Text       := '';
  fieldEMAIL.Text         := '';

  fieldFLG_CLI.Checked        := true;
  fieldFLG_FOR.Checked        := false;
  fieldFLG_VEN.Checked        := false;
  fieldFLG_TRA.Checked        := false;
  fieldFLG_FUN.Checked        := false;
  fieldFLG_CXA.Checked        := false;
  fieldFLG_SOCIO.Checked      := false;
  fieldFLG_PROD_RURAL.Checked := false;

  fieldNASCTO.Text      := '';
  fieldMAE.Text         := '';
  fieldPAI.Text         := '';
  fieldSEXO.ItemIndex   := 0;
  fieldFLG_EC.ItemIndex := 1;

  fieldUSA_BLOQ.ItemIndex  := 0;
  fieldBLOQ_VV.ItemIndex   := 1;
  fieldBLOQ_VP.ItemIndex   := 1;
  fieldBLOQ_OS.ItemIndex   := 1;

  fieldLMT_CREDITO.Text       := '1000,00';
  fieldCARENCIA.Text          := '10';
  fieldPORCENTAGEM_JUROS.Text := '0.00';

  fieldOBSERVACAO.Text := '';
  fieldOBS.Text        := '';

end;

procedure TfrmPessoa.limparEndereco;
begin
  queryEndereco.Close;

  fieldENDERECO.Text := '';
  fieldBAIRRO.Text := '';
  fieldNRO.Text := '';

  fieldUF.Text := '';
  fieldNOME_CIDADE.Text := '';
  fieldCOD_CID.Text := '';
end;

procedure TfrmPessoa.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmPessoa.pnlNextClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmPessoa.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmPessoa.pnlPriorClick(Sender: TObject);
begin
  inherited;

  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;

end;

procedure TfrmPessoa.pnlSaveClick(Sender: TObject);
begin
  preencherEntidade;

  case FEstado of
    crudInsert:
    begin
      FPessoa.Insert(Crud);

      if FTipoCadastro = mrCadastroRapido then
        close;

    end;

    crudUpdate:
    begin
      FPessoa.Update(Crud);
    end;

    crudDelete:
    begin

    end;

  end;

  FPessoa.OrderBy('CODIGO').Find;

  inherited;

end;

procedure TfrmPessoa.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  if filtro <> '' then
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .Where(aSQL, aFiltro)
      .OrderBy('CODIGO')
    .Find;
  end
  else
  begin
    FPessoa
      .Limit(aFirst,aSkip)
      .OrderBy('CODIGO')
    .Find;

  end;
end;

procedure TfrmPessoa.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  fieldNome.SetFocus;
  queryEndereco.Connection := TConnection.GetInstance;
  queryEndereco.Active := False;
  queryEndereco.ParamByName('PES').AsInteger := DSFind.DataSet.FieldByName('CODIGO').AsInteger;
  queryEndereco.Active := True;

  PreencherCampos(DBGrid1);

end;

procedure TfrmPessoa.preencherEntidade;
begin
  Crud.CODIGO := StrToInt(fieldCodigo.Text);
  Crud.NOME   := fieldNome.Text;

  if fieldSITUACAO.ItemIndex = 0 then
    Crud.SITUACAO := 'A'
  else
    Crud.SITUACAO := 'I';

  if fieldTPESSOA.ItemIndex = 0 then
  begin
    Crud.TPESSOA := 'F';
    Crud.FLG_PESSOA := 'F';
  end
  else
  begin
    Crud.TPESSOA := 'J';
    Crud.FLG_PESSOA := 'J';

  end;
  Crud.DATA_INC :=  StrToDateDef(fieldDATA_INC.Text, now);
  Crud.CPF_CNPJ :=  fieldCPF_CNPJ.Text;
  Crud.RG_IE    :=  fieldRG_IE.Text;

  Crud.FANTASIA :=  fieldFANTASIA.Text;
  Crud.FONE     :=  fieldFONE.Text;
  Crud.CELULAR  :=  fieldCELULAR.Text;
  Crud.FAX      :=  fieldFAX.Text;
  Crud.CONTATO  :=  fieldCONTATO.Text;
  Crud.EMAIL    :=  fieldEMAIL.Text;

  Crud.FLG_CLI :=  retornarValorString(fieldFLG_CLI.Checked);
  Crud.FLG_FOR :=  retornarValorString(fieldFLG_FOR.Checked);
  Crud.FLG_VEN :=  retornarValorString(fieldFLG_VEN.Checked);
  Crud.FLG_TRA :=  retornarValorString(fieldFLG_TRA.Checked);
  Crud.FLG_FUN :=  retornarValorString(fieldFLG_FUN.Checked);
  Crud.FLG_CXA :=  retornarValorString(fieldFLG_CXA.Checked);

  //Rever qual campo é mais pra frente
  Crud.FLG_CLS := 'N';

  Crud.FLG_SOCIO      :=  retornarValorString(fieldFLG_SOCIO.Checked);
  Crud.FLG_PROD_RURAL :=  retornarValorString(fieldFLG_PROD_RURAL.Checked);

  Crud.NASCTO :=  StrToDateDef(fieldNASCTO.Text, now);
  Crud.MAE    :=  fieldMAE.Text;
  Crud.PAI    :=  fieldPAI.Text;

  if fieldSEXO.ItemIndex = 0 then
    Crud.SEXO   :=  'M'
  else
    Crud.SEXO   :=  'F';

  if fieldFLG_EC.ItemIndex = 0 then
    Crud.FLG_EC := 'C'
  else if fieldFLG_EC.ItemIndex = 1 then
    Crud.FLG_EC := 'S'
  else if fieldFLG_EC.ItemIndex = 2 then
    Crud.FLG_EC := 'V'
  else if fieldFLG_EC.ItemIndex = 3 then
    Crud.FLG_EC := 'D'
  else if fieldFLG_EC.ItemIndex = 4 then
    Crud.FLG_EC := 'O';

  if fieldUSA_BLOQ.ItemIndex = 0 then
    Crud.USA_BLOQ :=  'S'
  else
    Crud.USA_BLOQ :=  'N';

  if fieldBLOQ_VV.ItemIndex = 0 then
    Crud.BLOQ_VV  := 'S'
  else
    Crud.BLOQ_VV  := 'N';

  if fieldBLOQ_VP.ItemIndex = 0 then
    Crud.BLOQ_VP  := 'S'
  else
    Crud.BLOQ_VP  := 'N';

  if fieldBLOQ_OS.ItemIndex = 0 then
    Crud.BLOQ_OS  := 'S'
  else
    Crud.BLOQ_OS  := 'N';

  Crud.LMT_CREDITO       :=  StrToCurrDef(fieldLMT_CREDITO.Text, 0);
  Crud.CARENCIA          :=  StrToIntDef(fieldCARENCIA.Text,0);
  Crud.PORCENTAGEM_JUROS :=  StrToCurrDef(fieldPORCENTAGEM_JUROS.Text,0);

  Crud.DESC_MAX := StrToIntDef(fieldDESC_MAX.Text, 0);

  if fieldABR_CXA.ItemIndex = 0 then
  begin
    Crud.ABR_CXA := 'S'
  end
  else
  begin
    Crud.ABR_CXA := 'N'
  end;

  if fieldCOB_JUROS.ItemIndex = 0 then
  begin
    Crud.COB_JUROS := 'S'
  end
  else
  begin
    Crud.COB_JUROS := 'N'
  end;

  if fieldFLG_CLS.ItemIndex = 0 then
  begin
    Crud.FLG_CLS := 'S'
  end
  else
  begin
    Crud.FLG_CLS := 'N'
  end;

  Crud.OBSERVACAO :=  fieldOBSERVACAO.Text;
  Crud.OBS        :=  fieldOBS.Text;

  Crud.CONJUGE           := null;

  Crud.TRABALHO          := null;
  Crud.REFERENCIA        := null;

  Crud.PCOMIS            := 0;

  Crud.USU_INC           := null;
  Crud.DATA_INC          := null;
  Crud.USU_ALT           := null;
  Crud.DATA_ALT          := null;
  Crud.SALARIO           := 0;

  Crud.TP_BLOQUEIO       := 4;


  Crud.COD_REPRES        := null;
  Crud.CXA_ATIVO         := 'N';
  Crud.USA_BLOQ          := 'N';

  Crud.CSAL              := 0;
  Crud.C_DTNASC          := null;
  Crud.CEMPRE            := null;
  Crud.CCPF              := null;
  Crud.CRG               := null;
  Crud.CTEL_TRAB         := null;
  Crud.C_DTCAS           := null;
  Crud.END_NRO           := null;

  Crud.TDT_ADM           := null;
  Crud.TEMPRE            := null;
  Crud.TPROF             := null;
  Crud.TTEL              := null;
  Crud.TENDE             := null;

  Crud.SCOMIS            := 0;

  Crud.PLACA             := null;
  Crud.UF                := null;
  Crud.COMISP            := 0;
  Crud.COMISV            := 0;
  Crud.COMIS_RV          := 0;
  Crud.COMIS_RP          := 0;
  Crud.PONTOS            := 0;

  Crud.PORCENTAGEM_JUROS := 0;
  Crud.IE_PRODUTOR_RURAL := null;
  Crud.FLG_PROD_RURAL    := null;

end;

procedure TfrmPessoa.updatePanelPage;
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

procedure TfrmPessoa.updateNumberPage;
var
  FGrupoCount : iControllerDAOGeneric<TPESSOA>;
begin
  FGrupoCount := TControllerPessoa<TPESSOA>.New;

  numberRecords := FGrupoCount
                    .Where(aSQL, aFiltro)
                    .NumberRecords;

  pages := numberRecords / aFirst;

  pagesTotal := Ceil(pages);

  aPenultimatePage := pagesTotal - 2;
  aLastPage := pagesTotal - 1;

end;

end.

