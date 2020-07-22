unit View.BasePESQUISA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,uConnection, Vcl.Imaging.pngimage;

type
  TfrmBasePesquisa = class(TfrmBase)
    DSFind: TDataSource;
    qryPesquisa: TFDQuery;
    pnl1: TPanel;
    lblNome: TLabel;
    Panel4: TPanel;
    DBGrid: TDBGrid;
    Panel6: TPanel;
    shpPesquisa: TShape;
    edtPesquisa: TEdit;
    pnlImg: TPanel;
    Image7: TImage;
    Panel8: TPanel;
    lblFiltro: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTitleClick(Column: TColumn);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel1MouseLeave(Sender: TObject);
  private
    function ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
    function EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
    function Max(X, Y: Integer): Integer;
    function Min(X, Y: Integer): Integer;
    procedure MakeRounded(Control: TWinControl; aLargura, aAltura: Integer);
    { Private declarations }
  protected
    filtro, aSQL,tableName, aField : String;
    function GetTitulo : String; virtual;
    procedure filtrarRegistros(aVariant : Variant);
  public
    { Public declarations }
  end;

var
  frmBasePesquisa: TfrmBasePesquisa;

implementation

{$R *.dfm}

{ TfrmBasePesquisa }

procedure TfrmBasePesquisa.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TfrmBasePesquisa.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  lblFiltro.Caption := 'Pesquisar por '+ Column.Title.Caption+':';
  filtro := tableName+'.'+Column.Field.FieldName;
  aField := Column.Field.FieldName;
  edtPesquisa.SetFocus;
end;

procedure TfrmBasePesquisa.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if edtPesquisa.Text <> '' then
    filtrarRegistros(edtPesquisa.Text)
  else
  begin
    if tableName <> '' then
      filtrarRegistros('')

  end;
end;

procedure TfrmBasePesquisa.filtrarRegistros(aVariant: Variant);
begin
  if aVariant <> '' then
  begin
    aSQL :=        ' SELECT ' + tableName + '.* ';
    aSQL := aSQL + ' FROM '   + tableName;
    aSQL := aSQL + ' WHERE '  + filtro + ' LIKE :' +aField;
    aSQL := aSQL + ' ORDER BY ' + tableName + '.CODIGO';

    qryPesquisa.Connection := TConnection.GetInstance;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add(aSQL);
    qryPesquisa.ParamByName(aField).AsString := aVariant+'%';
    qryPesquisa.Active := False;
    qryPesquisa.Active := True;

  end
  else
  begin
    aSQL :=        ' SELECT ' + tableName + '.* ';
    aSQL := aSQL + ' FROM '   + tableName;
    aSQL := aSQL + ' ORDER BY ' + tableName + '.CODIGO';

    qryPesquisa.Connection := TConnection.GetInstance;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Add(aSQL);
    qryPesquisa.Active := False;
    qryPesquisa.Active := True;

  end;

end;

procedure TfrmBasePesquisa.FormCreate(Sender: TObject);
var
  region : hrgn;
begin
  inherited;
  region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
  setwindowrgn(handle, region, true);
//  MakeRounded(pnlBack, 10, 10);
  edtPesquisa.Text := '';
  Caption := '';
end;

procedure TfrmBasePesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if qryPesquisa.recordCount <> 0 then
  begin
    if key = vk_up     then qryPesquisa.Prior;
    if key = vk_down   then qryPesquisa.Next;
    if key = vk_home   then qryPesquisa.first;
    if key = vk_end    then qryPesquisa.last;
    if key = vk_prior  then qryPesquisa.MoveBy(-15);
    if key = vk_next   then qryPesquisa.MoveBy(15);
    if key = vk_escape then close;
    
  end;

  if (key = VK_Return) and
     (qryPesquisa.Active) and
     (qryPesquisa.recordcount <> 0) then ModalResult := mrOk;


end;

procedure TfrmBasePesquisa.FormShow(Sender: TObject);
begin
  inherited;
  lblNome.Caption := GetTitulo;
  edtPesquisa.SetFocus;
end;

function TfrmBasePesquisa.GetTitulo: String;
begin
  Result := 'Software ERP | Pesquisa '+
    Copy(name, 12,length(name));
end;

procedure TfrmBasePesquisa.Image1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBasePesquisa.MakeRounded(Control: TWinControl; aLargura, aAltura : Integer);
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

function TfrmBasePesquisa.ClareiaCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Min(GetRValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetGValue(ColorToRGB(BaseColor)) + Adjust, 255),
      Min(GetBValue(ColorToRGB(BaseColor)) + Adjust, 255));
end;

function TfrmBasePesquisa.EscureceCor(BaseColor: TColor; Adjust: Integer): TColor;
begin
   Result := RGB(Max(GetRValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetGValue(ColorToRGB(BaseColor)) - Adjust, 0),
      Max(GetBValue(ColorToRGB(BaseColor)) - Adjust, 0));
end;

function TfrmBasePesquisa.Min(X, Y: Integer): Integer;
begin
   if X < Y then
      Result := X
   else
      Result := Y;
end;

procedure TfrmBasePesquisa.Panel1MouseEnter(Sender: TObject);
var
  panel : TPanel;
begin
  inherited;
  if (Sender is TPanel) then
  begin
    (Sender as TPanel).Color := EscureceCor((Sender as TPanel).Color, 60);

  end
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

    panel.Color := EscureceCor(panel.Color, 60)

  end;

end;

procedure TfrmBasePesquisa.Panel1MouseLeave(Sender: TObject);
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

function TfrmBasePesquisa.Max(X, Y: Integer): Integer;
begin
   if X > Y then
      Result := X
   else
      Result := Y;
end;

end.
