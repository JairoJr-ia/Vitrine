unit Entidade.TRIBUTO;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('TRIBUTO')]
  TTRIBUTO = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FNRO_CST: String;
    FCOD_ECF: String;
    FICMS: Currency;
    FUSU_INC: String;
    FUSU_ALT: String;
    FDATA_INC: TDateTime;
    FDATA_ALT: TDateTime;
    FCOD_ST: String;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetNRO_CST(const Value: String);
    procedure SetCOD_ECF(const Value: String);
    procedure SetICMS(const Value: Currency);
    procedure SetUSU_INC(const Value: String);
    procedure SetUSU_ALT(const Value: String);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetCOD_ST(const Value: String);
 
  public
 
  published
  [Campo('CODIGO'), PK]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('NRO_CST')]
  property NRO_CST : String read FNRO_CST write SetNRO_CST;
  [Campo('COD_ECF')]
  property COD_ECF : String read FCOD_ECF write SetCOD_ECF;
  [Campo('ICMS')]
  property ICMS : Currency read FICMS write SetICMS;
  [Campo('USU_INC')]
  property USU_INC : String read FUSU_INC write SetUSU_INC;
  [Campo('USU_ALT')]
  property USU_ALT : String read FUSU_ALT write SetUSU_ALT;
  [Campo('DATA_INC')]
  property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;
  [Campo('DATA_ALT')]
  property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;
  [Campo('COD_ST')]
  property COD_ST : String read FCOD_ST write SetCOD_ST;
 
end;
 
implementation
 
{ TTRIBUTO }
 
procedure TTRIBUTO.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TTRIBUTO.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TTRIBUTO.SetNRO_CST(const Value: String);
begin
  FNRO_CST := Value;
end;
 
procedure TTRIBUTO.SetCOD_ECF(const Value: String);
begin
  FCOD_ECF := Value;
end;
 
procedure TTRIBUTO.SetICMS(const Value: Currency);
begin
  FICMS := Value;
end;
 
procedure TTRIBUTO.SetUSU_INC(const Value: String);
begin
  FUSU_INC := Value;
end;
 
procedure TTRIBUTO.SetUSU_ALT(const Value: String);
begin
  FUSU_ALT := Value;
end;
 
procedure TTRIBUTO.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;
 
procedure TTRIBUTO.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;
 
procedure TTRIBUTO.SetCOD_ST(const Value: String);
begin
  FCOD_ST := Value;
end;
 
end.
