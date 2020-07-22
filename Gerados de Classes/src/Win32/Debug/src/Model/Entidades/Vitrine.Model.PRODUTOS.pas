unit Vitrine.Model.PRODUTOS;
 
interface
 
uses
  Vitrine.Model.PRODUTOS.Interfaces, Entidade.PRODUTOS,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelPRODUTOS = class(TInterfacedObject, iModelPRODUTOS)
    private
      FEntidade : TPRODUTOS;
      FDAO : iSimpleDAO<TPRODUTOS>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelPRODUTOS;
      function Entidade : TPRODUTOS;
      function DAO : iSimpleDAO<TPRODUTOS>;
      function DataSource(aDataSource : TDataSource) : iModelPRODUTOS;
 
  end;
 
implementation
 
{ TModelPRODUTOS }
 
uses System.SysUtils;
 
constructor TModelPRODUTOS.Create;
begin
  FEntidade := TPRODUTOS.Create;
 
  FDAO := TSimpleDAO<TPRODUTOS>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TPRODUTOS>
            .New(TSimpleQueryRestDW<TPRODUTOS>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelPRODUTOS.DAO: iSimpleDAO<TPRODUTOS>;
begin
  Result := FDAO;
end;
 
function TModelPRODUTOS.DataSource(aDataSource: TDataSource): iModelPRODUTOS;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelPRODUTOS.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelPRODUTOS.Entidade: TPRODUTOS;
begin
  Result := FEntidade;
end;
 
class function TModelPRODUTOS.New : iModelPRODUTOS;
begin
  Result := Self.Create;
 
end;
 
end.
