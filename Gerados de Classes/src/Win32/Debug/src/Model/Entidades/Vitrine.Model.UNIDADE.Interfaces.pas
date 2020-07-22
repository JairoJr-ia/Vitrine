unit Vitrine.Model.UNIDADE.Interfaces;
 
interface
 
uses
  Entidade.UNIDADE, SimpleInterface, Data.DB;
 
type
  iModelUNIDADE = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TUNIDADE;
    function DAO : iSimpleDAO<TUNIDADE>;
    function DataSource(aDataSource : TDataSource) : iModelUNIDADE;
  end;
 
implementation
 
end.
