unit Vitrine.Model.USERS;
 
interface
 
uses
  Vitrine.Model.USERS.Interfaces, Entidade.USERS,
  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,
  uConnection;
 
Type
  TModelUSERS = class(TInterfacedObject, iModelUSERS)
    private
      FEntidade : TUSERS;
      FDAO : iSimpleDAO<TUSERS>;
      FDataSource : TDataSource;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelUSERS;
      function Entidade : TUSERS;
      function DAO : iSimpleDAO<TUSERS>;
      function DataSource(aDataSource : TDataSource) : iModelUSERS;
 
  end;
 
implementation
 
{ TModelUSERS }
 
uses System.SysUtils;
 
constructor TModelUSERS.Create;
begin
  FEntidade := TUSERS.Create;
 
  FDAO := TSimpleDAO<TUSERS>
            .New(TSimpleQueryFireDAC
              .New(TConnection.GetInstance));
 
{   FDAO := TSimpleDAO<TUSERS>
            .New(TSimpleQueryRestDW<TUSERS>
              .New(conexaoRestDW.RESTDWDataBase1)); }
 
end;
 
function TModelUSERS.DAO: iSimpleDAO<TUSERS>;
begin
  Result := FDAO;
end;
 
function TModelUSERS.DataSource(aDataSource: TDataSource): iModelUSERS;
begin
  Result := Self;
  FDataSource := aDataSource;
  FDAO.DataSource(FDataSource);
end;
 
destructor TModelUSERS.Destroy;
begin
  FreeAndNil(FEntidade);
 
  inherited;
end;
 
function TModelUSERS.Entidade: TUSERS;
begin
  Result := FEntidade;
end;
 
class function TModelUSERS.New : iModelUSERS;
begin
  Result := Self.Create;
 
end;
 
end.
