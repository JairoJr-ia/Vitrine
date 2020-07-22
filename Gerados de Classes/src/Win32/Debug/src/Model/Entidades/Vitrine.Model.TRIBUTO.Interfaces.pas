unit Vitrine.Model.TRIBUTO.Interfaces;
 
interface
 
uses
  Entidade.TRIBUTO, SimpleInterface, Data.DB;
 
type
  iModelTRIBUTO = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TTRIBUTO;
    function DAO : iSimpleDAO<TTRIBUTO>;
    function DataSource(aDataSource : TDataSource) : iModelTRIBUTO;
  end;
 
implementation
 
end.
