unit Vitrine.Model.GRUPO.Interfaces;
 
interface
 
uses
  Entidade.GRUPO, SimpleInterface, Data.DB;
 
type
  iModelGRUPO = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TGRUPO;
    function DAO : iSimpleDAO<TGRUPO>;
    function DataSource(aDataSource : TDataSource) : iModelGRUPO;
  end;
 
implementation
 
end.
