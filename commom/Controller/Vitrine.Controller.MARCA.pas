unit Vitrine.Controller.MARCA;
 
interface
 
uses
  Vitrine.Model.DAOGeneric,
  Entidade.MARCA,
  Vitrine.Controller.DAOGeneric.Interfaces,
  Data.DB,
  VCL.Forms;
 
type
  TControllerMARCA<T : class, constructor> = class(TInterfacedObject, iControllerDAOGeneric<T>)
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
 
{ TControllerMARCA }
 
function TControllerMARCA<T>.BindForm(aForm: TForm): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.BindForm(aForm);
end;
 
constructor TControllerMARCA<T>.Create;
var
  FMARCA : TMARCA;
begin
  FDAO := TDAOGeneric<T>.New;
 
  try
    FMARCA := TMARCA.Create;
    FOrderBy := 'CODIGO';
  finally
    FreeAndNil(FMARCA);
  end;
 
  FWhere := '';
  FFiltro := '';
  FFirst := '100';
  FSkip := '0';
 
end;
 
function TControllerMARCA<T>.DataSource(
  aDataSource: TDataSource): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO.DataSource(aDataSource);
end;
 
function TControllerMARCA<T>.Delete: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete;
end;
 
function TControllerMARCA<T>.Delete(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Delete(aValue);
end;
 
destructor TControllerMARCA<T>.Destroy;
begin
 
  inherited;
end;
 
function TControllerMARCA<T>.Find: iControllerDAOGeneric<T>;
begin
 
  Result := Self;
 
  if FWhere = ''then
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('MARCA.* ')
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end
  else
  begin
    FDAO.DAO
      .SQL
        .Fields('FIRST ' + FFirst +  ' SKIP ' +  FSkip ) 
        .Fields('MARCA.* ')
        .Where(FWhere+QuotedStr(FFiltro))
        .OrderBy(FOrderBy)
        .&End
      .Find;
 
  end;
 
  FWhere := '';
  FFiltro := '';
 
end;
 
function TControllerMARCA<T>.Find(const aName: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('NOME LIKE QuotedStr(aName)')
      .&End
    .Find;
end;
 
function TControllerMARCA<T>.Find(const aID: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Where('CODIGO = '+IntToStr(aID))
      .&End
    .Find;
end;
 
function TControllerMARCA<T>.FindLast: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.DAO
    .SQL
      .Fields('MAX(CODIGO) CODIGO')
      .&End
    .Find;
end;
 
function TControllerMARCA<T>.Insert(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert(aValue);
end;
 
function TControllerMARCA<T>.Limit(const aFirst,
  aSkip: Integer): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FFirst := IntToStr(aFirst);
  FSkip := IntToStr(aSkip);
end;
 
function TControllerMARCA<T>.Insert: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Insert;
end;
 
class function TControllerMARCA<T>.New: iControllerDAOGeneric<T>;
begin
  Result := Self.Create;
end;
 
function TControllerMARCA<T>.NumberRecords: Integer;
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
 
function TControllerMARCA<T>.OrderBy(const aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FOrderBy := aValue;
end;
 
function TControllerMARCA<T>.Update(aValue: T): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update(aValue);
end;
 
function TControllerMARCA<T>.Where(const aWhere,aValue: String): iControllerDAOGeneric<T>;
begin
  Result := Self;
  FWhere := aWhere;
  FFiltro := aValue;
end;
 
function TControllerMARCA<T>.Update: iControllerDAOGeneric<T>;
begin
  Result := Self;
  FDAO.Update;
end;
 
end.
