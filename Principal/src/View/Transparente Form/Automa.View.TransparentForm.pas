unit Automa.View.TransparentForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Automa.View.Dialogs, Automa.View.Marca, View.BaseCRUD,
  Automa.View.Grupo, Automa.View.Unidade, Automa.View.Tributo,
  Automa.View.Pesquisa.Marca, Automa.View.Pesquisa.Grupo,
  Automa.View.Pesquisa.SituacaoTributaria, Automa.View.Pesquisa.Unidade;

type
  TFormCadastro = (mrMarca, MrGrupo, mrUnidade, mrTributo,
  mrPesqMarca, MrPesqGrupo, mrPesqUnidade, mrPesqTributo);

  TfrmTransparentForm = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure showMarca;
    procedure showGrupo;
    procedure showTributo;
    procedure showUnidade;
    procedure showPesquisaMarca;
    procedure showPesquisaGrupo;
    procedure showPesquisaUnidade;
    procedure showPesquisaTributo;
  public
    { Public declarations }
    TTypeCadastro : TFormCadastro;
    aTitle, aMsg, aTitleLabelConfirmation, nome, codigo : String;
  end;

var
  frmTransparentForm: TfrmTransparentForm;

implementation

{$R *.dfm}

procedure TfrmTransparentForm.showGrupo;
var
  ViewGrupo   : TfrmGrupo;
begin
  try
    ViewGrupo := TfrmGrupo.Create(Self);

    ViewGrupo.FTipoCadastro := mrCadastroRapido;

    ViewGrupo.ShowModal;

  finally
    FreeAndNil(ViewGrupo);
  end;
end;

procedure TfrmTransparentForm.showMarca;
var
  ViewMarca   : TfrmMarca;
begin
  try
    ViewMarca := TfrmMarca.Create(Self);

    ViewMarca.FTipoCadastro := mrCadastroRapido;

    ViewMarca.ShowModal;

  finally
    FreeAndNil(ViewMarca);
  end;
end;

procedure TfrmTransparentForm.showPesquisaMarca;
var
  ViewPesMarca : TfrmPesquisaMarca;
begin
  try
    ViewPesMarca := TfrmPesquisaMarca.Create(Self);

    if ViewPesMarca.ShowModal = mrOK then
    begin
      nome := ViewPesMarca.qryPesquisa.FieldByName('NOME').AsString;
      codigo := FormatFloat('000000', ViewPesMarca.qryPesquisa.FieldByName('CODIGO').AsCurrency);

    end;

  finally

    FreeAndNil(ViewPesMarca);
  end;
end;

procedure TfrmTransparentForm.showPesquisaGrupo;
var
  ViewPesGrupo : TfrmPesquisaGrupo;
begin
  try
    ViewPesGrupo := TfrmPesquisaGrupo.Create(Self);

    if ViewPesGrupo.ShowModal = mrOK then
    begin
      nome := ViewPesGrupo.qryPesquisa.FieldByName('NOME').AsString;
      codigo := FormatFloat('000000', ViewPesGrupo.qryPesquisa.FieldByName('CODIGO').AsCurrency);

    end;

  finally

    FreeAndNil(ViewPesGrupo);
  end;
end;

procedure TfrmTransparentForm.showPesquisaUnidade;
var
  ViewPesUnidade : TfrmPesquisaUnidade;
begin
  try
    ViewPesUnidade := TfrmPesquisaUnidade.Create(Self);

    if ViewPesUnidade.ShowModal = mrOK then
    begin
      nome := ViewPesUnidade.qryPesquisa.FieldByName('NOME').AsString;
      codigo := FormatFloat('000000', ViewPesUnidade.qryPesquisa.FieldByName('CODIGO').AsCurrency);

    end;

  finally

    FreeAndNil(ViewPesUnidade);
  end;
end;

procedure TfrmTransparentForm.showPesquisaTributo;
var
  ViewPesTributo : TfrmPesquisaTributo;
begin
  try
    ViewPesTributo := TfrmPesquisaTributo.Create(Self);

    if ViewPesTributo.ShowModal = mrOK then
    begin
      nome := ViewPesTributo.qryPesquisa.FieldByName('NOME').AsString;
      codigo := FormatFloat('000000', ViewPesTributo.qryPesquisa.FieldByName('CODIGO').AsCurrency);

    end;

  finally

    FreeAndNil(ViewPesTributo);
  end;
end;

procedure TfrmTransparentForm.showTributo;
var
  ViewTributo : TfrmTributo;
begin
  try
    ViewTributo := TfrmTributo.Create(Self);

    ViewTributo.FTipoCadastro := mrCadastroRapido;

    ViewTributo.ShowModal;

  finally
    FreeAndNil(ViewTributo);
  end;
end;

procedure TfrmTransparentForm.showUnidade;
var
  ViewUnidade : TfrmUnidade;
begin
  try
    ViewUnidade := TfrmUnidade.Create(Self);

    ViewUnidade.FTipoCadastro := mrCadastroRapido;

    ViewUnidade.ShowModal;

  finally
    FreeAndNil(ViewUnidade);
  end;
end;

procedure TfrmTransparentForm.Timer1Timer(Sender: TObject);
var
  contagem    : integer;
begin
  contagem := 1;
  while (contagem <> 0) do
  begin
     Contagem := Contagem - 1;
  end;

  if Contagem = 0 then
  begin
    Timer1.Enabled := False;

    case TTypeCadastro of
      mrMarca:
        begin
          showMarca;
        end;

      MrGrupo:
        begin
          showGrupo;
        end;

      mrUnidade:
        begin
          showUnidade;
        end;

      mrTributo:
        begin
          showTributo;
        end;

      mrPesqMarca:
        begin
          showPesquisaMarca;
        end;

      mrPesqGrupo:
        begin
          showPesquisaGrupo;
        end;

      mrPesqUnidade:
        begin
          showPesquisaUnidade;
        end;

      mrPesqTributo:
        begin
          showPesquisaTributo;
        end;

    end;

    Close;

  end;

end;

end.

