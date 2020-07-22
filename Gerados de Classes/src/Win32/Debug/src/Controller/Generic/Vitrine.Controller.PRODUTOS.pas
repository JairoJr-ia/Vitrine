unit Vitrine.Controller.PRODUTOS;
 
interface
 
uses
  Vitrine.Model.DAOGeneric,
  Entidade.PRODUTOS,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Data.DB,
  VCL.Forms;
 
type
  TControllerPRODUTOS<T : class, constructor> = class(TInterfacedObject, iControllerDAOGeneric<T>)
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
 
{ TControllerPRODUTOS }
 
function TControllerPRODUTOS<T>.BindForm(aForm: TForm): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.BindForm(aForm);
end;
 
constructor TControllerPRODUTOS<T>.Create;
var
  FPRODUTOS : TPRODUTOS;
begin
  FDAO := TDAOGeneric<T>.New;
 
  try
    FPRODUTOS := TPRODUTOS.Create;
    FOrderBy := 'CODIGO';
  finally
    FreeAndNil(FPRODUTOS);
  end;
 
  FWhere := '';
  FFiltro := '';
  FFirst := '100';
  FSkip := '0';
 
end;
 
function TControllerPRODUTOS<T>.DataSource(
  aDataSource: TDataSource): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.DataSource(aDataSource);
end;
 
function TControllerPRODUTOS<T>.Delete: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete;
end;
 
function TControllerPRODUTOS<T>.Delete(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete(aValue);
end;
 
destructor TControllerPRODUTOS<T>.Destroy;
begin
 
  inherited;
end;
 
function TControllerPRODUTOS<T>.Find: iControllerDAOGeneric<T>;
begin
 
  Result := Self;
 
  if FWhere = ''then
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('PRODUTOS.* ')
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end
  else
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('PRODUTOS.* ')
        .Where(FWhere+QuotedStr(FFiltro))
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end;
 
  FWhere := '';
  FFiltro := '';
 
end;
 
function TControllerPRODUTOS<T>.Find(const aName: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('NOME LIKE QuotedStr(aName)')
      .&End
    .Find;
end;
 
function TControllerPRODUTOS<T>.Find(const aID: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('CODIGO = '+IntToStr(aID))
      .&End
    .Find;
end;
 
function TControllerPRODUTOS<T>.FindLast: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Fields('MAX(CODIGO) CODIGO')
      .&End
    .Find;
end;
 
function TControllerPRODUTOS<T>.Insert(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert(aValue);
end;
 
function TControllerPRODUTOS<T>.Limit(const aFirst,
  aSkip: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FFirst := IntToStr(aFirst);
  FSkip := IntToStr(aSkip);
end;
 
function TControllerPRODUTOS<T>.Insert: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert;
end;
 
class function TControllerPRODUTOS<T>.New: iControllerDAOGeneric<T>;
begin
  Result := Self.Create;
end;
 
function TControllerPRODUTOS<T>.NumberRecords: Integer;
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
 
function TControllerPRODUTOS<T>.OrderBy(const aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FOrderBy := aValue;
end;
 
function TControllerPRODUTOS<T>.Update(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update(aValue);
end;
 
function TControllerPRODUTOS<T>.Where(const aWhere,aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FWhere := aWhere;
  FFiltro := aValue;
end;
 
function TControllerPRODUTOS<T>.Update: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update;
end;
 
end.
