unit Vitrine.Model.USERS.Interfaces;
 
interface
 
uses
  Entidade.USERS, SimpleInterface, Data.DB;
 
type
  iModelUSERS = interface
    ['{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}']
    function Entidade : TUSERS;
    function DAO : iSimpleDAO<TUSERS>;
    function DataSource(aDataSource : TDataSource) : iModelUSERS;
  end;
 
implementation
 
end.
