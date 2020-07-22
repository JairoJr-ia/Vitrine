unit Vitrine.Controller.USERS;
 
interface
 
uses
  Vitrine.Controller.USERS.Interfaces,Data.DB,
  Entidade.USERS, Vitrine.Model.USERS.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerUSERS = class(TInterfacedObject, iControllerUSERS)
    private
      FModel : iModelUSERS;
      FDataSource : TDataSource;
      FList : TObjectList<TUSERS>;
      FEntidade : TUSERS;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerUSERS;
      function DataSource(aDataSource : TDataSource) : iControllerUSERS;
      function Buscar : iControllerUSERS; overload;
      function Buscar(aID : Integer) : iControllerUSERS; overload;
      function Buscar(aNome : String) : iControllerUSERS; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerUSERS;
      function Update : iControllerUSERS;
      function Delete : iControllerUSERS;
      function Entidade : TUSERS;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerUSERS }
 
function TControllerUSERS.Buscar: iControllerUSERS;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerUSERS.Buscar(aID: Integer): iControllerUSERS;
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
 
function TControllerUSERS.Buscar(aNome: String): iControllerUSERS;
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
 
function TControllerUSERS.BuscarUltControle: Integer;
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
 
constructor TControllerUSERS.Create;
begin
  FModel := TModel.New.USERS;
 
end;
 
 procedure TControllerUSERS.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerUSERS.DataSource(
  aDataSource: TDataSource): iControllerUSERS;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerUSERS.Delete: iControllerUSERS;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerUSERS.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerUSERS.Entidade: TUSERS;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerUSERS.Insert: iControllerUSERS;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerUSERS.New  : iControllerUSERS;
begin
  Result := Self.Create;
 
end;
 
function TControllerUSERS.Update: iControllerUSERS;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
