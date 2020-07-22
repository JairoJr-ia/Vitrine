unit Vitrine.Controller.TRIBUTO.Interfaces;
 
interface
 
uses
  Data.DB, Entidade.TRIBUTO;
type
 
  iControllerTRIBUTO = interface
    ['{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}']
    function DataSource(aDataSource : TDataSource) : iControllerTRIBUTO;
    function Buscar : iControllerTRIBUTO; overload;
    function Buscar(aID : Integer) : iControllerTRIBUTO; overload;
    function Buscar(aNome : String) : iControllerTRIBUTO; overload;
    function BuscarUltControle : Integer;
    function Insert : iControllerTRIBUTO;
    function Update : iControllerTRIBUTO;
    function Delete : iControllerTRIBUTO;
    function Entidade : TTRIBUTO;
 
  end;
 
implementation
 
end.
