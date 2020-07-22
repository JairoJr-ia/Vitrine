unit Vitrine.Controller.MARCA;
 
interface
 
uses
  Vitrine.Controller.MARCA.Interfaces,Data.DB,
  Entidade.MARCA, Vitrine.Model.MARCA.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerMARCA = class(TInterfacedObject, iControllerMARCA)
    private
      FModel : iModelMARCA;
      FDataSource : TDataSource;
      FList : TObjectList<TMARCA>;
      FEntidade : TMARCA;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerMARCA;
      function DataSource(aDataSource : TDataSource) : iControllerMARCA;
      function Buscar : iControllerMARCA; overload;
      function Buscar(aID : Integer) : iControllerMARCA; overload;
      function Buscar(aNome : String) : iControllerMARCA; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerMARCA;
      function Update : iControllerMARCA;
      function Delete : iControllerMARCA;
      function Entidade : TMARCA;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerMARCA }
 
function TControllerMARCA.Buscar: iControllerMARCA;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerMARCA.Buscar(aID: Integer): iControllerMARCA;
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
 
function TControllerMARCA.Buscar(aNome: String): iControllerMARCA;
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
 
function TControllerMARCA.BuscarUltControle: Integer;
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
 
constructor TControllerMARCA.Create;
begin
  FModel := TModel.New.MARCA;
 
end;
 
 procedure TControllerMARCA.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerMARCA.DataSource(
  aDataSource: TDataSource): iControllerMARCA;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerMARCA.Delete: iControllerMARCA;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerMARCA.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerMARCA.Entidade: TMARCA;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerMARCA.Insert: iControllerMARCA;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerMARCA.New  : iControllerMARCA;
begin
  Result := Self.Create;
 
end;
 
function TControllerMARCA.Update: iControllerMARCA;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
