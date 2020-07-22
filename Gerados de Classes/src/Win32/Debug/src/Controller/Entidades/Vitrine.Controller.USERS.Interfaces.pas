unit Vitrine.Controller.USERS.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.USERS;
type
 
  iControllerUSERS = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerUSERS;
    function Buscar : iControllerUSERS; overload;
    function Buscar(aID : Integer) : iControllerUSERS; overload;
    function Buscar(aNome : String) : iControllerUSERS; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerUSERS;
    function Update : iControllerUSERS;
    function Delete : iControllerUSERS;
    function Entidade : TUSERS;
 
  end;
 
implementation
 
end.
