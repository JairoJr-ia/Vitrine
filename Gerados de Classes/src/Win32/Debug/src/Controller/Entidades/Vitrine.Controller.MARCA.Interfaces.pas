unit Vitrine.Controller.MARCA.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.MARCA;
type
 
  iControllerMARCA = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerMARCA;
    function Buscar : iControllerMARCA; overload;
    function Buscar(aID : Integer) : iControllerMARCA; overload;
    function Buscar(aNome : String) : iControllerMARCA; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerMARCA;
    function Update : iControllerMARCA;
    function Delete : iControllerMARCA;
    function Entidade : TMARCA;
 
  end;
 
implementation
 
end.
