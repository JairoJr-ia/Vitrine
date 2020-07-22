unit Vitrine.Controller.PRODUTOS;
 
interface
 
uses
  Vitrine.Controller.PRODUTOS.Interfaces,Data.DB,
  Entidade.PRODUTOS, Vitrine.Model.PRODUTOS.Interfaces,
  Vitrine.Model,
  System.Generics.Collections;
 
Type
  TControllerPRODUTOS = class(TInterfacedObject, iControllerPRODUTOS)
    private
      FModel : iModelPRODUTOS;
      FDataSource : TDataSource;
      FList : TObjectList<TPRODUTOS>;
      FEntidade : TPRODUTOS;
      procedure DataChange(Sender : TObject; Field : TField);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerPRODUTOS;
      function DataSource(aDataSource : TDataSource) : iControllerPRODUTOS;
      function Buscar : iControllerPRODUTOS; overload;
      function Buscar(aID : Integer) : iControllerPRODUTOS; overload;
      function Buscar(aNome : String) : iControllerPRODUTOS; overload;
      function BuscarUltControle : Integer;
      function Insert : iControllerPRODUTOS;
      function Update : iControllerPRODUTOS;
      function Delete : iControllerPRODUTOS;
      function Entidade : TPRODUTOS;
  end;
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerPRODUTOS }
 
function TControllerPRODUTOS.Buscar: iControllerPRODUTOS;
begin
  Result := Self;
 
  if Assigned(FList) then
    FList.Free;
 
  FDataSource.DataSet.DisableControls;
  //FList := FModel.DAO.Find;
  FDataSource.DataSet.EnableControls;
end;
 
function TControllerPRODUTOS.Buscar(aID: Integer): iControllerPRODUTOS;
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
 
function TControllerPRODUTOS.Buscar(aNome: String): iControllerPRODUTOS;
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
 
function TControllerPRODUTOS.BuscarUltControle: Integer;
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
 
constructor TControllerPRODUTOS.Create;
begin
  FModel := TModel.New.PRODUTOS;
 
end;
 
 procedure TControllerPRODUTOS.DataChange(Sender: TObject; Field: TField);
begin
 
end;
 
function TControllerPRODUTOS.DataSource(
  aDataSource: TDataSource): iControllerPRODUTOS;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
  FDataSource.OnDataChange := DataChange;
end;
 
function TControllerPRODUTOS.Delete: iControllerPRODUTOS;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;
 
destructor TControllerPRODUTOS.Destroy;
begin
  if Assigned(FList) then
    FList.Free;
 
  inherited;
end;
 
function TControllerPRODUTOS.Entidade: TPRODUTOS;
begin
  Result := FModel.Entidade;
 
end;
 
function TControllerPRODUTOS.Insert: iControllerPRODUTOS;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
 
end;
 
class function TControllerPRODUTOS.New  : iControllerPRODUTOS;
begin
  Result := Self.Create;
 
end;
 
function TControllerPRODUTOS.Update: iControllerPRODUTOS;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;
 
end.
