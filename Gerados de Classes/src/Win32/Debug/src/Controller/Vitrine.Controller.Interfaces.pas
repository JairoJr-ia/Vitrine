unit Vitrine.Controller.Interfaces;
 
interface
 
uses
  Vitrine.Controller.GRUPO.Interfaces, 
  Vitrine.Controller.MARCA.Interfaces, 
  Vitrine.Controller.PRODUTOS.Interfaces, 
  Vitrine.Controller.TRIBUTO.Interfaces, 
  Vitrine.Controller.UNIDADE.Interfaces, 
  Vitrine.Controller.USERS.Interfaces; 
 
type
  iController = interface
    ['{AE882F03-62C4-43B0-ABD0-FCC6E7A5454C}']
    function GRUPO : iControllerGRUPO;
    function MARCA : iControllerMARCA;
    function PRODUTOS : iControllerPRODUTOS;
    function TRIBUTO : iControllerTRIBUTO;
    function UNIDADE : iControllerUNIDADE;
    function USERS : iControllerUSERS;
  end;
 
implementation
 
end.
