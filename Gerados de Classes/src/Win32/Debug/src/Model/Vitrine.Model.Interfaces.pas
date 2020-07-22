unit Vitrine.Model.Interfaces;
 
interface
 
uses
  Vitrine.Model.GRUPO.Interfaces, 
  Vitrine.Model.MARCA.Interfaces, 
  Vitrine.Model.PRODUTOS.Interfaces, 
  Vitrine.Model.TRIBUTO.Interfaces, 
  Vitrine.Model.UNIDADE.Interfaces, 
  Vitrine.Model.USERS.Interfaces; 
 
type
  iModel = interface
    ['{A995ADB8-92B8-4B3E-9DE5-4EA487027377}']
    function GRUPO : iModelGRUPO; 
    function MARCA : iModelMARCA; 
    function PRODUTOS : iModelPRODUTOS; 
    function TRIBUTO : iModelTRIBUTO; 
    function UNIDADE : iModelUNIDADE; 
    function USERS : iModelUSERS; 
  end;
 
implementation
 
end.
