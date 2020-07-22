unit Entidade.USERS;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('USERS')]
  TUSERS = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FCNPJ: String;
    FVENCIMENTO: TDateTime;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetCNPJ(const Value: String);
    procedure SetVENCIMENTO(const Value: TDateTime);
 
  public
 
  published
  [Campo('CODIGO')]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('CNPJ')]
  property CNPJ : String read FCNPJ write SetCNPJ;
  [Campo('VENCIMENTO')]
  property VENCIMENTO : TDateTime read FVENCIMENTO write SetVENCIMENTO;
 
end;
 
implementation
 
{ TUSERS }
 
procedure TUSERS.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TUSERS.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TUSERS.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;
 
procedure TUSERS.SetVENCIMENTO(const Value: TDateTime);
begin
  FVENCIMENTO := Value;
end;
 
end.
