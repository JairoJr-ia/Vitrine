unit Vitrine.Controller.UNIDADE;
 
interface
 
uses
  Vitrine.Controller.UNIDADE.Interfaces,Data.DB,
  Entidade.UNIDADE, Vitrine.Model.UNIDADE.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerUNIDADE = class(TInterfacedObject, iControllerUNIDADE)
    private
      FModel : iModelUNIDADE;
      FDataSource : TDataSource;
      FList : TObjectList<TUNIDADE>;
      FEntidade : TUNIDADE;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerUNIDADE;
      function DataSource(aDataSource : TDataSource) : iControllerUNIDADE;
      function Buscar : iControllerUNIDADE; overload;
      function Buscar(aID : Integer) : iControllerUNIDADE; overload;
      function Buscar(aNome : String) : iControllerUNIDADE; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerUNIDADE;
      function Update : iControllerUNIDADE;
      function Delete : iControllerUNIDADE;
      function Entidade : TUNIDADE;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerUNIDADE }
 
function TControllerUNIDADE.Buscar: iControllerUNIDADE;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerUNIDADE.Buscar(aID: Integer): iControllerUNIDADE;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
 
{  FList := FModel.DAO
             .SQL
               .Where('COD_BARRAS = ' + IntToStr(aID))
 
             .&End
           .Find;         }
 
  FDataSource.DataSet.RecordCount;
  FDataSource.DataSet.EnableControls;
 
 
end;
 
function TControllerUNIDADE.Buscar(aNome: String): iControllerUNIDADE;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
{  FList := FModel.DAO
            .SQL
              .Where('COD_BARRAS = ' + QuotedStr(aNome)
               )
             .&End
           .Find; }
  FDataSource.DataSet.EnableControls;
 
end;
 
function TControllerUNIDADE.BuscarUltControle: Integer;
begin
  if Assigned(FList) then
    FList.Free;
 
 
  FDataSource.DataSet.DisableControls;
{  FList := FModel.DAO
            .SQL
               .Fields('MAX(cod_barras) AS cod_barras')
             .&End
           .Find; }
 
  Result := FDataSource.DataSet.FieldByName('COD_BARRAS').AsInteger;
 
  FDataSource.DataSet.EnableControls;
 
end;
 
constructor TControllerUNIDADE.Create;
begin
  FModel := TModel.New.UNIDADE;
 
end;
 
 procedure TControllerUNIDADE.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerUNIDADE.DataSource(
  aDataSource: TDataSource): iControllerUNIDADE;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerUNIDADE.Delete: iControllerUNIDADE;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerUNIDADE.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerUNIDADE.Entidade: TUNIDADE;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerUNIDADE.Insert: iControllerUNIDADE;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerUNIDADE.New  : iControllerUNIDADE;
begin
  Result := Self.Create;
 
end;
 
function TControllerUNIDADE.Update: iControllerUNIDADE;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
