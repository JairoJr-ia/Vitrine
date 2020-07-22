unit Automa.View.TransparentDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Automa.View.Dialogs;

type
  EConfirm = (mrNo, MrYes);
  TTypeDialog = (mrInformation, mrDanger, mrWarning, mrSuccess, mrInformationAsk);

  TfrmTransparentDialog = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Confirmation : EConfirm;
    TypeDialog : TTypeDialog;
    aTitle, aMsg, aTitleLabelConfirmation, aTitleLabelClose : String;
  end;

var
  frmTransparentDialog: TfrmTransparentDialog;

implementation

{$R *.dfm}

procedure TfrmTransparentDialog.Timer1Timer(Sender: TObject);
var contagem : integer;
  ViewDialog : TfrmDialogs;
begin
   contagem := 1;
   while (contagem <> 0) do
    begin
       Contagem := Contagem - 1;
    end;
   if Contagem = 0 then
    Begin
       Timer1.Enabled := False;
        try
          ViewDialog := TfrmDialogs.Create(Self);

          case TypeDialog of
            mrInformation: ViewDialog.TypeDialog    := mrInfo;
            mrDanger : ViewDialog.TypeDialog        := mrDang;
            mrWarning: ViewDialog.TypeDialog        := mrWarn;
            mrSuccess: ViewDialog.TypeDialog        := mrSucc;

            mrInformationAsk:
            begin
              ViewDialog.TypeDialog := mrInfoAsk;

            end;
          end;

          ViewDialog.lblTitulo.Caption       := aTitle;
          ViewDialog.lblMsg.Caption          := aMsg;
          ViewDialog.lblConfirmation.Caption := aTitleLabelConfirmation;

          if aTitleLabelClose <> '' then
            ViewDialog.lblClose.Caption        := aTitleLabelClose
          else
            ViewDialog.lblClose.Caption        := 'Fechar';

          ViewDialog.ShowModal;

          if ViewDialog.Confirmation = MrSim then
            Confirmation := MrYes;

        finally
          FreeAndNil(ViewDialog);
        end;

        Close;

    end;

end;

end.
