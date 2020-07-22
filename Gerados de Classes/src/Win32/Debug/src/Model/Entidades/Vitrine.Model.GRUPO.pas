unit Vitrine.Model.GRUPO;
 
interface
 
uses
  Vitrine.Model.GRUPO.Interfaces, Entidade.GRUPO,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelGRUPO = class(TInterfacedObject, iModelGRUPO)
    private
      FEntidade : TGRUPO;
      FDAO : iSimpleDAO<TGRUPO>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelGRUPO;
      function Entidade : TGRUPO;
      function DAO : iSimpleDAO<TGRUPO>;
      function DataSource(aDataSource : TDataSource) : iModelGRUPO;
 
  end;
 
implementation
 
{ TModelGRUPO }
 
uses System.SysUtils;
 
constructor TModelGRUPO.Create;
begin
  FEntidade := TGRUPO.Create;
 
  FDAO := TSimpleDAO<TGRUPO>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TGRUPO>
            .New(TSimpleQueryRestDW<TGRUPO>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelGRUPO.DAO: iSimpleDAO<TGRUPO>;
begin
  Result := FDAO;
end;
 
function TModelGRUPO.DataSource(aDataSource: TDataSource): iModelGRUPO;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelGRUPO.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelGRUPO.Entidade: TGRUPO;
begin
  Result := FEntidade;
end;
 
class function TModelGRUPO.New : iModelGRUPO;
begin
  Result := Self.Create;
 
end;
 
end.
