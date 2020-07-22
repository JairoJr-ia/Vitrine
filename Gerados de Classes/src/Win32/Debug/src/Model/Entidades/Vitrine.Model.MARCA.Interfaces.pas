unit Vitrine.Model.MARCA.Interfaces;
 
interface
 
uses
  Entidade.MARCA, SimpleInterface, Data.DB;
 
type
  iModelMARCA = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TMARCA;
    function DAO : iSimpleDAO<TMARCA>;
    function DataSource(aDataSource : TDataSource) : iModelMARCA;
  end;
 
implementation
 
end.
