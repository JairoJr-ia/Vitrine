unit Vitrine.Controller.UNIDADE;
 
interface
 
uses
  Vitrine.Model.DAOGeneric,
  Entidade.UNIDADE,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Data.DB,
  VCL.Forms;
 
type
  TControllerUNIDADE<T : class, constructor> = class(TInterfacedObject, iControllerDAOGeneric<T>)
    private
      FDAO : iDAOGeneric<T>;
      FOrderBy : String;
      FWhere, FFiltro,FFirst, FSkip : String;
 
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerDAOGeneric<T>;
 
      function Insert   : iControllerDAOGeneric<T>; overload;
      function Insert(aValue : T) : iControllerDAOGeneric<T>; overload;
 
      function Update   : iControllerDAOGeneric<T>; overload;
      function Update(aValue : T)   : iControllerDAOGeneric<T>; overload;
 
      function Delete   : iControllerDAOGeneric<T>; overload;
      function Delete(aValue : T)   : iControllerDAOGeneric<T>; overload;
      function Find     : iControllerDAOGeneric<T>; overload;
 
      function Find(const aID   : Integer)   : iControllerDAOGeneric<T>; overload;
      function Find(const aName : String)    : iControllerDAOGeneric<T>; overload;
 
      function FindLast : iControllerDAOGeneric<T>;
      function NumberRecords : Integer;
 
      function DataSource(aDataSource : TDataSource) : iControllerDAOGeneric<T>;
      function BindForm(aForm : TForm)               : iControllerDAOGeneric<T>;
 
      function OrderBy(const aValue : String) : iControllerDAOGeneric<T>;
      function Where(const aWhere, aValue : String) : iControllerDAOGeneric<T>;
      function Limit(const aFirst, aSkip : Integer) : iControllerDAOGeneric<T>;
  end; 
 
implementation
 
uses
  System.SysUtils;
 
{ TControllerUNIDADE }
 
function TControllerUNIDADE<T>.BindForm(aForm: TForm): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.BindForm(aForm);
end;
 
constructor TControllerUNIDADE<T>.Create;
var
  FUNIDADE : TUNIDADE;
begin
  FDAO := TDAOGeneric<T>.New;
 
  try
    FUNIDADE := TUNIDADE.Create;
    FOrderBy := 'CODIGO';
  finally
    FreeAndNil(FUNIDADE);
  end;
 
  FWhere := '';
  FFiltro := '';
  FFirst := '100';
  FSkip := '0';
 
end;
 
function TControllerUNIDADE<T>.DataSource(
  aDataSource: TDataSource): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.DataSource(aDataSource);
end;
 
function TControllerUNIDADE<T>.Delete: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete;
end;
 
function TControllerUNIDADE<T>.Delete(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete(aValue);
end;
 
destructor TControllerUNIDADE<T>.Destroy;
begin
 
  inherited;
end;
 
function TControllerUNIDADE<T>.Find: iControllerDAOGeneric<T>;
begin
 
  Result := Self;
 
  if FWhere = ''then
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('UNIDADE.* ')
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end
  else
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('UNIDADE.* ')
        .Where(FWhere+QuotedStr(FFiltro))
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end;
 
  FWhere := '';
  FFiltro := '';
 
end;
 
function TControllerUNIDADE<T>.Find(const aName: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('NOME LIKE QuotedStr(aName)')
      .&End
    .Find;
end;
 
function TControllerUNIDADE<T>.Find(const aID: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('CODIGO = '+IntToStr(aID))
      .&End
    .Find;
end;
 
function TControllerUNIDADE<T>.FindLast: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Fields('MAX(CODIGO) CODIGO')
      .&End
    .Find;
end;
 
function TControllerUNIDADE<T>.Insert(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert(aValue);
end;
 
function TControllerUNIDADE<T>.Limit(const aFirst,
  aSkip: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FFirst := IntToStr(aFirst);
  FSkip := IntToStr(aSkip);
end;
 
function TControllerUNIDADE<T>.Insert: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert;
end;
 
class function TControllerUNIDADE<T>.New: iControllerDAOGeneric<T>;
begin
  Result := Self.Create;
end;
 
function TControllerUNIDADE<T>.NumberRecords: Integer;
begin
  if FWhere = '' then
  begin
    FDAO.DAO
      .SQL
        .Fields('COUNT(CODIGO) QTDE')
        .&End
      .Find;
 
  end
  else
  begin
    FDAO.DAO
      .SQL
        .Fields('COUNT(CODIGO) QTDE')
        .Where(FWhere+QuotedStr(FFiltro))
        .&End
      .Find;
 
  end;
 
  FWhere := '';
  FFiltro := '';
 
  Result := FDAO.DataSource.DataSet.FieldByName('QTDE').AsInteger
 
end;
 
function TControllerUNIDADE<T>.OrderBy(const aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FOrderBy := aValue;
end;
 
function TControllerUNIDADE<T>.Update(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update(aValue);
end;
 
function TControllerUNIDADE<T>.Where(const aWhere,aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FWhere := aWhere;
  FFiltro := aValue;
end;
 
function TControllerUNIDADE<T>.Update: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update;
end;
 
end.
