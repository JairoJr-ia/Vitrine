unit Vitrine.Controller;
 
interface
 
uses
  Vitrine.Controller.Interfaces,
  Vitrine.Controller.GRUPO,
  Vitrine.Controller.GRUPO.Interfaces,
  Vitrine.Controller.MARCA,
  Vitrine.Controller.MARCA.Interfaces,
  Vitrine.Controller.PRODUTOS,
  Vitrine.Controller.PRODUTOS.Interfaces,
  Vitrine.Controller.TRIBUTO,
  Vitrine.Controller.TRIBUTO.Interfaces,
  Vitrine.Controller.UNIDADE,
  Vitrine.Controller.UNIDADE.Interfaces,
  Vitrine.Controller.USERS,
  Vitrine.Controller.USERS.Interfaces;
 
type
  TController = class(TInterfacedObject, iController)
    constructor Create;
    destructor Destroy; override;
    class function New : iController;
    function GRUPO : iControllerGRUPO;
    function MARCA : iControllerMARCA;
    function PRODUTOS : iControllerPRODUTOS;
    function TRIBUTO : iControllerTRIBUTO;
    function UNIDADE : iControllerUNIDADE;
    function USERS : iControllerUSERS;
 
  end;
 
implementation
 
{ TController }
 
constructor TController.Create;
begin
 
end;
 
destructor TController.Destroy;
begin
 
  inherited;
end;
 
function TController.GRUPO: iControllerGRUPO;
begin
  Result := TControllerGRUPO.New;
end;
 
function TController.MARCA: iControllerMARCA;
begin
  Result := TControllerMARCA.New;
end;
 
function TController.PRODUTOS: iControllerPRODUTOS;
begin
  Result := TControllerPRODUTOS.New;
end;
 
function TController.TRIBUTO: iControllerTRIBUTO;
begin
  Result := TControllerTRIBUTO.New;
end;
 
function TController.UNIDADE: iControllerUNIDADE;
begin
  Result := TControllerUNIDADE.New;
end;
 
function TController.USERS: iControllerUSERS;
begin
  Result := TControllerUSERS.New;
end;
 
class function TController.New: iController;
begin
  Result := Self.Create;
end;
 
end.
