unit Vitrine.Model.DAOGeneric;

interface

uses
  SimpleInterface,
  SimpleDAO,
  SimpleAttributes,
  SimpleQueryFiredac,
  Data.DB,
  uConnection;

type

  iDAOGeneric<T : class> = interface
    ['{1DAE62A0-0C6E-4FA6-BF9E-2377A25F267C}']
    function Find : iDAOGeneric<T>; overload;
    function Find (const aID : Integer ) : iDAOGeneric<T>; overload;
    function Insert : iDAOGeneric<T>; overload;
    function Insert(aValue : T) : iDAOGeneric<T>; overload;

    function Update : iDAOGeneric<T>; overload;
    function Update(aValue : T) : iDAOGeneric<T>; overload;

    function Delete : iDAOGeneric<T>; overload;
    function Delete(aValue : T) : iDAOGeneric<T>; overload;

    function DAO : ISimpleDAO<T>;
    function DataSource : TDataSource;
  end;

  TDAOGeneric<T : class, constructor> = class(TInterfacedObject, iDAOGeneric<T>)
  private
    FConn : iSimpleQuery;
    FDAO : iSimpleDAO<T>;
    FDataSource : TDataSource;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iDAOGeneric<T>;
    function Find : iDAOGeneric<T>; overload;
    function Find (const aID : Integer ) : iDAOGeneric<T>; overload;
    function Insert : iDAOGeneric<T>; overload;
    function Insert(aValue : T) : iDAOGeneric<T>; overload;
    function Update : iDAOGeneric<T>; overload;
    function Update(aValue : T) : iDAOGeneric<T>; overload;
    function Delete : iDAOGeneric<T>; overload;
    function Delete(aValue : T) : iDAOGeneric<T>; overload;
    function DAO : ISimpleDAO<T>;
    function DataSource : TDataSource;
  end;

implementation

{ TDAOGeneric<T> }

uses System.SysUtils;

constructor TDAOGeneric<T>.Create;
begin
  FDataSource := TDataSource.Create(nil);
  FConn := TSimpleQueryFiredac.New(TConnection.GetInstance);
  FDAO := TSimpleDAO<T>.New(FConn).DataSource(FDataSource);

end;

function TDAOGeneric<T>.DAO: ISimpleDAO<T>;
begin
  Result := FDAO;
end;

function TDAOGeneric<T>.DataSource: TDataSource;
begin
  Result := FDataSource;

end;

function TDAOGeneric<T>.Delete : iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete;

end;

function TDAOGeneric<T>.Delete(aValue: T): iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete(aValue);
end;

destructor TDAOGeneric<T>.Destroy;
begin
  FDataSource.Free;
  inherited;
end;

function TDAOGeneric<T>.Find(const aID: Integer): iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Find(aID);
end;

function TDAOGeneric<T>.Insert(aValue: T): iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert(aValue);
end;

function TDAOGeneric<T>.Find: iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Find;

end;

class function TDAOGeneric<T>.New: iDAOGeneric<T>;
begin
  Result := Self.Create;
end;

function TDAOGeneric<T>.Update(aValue: T): iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update(aValue);
end;

function TDAOGeneric<T>.Insert: iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert;
end;

function TDAOGeneric<T>.Update : iDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update;

end;

end.
