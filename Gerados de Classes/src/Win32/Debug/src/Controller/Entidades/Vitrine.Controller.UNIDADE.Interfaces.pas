unit Vitrine.Controller.UNIDADE.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.UNIDADE;
type
 
  iControllerUNIDADE = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerUNIDADE;
    function Buscar : iControllerUNIDADE; overload;
    function Buscar(aID : Integer) : iControllerUNIDADE; overload;
    function Buscar(aNome : String) : iControllerUNIDADE; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerUNIDADE;
    function Update : iControllerUNIDADE;
    function Delete : iControllerUNIDADE;
    function Entidade : TUNIDADE;
 
  end;
 
implementation
 
end.
