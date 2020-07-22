unit Vitrine.Controller.GRUPO.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.GRUPO;
type
 
  iControllerGRUPO = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerGRUPO;
    function Buscar : iControllerGRUPO; overload;
    function Buscar(aID : Integer) : iControllerGRUPO; overload;
    function Buscar(aNome : String) : iControllerGRUPO; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerGRUPO;
    function Update : iControllerGRUPO;
    function Delete : iControllerGRUPO;
    function Entidade : TGRUPO;
 
  end;
 
implementation
 
end.
