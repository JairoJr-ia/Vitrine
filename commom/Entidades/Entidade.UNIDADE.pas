unit Entidade.UNIDADE;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('UNIDADE')]
  TUNIDADE = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FUSU_INC: String;
    FDATA_INC: TDateTime;
    FUSU_ALT: String;
    FDATA_ALT: TDateTime;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetUSU_INC(const Value: String);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetUSU_ALT(const Value: String);
    procedure SetDATA_ALT(const Value: TDateTime);
 
  public
 
  published
  [Campo('CODIGO'), PK]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('USU_INC')]
  property USU_INC : String read FUSU_INC write SetUSU_INC;
  [Campo('DATA_INC')]
  property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;
  [Campo('USU_ALT')]
  property USU_ALT : String read FUSU_ALT write SetUSU_ALT;
  [Campo('DATA_ALT')]
  property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;
 
end;
 
implementation
 
{ TUNIDADE }
 
procedure TUNIDADE.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TUNIDADE.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TUNIDADE.SetUSU_INC(const Value: String);
begin
  FUSU_INC := Value;
end;
 
procedure TUNIDADE.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;
 
procedure TUNIDADE.SetUSU_ALT(const Value: String);
begin
  FUSU_ALT := Value;
end;
 
procedure TUNIDADE.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;
 
end.

