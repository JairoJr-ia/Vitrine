unit Vitrine.Model.MARCA;
 
interface
 
uses
  Vitrine.Model.MARCA.Interfaces, Entidade.MARCA,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelMARCA = class(TInterfacedObject, iModelMARCA)
    private
      FEntidade : TMARCA;
      FDAO : iSimpleDAO<TMARCA>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelMARCA;
      function Entidade : TMARCA;
      function DAO : iSimpleDAO<TMARCA>;
      function DataSource(aDataSource : TDataSource) : iModelMARCA;
 
  end;
 
implementation
 
{ TModelMARCA }
 
uses System.SysUtils;
 
constructor TModelMARCA.Create;
begin
  FEntidade := TMARCA.Create;
 
  FDAO := TSimpleDAO<TMARCA>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TMARCA>
            .New(TSimpleQueryRestDW<TMARCA>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelMARCA.DAO: iSimpleDAO<TMARCA>;
begin
  Result := FDAO;
end;
 
function TModelMARCA.DataSource(aDataSource: TDataSource): iModelMARCA;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelMARCA.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelMARCA.Entidade: TMARCA;
begin
  Result := FEntidade;
end;
 
class function TModelMARCA.New : iModelMARCA;
begin
  Result := Self.Create;
 
end;
 
end.
