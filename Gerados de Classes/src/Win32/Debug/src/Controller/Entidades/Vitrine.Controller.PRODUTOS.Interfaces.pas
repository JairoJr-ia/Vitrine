unit Vitrine.Controller.PRODUTOS.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.PRODUTOS;
type
 
  iControllerPRODUTOS = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerPRODUTOS;
    function Buscar : iControllerPRODUTOS; overload;
    function Buscar(aID : Integer) : iControllerPRODUTOS; overload;
    function Buscar(aNome : String) : iControllerPRODUTOS; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerPRODUTOS;
    function Update : iControllerPRODUTOS;
    function Delete : iControllerPRODUTOS;
    function Entidade : TPRODUTOS;
 
  end;
 
implementation
 
end.
