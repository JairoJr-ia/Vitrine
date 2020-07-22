unit Vitrine.Model.UNIDADE;
 
interface
 
uses
  Vitrine.Model.UNIDADE.Interfaces, Entidade.UNIDADE,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelUNIDADE = class(TInterfacedObject, iModelUNIDADE)
    private
      FEntidade : TUNIDADE;
      FDAO : iSimpleDAO<TUNIDADE>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelUNIDADE;
      function Entidade : TUNIDADE;
      function DAO : iSimpleDAO<TUNIDADE>;
      function DataSource(aDataSource : TDataSource) : iModelUNIDADE;
 
  end;
 
implementation
 
{ TModelUNIDADE }
 
uses System.SysUtils;
 
constructor TModelUNIDADE.Create;
begin
  FEntidade := TUNIDADE.Create;
 
  FDAO := TSimpleDAO<TUNIDADE>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TUNIDADE>
            .New(TSimpleQueryRestDW<TUNIDADE>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelUNIDADE.DAO: iSimpleDAO<TUNIDADE>;
begin
  Result := FDAO;
end;
 
function TModelUNIDADE.DataSource(aDataSource: TDataSource): iModelUNIDADE;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelUNIDADE.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelUNIDADE.Entidade: TUNIDADE;
begin
  Result := FEntidade;
end;
 
class function TModelUNIDADE.New : iModelUNIDADE;
begin
  Result := Self.Create;
 
end;
 
end.
