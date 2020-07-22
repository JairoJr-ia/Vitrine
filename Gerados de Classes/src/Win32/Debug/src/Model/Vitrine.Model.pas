unit Vitrine.Model;
 
interface
 
uses
  Vitrine.Model.Interfaces,
  Vitrine.Model.GRUPO,
  Vitrine.Model.GRUPO.Interfaces,
  Vitrine.Model.MARCA,
  Vitrine.Model.MARCA.Interfaces,
  Vitrine.Model.PRODUTOS,
  Vitrine.Model.PRODUTOS.Interfaces,
  Vitrine.Model.TRIBUTO,
  Vitrine.Model.TRIBUTO.Interfaces,
  Vitrine.Model.UNIDADE,
  Vitrine.Model.UNIDADE.Interfaces,
  Vitrine.Model.USERS,
  Vitrine.Model.USERS.Interfaces;
 
type
  TModel = class(TInterfacedObject, iModel)
    constructor Create;
    destructor Destroy; override;
    class function New : iModel;
    function GRUPO : iModelGRUPO;
    function MARCA : iModelMARCA;
    function PRODUTOS : iModelPRODUTOS;
    function TRIBUTO : iModelTRIBUTO;
    function UNIDADE : iModelUNIDADE;
    function USERS : iModelUSERS;
 
  end;
 
 
implementation
 
{ TModel }
 
constructor TModel.Create;
begin
 
end;
 
destructor TModel.Destroy;
begin
 
  inherited;
end;
 
function TModel.GRUPO: iModelGRUPO;
begin
  Result := TModelGRUPO.New;
end;
 
function TModel.MARCA: iModelMARCA;
begin
  Result := TModelMARCA.New;
end;
 
function TModel.PRODUTOS: iModelPRODUTOS;
begin
  Result := TModelPRODUTOS.New;
end;
 
function TModel.TRIBUTO: iModelTRIBUTO;
begin
  Result := TModelTRIBUTO.New;
end;
 
function TModel.UNIDADE: iModelUNIDADE;
begin
  Result := TModelUNIDADE.New;
end;
 
function TModel.USERS: iModelUSERS;
begin
  Result := TModelUSERS.New;
end;
 
class function TModel.New: iModel;
begin
  Result := Self.Create;
end;
 
end.
