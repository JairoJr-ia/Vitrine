unit Vitrine.Model.TRIBUTO;
 
interface
 
uses
  Vitrine.Model.TRIBUTO.Interfaces, Entidade.TRIBUTO,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelTRIBUTO = class(TInterfacedObject, iModelTRIBUTO)
    private
      FEntidade : TTRIBUTO;
      FDAO : iSimpleDAO<TTRIBUTO>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelTRIBUTO;
      function Entidade : TTRIBUTO;
      function DAO : iSimpleDAO<TTRIBUTO>;
      function DataSource(aDataSource : TDataSource) : iModelTRIBUTO;
 
  end;
 
implementation
 
{ TModelTRIBUTO }
 
uses System.SysUtils;
 
constructor TModelTRIBUTO.Create;
begin
  FEntidade := TTRIBUTO.Create;
 
  FDAO := TSimpleDAO<TTRIBUTO>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TTRIBUTO>
            .New(TSimpleQueryRestDW<TTRIBUTO>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelTRIBUTO.DAO: iSimpleDAO<TTRIBUTO>;
begin
  Result := FDAO;
end;
 
function TModelTRIBUTO.DataSource(aDataSource: TDataSource): iModelTRIBUTO;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelTRIBUTO.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelTRIBUTO.Entidade: TTRIBUTO;
begin
  Result := FEntidade;
end;
 
class function TModelTRIBUTO.New : iModelTRIBUTO;
begin
  Result := Self.Create;
 
end;
 
end.
