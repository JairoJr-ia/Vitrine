unit Vitrine.Controller.TRIBUTO;
 
interface
 
uses
  Vitrine.Controller.TRIBUTO.Interfaces,Data.DB,
  Entidade.TRIBUTO, Vitrine.Model.TRIBUTO.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerTRIBUTO = class(TInterfacedObject, iControllerTRIBUTO)
    private
      FModel : iModelTRIBUTO;
      FDataSource : TDataSource;
      FList : TObjectList<TTRIBUTO>;
      FEntidade : TTRIBUTO;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerTRIBUTO;
      function DataSource(aDataSource : TDataSource) : iControllerTRIBUTO;
      function Buscar : iControllerTRIBUTO; overload;
      function Buscar(aID : Integer) : iControllerTRIBUTO; overload;
      function Buscar(aNome : String) : iControllerTRIBUTO; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerTRIBUTO;
      function Update : iControllerTRIBUTO;
      function Delete : iControllerTRIBUTO;
      function Entidade : TTRIBUTO;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerTRIBUTO }
 
function TControllerTRIBUTO.Buscar: iControllerTRIBUTO;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerTRIBUTO.Buscar(aID: Integer): iControllerTRIBUTO;
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
 
function TControllerTRIBUTO.Buscar(aNome: String): iControllerTRIBUTO;
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
 
function TControllerTRIBUTO.BuscarUltControle: Integer;
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
 
constructor TControllerTRIBUTO.Create;
begin
  FModel := TModel.New.TRIBUTO;
 
end;
 
 procedure TControllerTRIBUTO.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerTRIBUTO.DataSource(
  aDataSource: TDataSource): iControllerTRIBUTO;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerTRIBUTO.Delete: iControllerTRIBUTO;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerTRIBUTO.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerTRIBUTO.Entidade: TTRIBUTO;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerTRIBUTO.Insert: iControllerTRIBUTO;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerTRIBUTO.New  : iControllerTRIBUTO;
begin
  Result := Self.Create;
 
end;
 
function TControllerTRIBUTO.Update: iControllerTRIBUTO;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
