unit Vitrine.Controller.GRUPO;
 
interface
 
uses
  Vitrine.Controller.GRUPO.Interfaces,Data.DB,
  Entidade.GRUPO, Vitrine.Model.GRUPO.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerGRUPO = class(TInterfacedObject, iControllerGRUPO)
    private
      FModel : iModelGRUPO;
      FDataSource : TDataSource;
      FList : TObjectList<TGRUPO>;
      FEntidade : TGRUPO;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerGRUPO;
      function DataSource(aDataSource : TDataSource) : iControllerGRUPO;
      function Buscar : iControllerGRUPO; overload;
      function Buscar(aID : Integer) : iControllerGRUPO; overload;
      function Buscar(aNome : String) : iControllerGRUPO; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerGRUPO;
      function Update : iControllerGRUPO;
      function Delete : iControllerGRUPO;
      function Entidade : TGRUPO;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerGRUPO }
 
function TControllerGRUPO.Buscar: iControllerGRUPO;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerGRUPO.Buscar(aID: Integer): iControllerGRUPO;
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
 
function TControllerGRUPO.Buscar(aNome: String): iControllerGRUPO;
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
 
function TControllerGRUPO.BuscarUltControle: Integer;
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
 
constructor TControllerGRUPO.Create;
begin
  FModel := TModel.New.GRUPO;
 
end;
 
 procedure TControllerGRUPO.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerGRUPO.DataSource(
  aDataSource: TDataSource): iControllerGRUPO;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerGRUPO.Delete: iControllerGRUPO;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerGRUPO.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerGRUPO.Entidade: TGRUPO;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerGRUPO.Insert: iControllerGRUPO;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerGRUPO.New  : iControllerGRUPO;
begin
  Result := Self.Create;
 
end;
 
function TControllerGRUPO.Update: iControllerGRUPO;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
