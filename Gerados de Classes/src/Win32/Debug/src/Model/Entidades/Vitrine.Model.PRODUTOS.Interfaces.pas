unit Vitrine.Model.PRODUTOS.Interfaces;
 
interface
 
uses
  Entidade.PRODUTOS, SimpleInterface, Data.DB;
 
type
  iModelPRODUTOS = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TPRODUTOS;
    function DAO : iSimpleDAO<TPRODUTOS>;
    function DataSource(aDataSource : TDataSource) : iModelPRODUTOS;
  end;
 
implementation
 
end.
