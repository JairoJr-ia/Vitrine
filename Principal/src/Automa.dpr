program Automa;

uses
  Vcl.Forms,
  Automa.View.Principal in 'View\Automa.View.Principal.pas' {frmPrincipal},
  Automa.View.Dialogs in 'View\Dialogs\Automa.View.Dialogs.pas' {frmDialogs},
  Automa.View.Produto in 'View\Produto\Automa.View.Produto.pas' {frmProdutos},
  Automa.View.Pesquisa.Grupo in 'View\Grupo\Pesquisa\Automa.View.Pesquisa.Grupo.pas' {frmPesquisaGrupo},
  Automa.View.Pesquisa.Marca in 'View\Marca\Pesquisa\Automa.View.Pesquisa.Marca.pas' {frmPesquisaMarca},
  Automa.View.Pesquisa.Unidade in 'View\Unidade\Pesquisa\Automa.View.Pesquisa.Unidade.pas' {frmPesquisaUnidade},
  Automa.View.Pesquisa.SituacaoTributaria in 'View\SituacaoTributaria\Pesquisa\Automa.View.Pesquisa.SituacaoTributaria.pas' {frmPesquisaTributo},
  Automa.View.Marca in 'View\Marca\Automa.View.Marca.pas' {frmMarca},
  Automa.View.Grupo in 'View\Grupo\Automa.View.Grupo.pas' {frmGrupo},
  Automa.View.Unidade in 'View\Unidade\Automa.View.Unidade.pas' {frmUnidade},
  Automa.View.Tributo in 'View\SituacaoTributaria\Automa.View.Tributo.pas' {frmTributo},
  Automa.View.TransparentDialog in 'View\Dialogs\Automa.View.TransparentDialog.pas' {frmTransparentDialog},
  Automa.View.TransparentForm in 'View\Transparente Form\Automa.View.TransparentForm.pas' {frmTransparentForm},
  View.Base in 'View\Base\View.Base.pas' {frmBase},
  View.BaseCRUD in 'View\Base\View.BaseCRUD.pas' {frmBaseCRUD},
  View.BasePESQUISA in 'View\Base\View.BasePESQUISA.pas' {frmBasePesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmBaseCRUD, frmBaseCRUD);
  Application.CreateForm(TfrmBasePesquisa, frmBasePesquisa);
  Application.Run;
end.
