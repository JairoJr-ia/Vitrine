unit Entidade.MARCA;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('MARCA')]
  TMARCA = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FDATA_ALT: TDateTime;
    FUSU_ALT: String;
    FDATA_INC: TDateTime;
    FUSU_INC: String;
    FMULT: Currency;
    FCOD_FOR: String;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetUSU_ALT(const Value: String);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetUSU_INC(const Value: String);
    procedure SetMULT(const Value: Currency);
    procedure SetCOD_FOR(const Value: String);
 
  public
 
  published
  [Campo('CODIGO'), PK]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('DATA_ALT')]
  property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;
  [Campo('USU_ALT')]
  property USU_ALT : String read FUSU_ALT write SetUSU_ALT;
  [Campo('DATA_INC')]
  property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;
  [Campo('USU_INC')]
  property USU_INC : String read FUSU_INC write SetUSU_INC;
  [Campo('MULT')]
  property MULT : Currency read FMULT write SetMULT;
  [Campo('COD_FOR')]
  property COD_FOR : String read FCOD_FOR write SetCOD_FOR;
 
end;
 
implementation
 
{ TMARCA }
 
procedure TMARCA.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TMARCA.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TMARCA.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;
 
procedure TMARCA.SetUSU_ALT(const Value: String);
begin
  FUSU_ALT := Value;
end;
 
procedure TMARCA.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;
 
procedure TMARCA.SetUSU_INC(const Value: String);
begin
  FUSU_INC := Value;
end;
 
procedure TMARCA.SetMULT(const Value: Currency);
begin
  FMULT := Value;
end;
 
procedure TMARCA.SetCOD_FOR(const Value: String);
begin
  FCOD_FOR := Value;
end;
 
end.

