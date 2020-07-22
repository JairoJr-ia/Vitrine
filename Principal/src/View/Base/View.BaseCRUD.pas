unit View.BaseCRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList,SimpleAttributes, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList,uConnection, math;

type
  TEstadoCRUD = (crudInsert,crudUpdate,crudDelete, crudCancel, crudSave);

  TFormat = (mrSmallInt, mrInteger, mrCurrency);

  TTipoCadastro = (mrCadastroNormal, mrCadastroRapido);

  TfrmBaseCRUD = class(TfrmBase)
    pnlPrincipal: TPanel;
    DSFind: TDataSource;
    DSCRUD: TDataSource;
    PageControl: TPageControl;
    tabFind: TTabSheet;
    pnlFind: TPanel;
    DBGrid: TDBGrid;
    tabCRUD: TTabSheet;
    ActionList1: TActionList;
    pnlInfoFind: TPanel;
    Label2: TLabel;
    pnlButtons: TPanel;
    pnlBack: TPanel;
    Image6: TImage;
    lblVoltar: TLabel;
    pnlAgrupaInserUpdDel: TPanel;
    Panel3: TPanel;
    pnlDelete: TPanel;
    Image3: TImage;
    lblExcluir: TLabel;
    Panel2: TPanel;
    pnlUpdate: TPanel;
    Image2: TImage;
    lblAlterar: TLabel;
    Panel1: TPanel;
    pnlInserir: TPanel;
    Image1: TImage;
    lblInserir: TLabel;
    pnlAgrupaSaveCancelar: TPanel;
    Panel5: TPanel;
    pnlSave: TPanel;
    Image4: TImage;
    lblSalvar: TLabel;
    Panel7: TPanel;
    pnlCancel: TPanel;
    Image5: TImage;
    lblCancelar: TLabel;
    Panel4: TPanel;
    ImageList1: TImageList;
    edtPesquisa: TEdit;
    pnlImg: TPanel;
    Image7: TImage;
    shpPesquisa: TShape;
    Panel6: TPanel;
    lblFiltro: TLabel;
    Panel8: TPanel;
    pnlPage: TPanel;
    Panel9: TPanel;
    pnlSecondPage: TPanel;
    Panel10: TPanel;
    pnlPenutimatePage: TPanel;
    pnlLastPage: TPanel;
    Panel11: TPanel;
    pnlPrior: TPanel;
    Image8: TImage;
    pnlCurrentPage: TPanel;
    pnlNext: TPanel;
    Image9: TImage;
    Panel12: TPanel;
    pnlFirstPage: TPanel;
    pageControlDados: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlCRUD: TPanel;
    pnlDados: TPanel;
    Shape8: TShape;
    lblCodigo: TLabel;
    Label4: TLabel;
    pnlInfo: TPanel;
    Shape2: TShape;
    Label1: TLabel;
    fieldCodigo: TEdit;
    fieldNome: TEdit;
    Panel25: TPanel;
    pnlDadosPrincipal: TPanel;
    Image10: TImage;
    Image13: TImage;
    pnlTop: TPanel;
    pnl1: TPanel;
    lblNome: TLabel;
    Panel20: TPanel;
    pnlClose: TPanel;
    imgClose: TImage;
    pnlTopCrud: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlInserirMouseEnter(Sender: TObject);
    procedure pnlInserirMouseLeave(Sender: TObject);
    procedure pnlBackClick(Sender: TObject);
    procedure pnlInserirClick(Sender: TObject);
    procedure pnlUpdateClick(Sender: TObject);
    procedure pnlDeleteClick(Sender: TObject);
    procedure pnlSaveClick(Sender: TObject);
    procedure pnlCancelClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtPesquisaMouseEnter(Sender: TObject);
    procedure edtPesquisaMouseLeave(Sender: TObject);
    procedure edtPesquisaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPesquisaExit(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure edtPesquisaChange(Sender: TObject);
    procedure pnlNextClick(Sender: TObject);
    procedure pnlPriorClick(Sender: TObject);
    procedure pnlPenutimatePageClick(Sender: TObject);
    procedure pnlLastPageClick(Sender: TObject);
    procedure pnlFirstPageClick(Sender: TObject);
    procedure pnlSecondPageClick(Sender: TObject);
    procedure pnlDadosPrincipalClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlCloseMouseEnter(Sender: TObject);
    procedure pnlCloseMouseLeave(Sender: TObject);
  private
    aRazao : Integer;
    procedure OcultarSheets(PageControl: TPageControl);
    procedure DisableButton;
    function ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
    function EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
    function Max(X, Y: Integer): Integer;
    function Min(X, Y: Integer): Integer;
    procedure paginate;
    procedure nextPage;
    procedure priorPage;
    procedure penultimatePage;
    procedure lastPage;
    procedure firstPage;
    procedure secondePage;
    procedure alterarResulacao;

    { Private declarations }
  protected
    FEstado : TEstadoCRUD;
    filtro, aSQL, aFiltro,tableName : String;
    aFirst, aSkip : Integer;
    numberRecords, pagesTotal, aPenultimatePage, aLastPage, currentPage : Integer;
    pages : Currency;
    function GetTitulo : String; virtual;
    procedure limparEditParentPanel(aPanel : TPanel);
    function formatarEdit(aValue : String; aMaskFormat : TFormat) : String;
    procedure MakeRounded(Control: TWinControl; aLargura, aAltura : Integer);
    procedure alterarCorPanelSelecionado(Sender: TObject); virtual;
    function pesquisarRegistro(aTable, aField, aFilter, aVariant : Variant) : String;
    procedure PreencherCampos(aGrid: TDBGrid);
    function retornarValorString(aValue: Boolean): String;
  public
    { Public declarations }
    FTipoCadastro : TTipoCadastro;
  end;

var
  frmBaseCRUD: TfrmBaseCRUD;

implementation

uses
  FireDAC.Comp.Client;

//const
//  ScreenWidth: LongInt = 1366; {I designed my form in 800x600 mode.}
//  ScreenHeight: LongInt = 764;

{$R *.dfm}

procedure TfrmBaseCRUD.PreencherCampos(aGrid: TDBGrid);
var
  Valor: variant;
  Componente: TComponent;
  I : Integer;
  empty : Boolean;
begin

  for I := 0 to Pred(aGrid.DataSource.DataSet.FieldCount) do
  begin

    if not aGrid.DataSource.DataSet.Fields.Fields[I].IsNull then
    begin
      Valor := aGrid.DataSource.DataSet.Fields.Fields[I].AsVariant;//aGrid.Columns.Items[I].Field.AsVariant;
      empty := False;
    end
    else
    begin
      Valor := '';
      empty := True;

    end;
   // Encontra o componente relacionado, como, por exemplo, "CampoNome"
    Componente := FindComponent('field' + aGrid.DataSource.DataSet.Fields.Fields[I].FieldName);    //aGrid.Columns.Grid.Fields[I].FieldName);//aGrid.Columns.Grid.SelectedField.FieldName);

//    if aGrid.DataSource.DataSet.Fields.Fields[I].FieldName = 'GONDOLA' then
//      showMessage('Achou');


//    ShowMessage(aGrid.DataSource.DataSet.Fields.Fields[I].FieldName);

    // (Código e nome)
    // Testa se o componente é da classe "TEdit" para acessar a propriedade "Text"
    if Componente is TEdit then
    begin
      if (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftSmallint) or
           (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftInteger)  or
           (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftLargeint) or
           (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftShortint)
      then
      begin
        if empty then
          (Componente as TEdit).Text := '0'
        else
        begin
          //pega a propriedade tag do componente para saber se é smallInt ou Integer
          if (Componente as TEdit).Tag = 0 then
            (Componente as TEdit).Text := Valor
          else if (Componente as TEdit).Tag = 1 then
            (Componente as TEdit).Text := formatarEdit(Valor, mrInteger)
          else if (Componente as TEdit).Tag = 2 then
            (Componente as TEdit).Text := formatarEdit(Valor, mrSmallInt);
        end;

        (Componente as TEdit).Alignment := taRightJustify;

      end
      else if (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftFloat)    or
              (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftCurrency) or
              (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftFMTBcd)   or
              (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = Data.DB.ftExtended) or
              (aGrid.DataSource.DataSet.Fields.Fields[I].DataType = ftBCD)
      then
      begin
        if empty then
          (Componente as TEdit).Text := '0,00'
        else
          (Componente as TEdit).Text := formatarEdit(Valor, mrCurrency);

        (Componente as TEdit).Alignment := taRightJustify;

      end
      else
        (Componente as TEdit).Text := Valor;
    end;

    // (Estado Civil)
    // Testa se o componente é da classe "TComboBox" para acessar a propriedade "ItemIndex"
    if Componente is TComboBox then
      (Componente as TComboBox).ItemIndex := (Componente as TComboBox).Items.IndexOf(Valor);

    // (Sexo)
    // Testa se o componente é da classe "TRadioGroup" para acessar a propriedade "ItemIndex"
    if Componente is TRadioGroup then
    begin
      //Testa a tag do radioGroup para saber qual valor procurar
      //Tag: 0 = Sim/Não; Tag: 1 = Ativo/Inativo; Tag: 2 = Produto/Serviço; Tag: 3 = Direito/Esquerdo
      //Tag: 4 = A/B/C; Tag: 6 = Masculino/Feminino;
      //Tag: 7 = Estado Civil; Tag: 8 = Fisica/Juridica
      if (Componente as TRadioGroup).Tag = 0 then
      begin
        if Valor = 'S' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Sim')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Não')

        end;
      end
      else if (Componente as TRadioGroup).Tag = 1 then
      begin
        if Valor = 'A' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Ativo')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Inativo')

        end;
      end
      else if (Componente as TRadioGroup).Tag = 2 then
      begin
        if Valor = 'P' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Produto')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Serviço')

        end;
      end
      else if (Componente as TRadioGroup).Tag = 3 then
      begin
        if Valor = 'D' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Direito')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Esquerdo')

        end;
      end
      else if (Componente as TRadioGroup).Tag = 4 then
      begin
        (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf(Valor)
      end
      else if (Componente as TRadioGroup).Tag = 5 then
      begin
        (Componente as TRadioGroup).ItemIndex := StrToInt(Valor);
      end
      else if (Componente as TRadioGroup).Tag = 6 then
      begin
        if Valor = 'M' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Masculino')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Feminino')

        end;
      end
      else if (Componente as TRadioGroup).Tag = 7 then
      begin
        if Valor = 'C' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Casado(a)')

        end
        else if Valor = 'S' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Solteiro(a)')
        end
        else if Valor = 'V' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Viuvo(a)')
        end
        else if Valor = 'D' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Divorciado(a)')
        end
        else if Valor = 'O' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Outros')
        end

      end
      else if (Componente as TRadioGroup).Tag = 8 then
      begin
        if Valor = 'F' then
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Fisica')

        end
        else
        begin
          (Componente as TRadioGroup).ItemIndex :=
              (Componente as TRadioGroup).Items.IndexOf('Juridica')

        end;
      end
    end;
    // (Plano de Saúde)
    // Testa se o componente é da classe "TCheckBox" para acessar a propriedade "Checked"
    if Componente is TCheckBox then
    begin
      if Valor = 'S' then
        (Componente as TCheckBox).Checked := true
      else
        (Componente as TCheckBox).Checked := false;

    end;
    // (Senioridade)
    // Testa se o componente é da classe "TTrackBar" para acessar a propriedade "Position"
    if Componente is TTrackBar then
      (Componente as TTrackBar).Position := Valor;

    // (Data de Nascimento)
    // Testa se o componente é da classe "TDateTimePicker" para acessar a propriedade "Date"
    if Componente is TDateTimePicker then
      (Componente as TDateTimePicker).Date := Valor;

    // (Cor do Uniforme)
    // Testa se o componente é da classe "TShape" para acessar a propriedade "Brush.Color"
    if Componente is TShape then
      (Componente as TShape).Brush.Color := Valor;

  end;

end;

function TfrmBaseCRUD.retornarValorString(aValue : Boolean) : String;
begin
  if aValue then
    Result := 'S'
  else
    Result := 'N'
end;

procedure TfrmBaseCRUD.alterarCorPanelSelecionado(Sender : TObject);
var
  panelSelecionado : TPanel;
begin
  panelSelecionado := TPanel(Sender as TPanel);

  if panelSelecionado.Name = 'pnlDadosPrincipal' then
  begin
    panelSelecionado.Color := $009F4800;
    
  end;


end;

procedure TfrmBaseCRUD.alterarResulacao;
var
  i : Integer;
begin
  if Screen.Width <> 1366 then
  begin

    for i := ComponentCount -1 downto 0 do
    begin
      if (Components[i] is TEdit) then
      begin
        if (Components[i] as TEdit).Name <> 'edtPesquisa' then
         (Components[i] as TEdit).Font.Size := 10;

      end
      else if (Components[i] is TLabel) then
      begin
        if not( ((Components[i] as TLabel).Name = 'lblVoltar')  or
            ((Components[i] as TLabel).Name = 'lblInserir') or
            ((Components[i] as TLabel).Name = 'lblAlterar') or
            ((Components[i] as TLabel).Name = 'lblExcluir') or
            ((Components[i] as TLabel).Name = 'lblSalvar')  or
            ((Components[i] as TLabel).Name = 'lblCancelar') )
        then
          (Components[i] as TLabel).Font.Size := 10;

      end;

    end;
  end;
end;

procedure TfrmBaseCRUD.priorPage;
begin
  aRazao := aRazao - 1;
end;

procedure TfrmBaseCRUD.secondePage;
begin
  aRazao := 1;
end;

procedure TfrmBaseCRUD.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TIntegerField(DBGrid.Fields[0]).DisplayFormat := '000000';
//  TIntegerField(DBGrid.Fields[1]).DisplayFormat := '000000';
//  TFloatField(DBGrid.Fields[3]).DisplayFormat:= '#,###,##0.00';
//  TFloatField(DBGrid.Fields[4]).DisplayFormat:= '#,###,##0.00';
//  TFloatField(DBGrid.Fields[5]).DisplayFormat:= '#,###,##0.00';

  if State = [] then
    begin
      if DSFind.DataSet.RecNo mod 2 = 1 then
        DBGrid.Canvas.Brush.Color := $00FFF7F0
      else
        DBGrid.Canvas.Brush.Color := clWhite;
    end;
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmBaseCRUD.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  lblFiltro.Caption := 'Pesquisar por '+ Column.Title.Caption+':';
  filtro := tableName+Column.Field.FieldName;
  edtPesquisa.SetFocus;
end;

procedure TfrmBaseCRUD.DisableButton;
begin
  case FEstado of
    crudInsert:
    begin
      pnlAgrupaInserUpdDel.Visible := False;

      pnlAgrupaSaveCancelar.Visible := True;

    end;

    crudUpdate:
    begin
      pnlAgrupaInserUpdDel.Visible := False;

      pnlAgrupaSaveCancelar.Visible := True;

    end;

    crudDelete:
    begin
      pnlAgrupaInserUpdDel.Visible := True;

      pnlAgrupaSaveCancelar.Visible := False;

    end;

    crudCancel:
    begin
      pnlAgrupaInserUpdDel.Visible := True;

      pnlAgrupaSaveCancelar.Visible := False;


    end;

    crudSave:
    begin
      pnlAgrupaInserUpdDel.Visible := True;

      pnlAgrupaSaveCancelar.Visible := False;


    end;

  end;

end;

procedure TfrmBaseCRUD.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
  begin
    aSQL := filtro + ' LIKE ';
    aFiltro := edtPesquisa.Text + '%';

  end
  else
  begin
    aSQL := '';
    aFiltro := '';

  end;

end;

procedure TfrmBaseCRUD.edtPesquisaExit(Sender: TObject);
begin
  inherited;
  shpPesquisa.Pen.Color := $007A7A7A;

end;

procedure TfrmBaseCRUD.edtPesquisaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  shpPesquisa.Pen.Color := $00d77800;
end;

procedure TfrmBaseCRUD.edtPesquisaMouseEnter(Sender: TObject);
begin
  inherited;
  shpPesquisa.Pen.Color := clBlack;
end;

procedure TfrmBaseCRUD.edtPesquisaMouseLeave(Sender: TObject);
begin
  inherited;
  if not edtPesquisa.Focused then
    shpPesquisa.Pen.Color := $007A7A7A

end;

procedure TfrmBaseCRUD.FormCreate(Sender: TObject);
var
  arredondarPage : Integer;
begin

  inherited;

  FTipoCadastro := mrCadastroNormal;

  pageControlDados.ActivePage := pageControlDados.Pages[0];

  OcultarSheets(PageControl);
  OcultarSheets(pageControlDados);

//    if Screen.Width < 1366 then
//  begin
//
//    scaled := true;
//    if (screen.width <> ScreenWidth) then
//    begin
//      height := longint(height) * longint(screen.height) DIV ScreenHeight;
//      width := longint(width) * longint(screen.width) DIV ScreenWidth;
//      ScaleBy(screen.width, ScreenWidth);
//    end;
//
//    alterarResulacao;
//
//  end;

  MakeRounded(pnlInserir,10,10);
  MakeRounded(pnlUpdate,10,10);
  MakeRounded(pnlDelete,10,10);
  MakeRounded(pnlSave,10,10);
  MakeRounded(pnlCancel,10,10);
  MakeRounded(pnlBack,10,10);
  MakeRounded(pnlDadosPrincipal,10,10);

  arredondarPage := 15;

  MakeRounded(pnlFirstPage,arredondarPage,arredondarPage);
  MakeRounded(pnlSecondPage,arredondarPage,arredondarPage);
  MakeRounded(pnlPrior,arredondarPage,arredondarPage);
  MakeRounded(pnlNext,arredondarPage,arredondarPage);
  MakeRounded(pnlPenutimatePage,arredondarPage,arredondarPage);
  MakeRounded(pnlLastPage,arredondarPage,arredondarPage);
  MakeRounded(pnlCurrentPage,arredondarPage,arredondarPage);

  filtro := '';
  tableName := '';

  aRazao := 0;
  aFirst := 100;
  aSkip := 0;
  currentPage := 0;

  pnlPrior.Visible := False;

end;

procedure TfrmBaseCRUD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_escape then close;
  
end;

procedure TfrmBaseCRUD.FormShow(Sender: TObject);
begin
  inherited;

  lblNome.Caption := GetTitulo;
  FEstado := crudCancel;
  DisableButton;
  edtPesquisa.Clear;

  case FTipoCadastro of
    mrCadastroRapido:
      begin
        pnlInserirClick(Sender);
        pnlBack.Visible   := False;
        pnlCancel.Visible := False;
        pnlAgrupaSaveCancelar.Margins.Left := 0;
      end;
  end;

end;

function TfrmBaseCRUD.GetTitulo: String;
begin
  Result := 'Software de Gestão Empresarial - Vitrine | '+
    Copy(name, 4,length(name));
end;

procedure TfrmBaseCRUD.imgCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBaseCRUD.lastPage;
begin
  aRazao := aLastPage;
end;

procedure TfrmBaseCRUD.limparEditParentPanel(aPanel : TPanel);
var i : integer;
begin

  for i := 0 to aPanel.ControlCount-1 do  //  vai listar todos os componentes dentro do Panel
  begin
    if aPanel.Controls[i] is TEdit then
    begin
      TEdit(aPanel.Controls[i]).Text := '';
    end;

   end;
end;

procedure TfrmBaseCRUD.OcultarSheets(PageControl: TPageControl);
var
  iPage: Integer;
begin
  for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

  if ( PageControl.PageCount > 0 ) then
  PageControl.ActivePage := PageControl.Pages[0];

  PageControl.Style := tsButtons;

end;

procedure TfrmBaseCRUD.paginate;
begin
   aSkip := aFirst * aRazao;
   currentPage := aRazao + 1;
   pnlCurrentPage.Caption := IntToStr(currentPage);

   if currentPage = 1 then
     pnlPrior.Visible := False
   else
     pnlPrior.Visible := True;

   if (aLastPage + 1) = currentPage then
    pnlNext.Visible := False
   else
    pnlNext.Visible := True;

end;

procedure TfrmBaseCRUD.penultimatePage;
begin
  aRazao := aPenultimatePage;

end;

function TfrmBaseCRUD.pesquisarRegistro(aTable, aField, aFilter, aVariant: Variant): String;
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
      Add('SELECT ' + aField);
      Add('FROM ' + aTable);
      Add('WHERE ' + aFilter + ' = :'+aFilter );
      ParamByName(aFilter).Value := aVariant;
      Open;
    end;

    if aQuery.RecordCount > 0 then
    begin
      Result := aQuery.FieldByName(aField).AsString;
    end
    else
    begin
      Result := '';
    end;

  finally
    FreeAndNil(aQuery);
  end;

end;

procedure TfrmBaseCRUD.pnlBackClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBaseCRUD.pnlCancelClick(Sender: TObject);
begin
  inherited;
  FEstado := crudCancel;
  DisableButton;
  PageControl.ActivePage := PageControl.Pages[0];
  pageControlDados.ActivePage := pageControlDados.Pages[0];
end;

procedure TfrmBaseCRUD.pnlCloseMouseEnter(Sender: TObject);
var
  panel : TPanel;
begin
  inherited;
  if (Sender is TPanel) then
  begin
    (Sender as TPanel).Color := $003e41e3;

    if (Sender as TPanel).Tag = 0 then
      (Sender as TPanel).Cursor := crHandPoint;

  end
  else
  begin
    if (Sender is TImage) then
    begin
      panel := TPanel( (Sender as TImage).Parent);

      if (Sender as TImage).Tag = 0 then
        (Sender as TImage).Cursor := crHandPoint;

    end
    else if (Sender is TLabel) then
    begin
      panel := TPanel( (Sender as TLabel).Parent);

      if (Sender as TLabel).Tag = 0 then
        (Sender as TLabel).Cursor := crHandPoint;

    end;

    panel.Color := $003e41e3;

  end;
end;

procedure TfrmBaseCRUD.pnlCloseMouseLeave(Sender: TObject);
var
  panel : TPanel;
begin
  inherited;
  if (Sender is TPanel) then
    (Sender as TPanel).Color := $00F97000
  else
  begin
    if (Sender is TImage) then
    begin
      panel := TPanel( (Sender as TImage).Parent);

    end
    else if (Sender is TLabel) then
    begin
      panel := TPanel( (Sender as TLabel).Parent);

    end;

    panel.Color := $00F97000;

  end;
end;

procedure TfrmBaseCRUD.pnlDadosPrincipalClick(Sender: TObject);
begin
  inherited;
  pageControlDados.ActivePage := pageControlDados.Pages[0];
  alterarCorPanelSelecionado(Sender);
end;

procedure TfrmBaseCRUD.pnlDeleteClick(Sender: TObject);
begin
  inherited;
  FEstado := crudDelete;
  DisableButton;
end;

procedure TfrmBaseCRUD.pnlFirstPageClick(Sender: TObject);
begin
  inherited;
  firstPage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlInserirClick(Sender: TObject);
begin
  inherited;
  limparEditParentPanel(pnlDados);
  FEstado := crudInsert;
  DisableButton;
  PageControl.ActivePage := PageControl.Pages[1];

end;

procedure TfrmBaseCRUD.pnlInserirMouseEnter(Sender: TObject);
var
  panel : TPanel;
begin
  inherited;

  if (Sender is TPanel) then
  begin
    (Sender as TPanel).Color := EscureceCor((Sender as TPanel).Color, 60);

    if (Sender as TPanel).Tag = 0 then
      (Sender as TPanel).Cursor := crHandPoint;

  end
  else
  begin
    if (Sender is TImage) then
    begin
      panel := TPanel( (Sender as TImage).Parent);

      if (Sender as TImage).Tag = 0 then
        (Sender as TImage).Cursor := crHandPoint;

    end
    else if (Sender is TLabel) then
    begin
      panel := TPanel( (Sender as TLabel).Parent);

      if (Sender as TLabel).Tag = 0 then
        (Sender as TLabel).Cursor := crHandPoint;

    end;

    panel.Color := EscureceCor(panel.Color, 60)

  end;

end;

procedure TfrmBaseCRUD.pnlInserirMouseLeave(Sender: TObject);
var
  panel : TPanel;
begin
  inherited;
  if (Sender is TPanel) then
    (Sender as TPanel).Color := ClareiaCor((Sender as TPanel).Color, 60)
  else
  begin
    if (Sender is TImage) then
    begin
      panel := TPanel( (Sender as TImage).Parent);

    end
    else if (Sender is TLabel) then
    begin
      panel := TPanel( (Sender as TLabel).Parent);

    end;

    panel.Color := ClareiaCor(panel.Color, 60)

  end;
end;

procedure TfrmBaseCRUD.pnlLastPageClick(Sender: TObject);
begin
  inherited;
  lastPage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlNextClick(Sender: TObject);
begin
  inherited;
  nextPage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlPenutimatePageClick(Sender: TObject);
begin
  inherited;
  penultimatePage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlPriorClick(Sender: TObject);
begin
  inherited;
  priorPage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlSaveClick(Sender: TObject);
begin
  inherited;
  FEstado := crudSave;
  DisableButton;
  PageControl.ActivePage := PageControl.Pages[0];
  pageControlDados.ActivePage := pageControlDados.Pages[0];
end;

procedure TfrmBaseCRUD.pnlSecondPageClick(Sender: TObject);
begin
  inherited;
  secondePage;
  paginate;
end;

procedure TfrmBaseCRUD.pnlUpdateClick(Sender: TObject);
begin
  inherited;
  FEstado := crudUpdate;
  DisableButton;
  PageControl.ActivePage := PageControl.Pages[1];

  PreencherCampos(DBGrid);
end;

function TfrmBaseCRUD.ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Min(GetRValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetGValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetBValue(ColorToRGB(BaseColor)) + Adjust, 255));
end;

function TfrmBaseCRUD.EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Max(GetRValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetGValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetBValue(ColorToRGB(BaseColor)) - Adjust, 0));
end;

procedure TfrmBaseCRUD.firstPage;
begin
  aRazao := 0;
end;

function TfrmBaseCRUD.formatarEdit(aValue: String;
  aMaskFormat: TFormat): String;
begin
  case aMaskFormat of
    mrSmallInt: Result := FormatFloat('000', StrToFloat(aValue));
    mrInteger:  Result := FormatFloat('000000', StrToFloat(aValue));
    mrCurrency: Result := FormatFloat('#,###,##0.00', StrToFloat(aValue));
  end;
end;

function TfrmBaseCRUD.Min(X, Y: Integer): Integer;
begin
   if X < Y then
      Result := X
   else
      Result := Y;
end;

procedure TfrmBaseCRUD.nextPage;
begin
  aRazao := aRazao + 1;
end;

function TfrmBaseCRUD.Max(X, Y: Integer): Integer;
begin
   if X > Y then
      Result := X
   else
      Result := Y;
end;

procedure TfrmBaseCRUD.MakeRounded(Control: TWinControl; aLargura, aAltura : Integer);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, aLargura, aAltura);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;


end.
