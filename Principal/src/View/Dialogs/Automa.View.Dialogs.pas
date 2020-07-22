unit Automa.View.Dialogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  EConfirm = (mrNao, MrSim);
  TTypeDialog = (mrInfo, mrDang, mrWarn, mrSucc, mrInfoAsk);

  TfrmDialogs = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    lblTitulo: TLabel;
    Panel2: TPanel;
    Shape3: TShape;
    pnlClose: TPanel;
    pnlInfo: TPanel;
    pnlCloseLabel: TPanel;
    lblClose: TLabel;
    Panel5: TPanel;
    lblMsg: TLabel;
    pnlImgClose: TPanel;
    Image1: TImage;
    imgIcon: TImage;
    pnlInfoLabel: TPanel;
    lblConfirmation: TLabel;
    procedure shpCloseContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure lblCloseClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblConfirmationClick(Sender: TObject);
    procedure pnlCloseLabelMouseEnter(Sender: TObject);
    procedure pnlCloseLabelMouseLeave(Sender: TObject);
    procedure pnlInfoLabelMouseEnter(Sender: TObject);
    procedure pnlInfoLabelMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    path : String;
    function ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
    function EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
    function Max(X, Y: Integer): Integer;
    function Min(X, Y: Integer): Integer;
    procedure MakeRounded(Control: TWinControl);
  public
    { Public declarations }
    Confirmation : EConfirm;
    TypeDialog : TTypeDialog;

  end;

var
  frmDialogs: TfrmDialogs;

implementation

{$R *.dfm}

procedure TfrmDialogs.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDialogs.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image1.Cursor := crHandPoint;
end;

procedure TfrmDialogs.lblConfirmationClick(Sender: TObject);
begin
  Confirmation := MrSim;
  Close;
end;

procedure TfrmDialogs.lblCloseClick(Sender: TObject);
begin
  Confirmation := mrNao;
  Close;
end;

procedure TfrmDialogs.shpCloseContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Close;
end;

function TfrmDialogs.ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Min(GetRValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetGValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetBValue(ColorToRGB(BaseColor)) + Adjust, 255));
end;

function TfrmDialogs.EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Max(GetRValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetGValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetBValue(ColorToRGB(BaseColor)) - Adjust, 0));
end;

procedure TfrmDialogs.FormCreate(Sender: TObject);
var
  region : hrgn;
begin
  path := ExtractFilePath(Application.ExeName)+'\Icons\';

  region:= CreateRoundRectRgn(0, 0, width, height, 50, 50);
  setwindowrgn(handle, region, true);

  MakeRounded(pnlCloseLabel);
  MakeRounded(pnlInfoLabel);

  MakeRounded(pnlClose);
  MakeRounded(pnlInfo);

end;

procedure TfrmDialogs.FormShow(Sender: TObject);
var
  I : Integer;
begin

  case TypeDialog of
    mrInfo:
    begin
      imgIcon.Picture.LoadFromFile(path+'information.png');
      pnlClose.Visible := False;
      pnlInfo.Visible  := True;

    end;

    mrInfoAsk:
    begin
      imgIcon.Picture.LoadFromFile(path+'information.png');
      pnlClose.Visible := True;
      pnlInfo.Visible  := True;

      pnlImgClose.Visible := False;

    end;


    mrDang:
    begin
      imgIcon.Picture.LoadFromFile(path+'danger-alternative.png');
      pnlClose.Visible := True;
      pnlInfo.Visible  := True;

    end;

    mrWarn:
    begin
      imgIcon.Picture.LoadFromFile(path+'warning.png');
      pnlClose.Visible := False;
      pnlInfo.Visible  := True;

    end;

    mrSucc:
    begin
      imgIcon.Picture.LoadFromFile(path+'success.png');
      pnlClose.Visible := False;
      pnlInfo.Visible  := True;
    end;

  end;

end;

function TfrmDialogs.Min(X, Y: Integer): Integer;
begin
   if X < Y then
      Result := X
   else
      Result := Y;
end;

procedure TfrmDialogs.pnlCloseLabelMouseEnter(Sender: TObject);
begin
  pnlCloseLabel.Color := EscureceCor(pnlCloseLabel.Color, 60)
end;

procedure TfrmDialogs.pnlCloseLabelMouseLeave(Sender: TObject);
begin
  pnlCloseLabel.Color := ClareiaCor(pnlCloseLabel.Color, 60)
end;

procedure TfrmDialogs.pnlInfoLabelMouseEnter(Sender: TObject);
begin
  pnlInfoLabel.Color := EscureceCor(pnlInfoLabel.Color, 60);

end;

procedure TfrmDialogs.pnlInfoLabelMouseLeave(Sender: TObject);
begin
  pnlInfoLabel.Color := ClareiaCor(pnlInfoLabel.Color, 60);

end;

function TfrmDialogs.Max(X, Y: Integer): Integer;
begin
   if X > Y then
      Result := X
   else
      Result := Y;
end;

procedure TfrmDialogs.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

end.

