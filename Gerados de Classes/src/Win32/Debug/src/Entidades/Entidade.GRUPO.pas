unit Entidade.GRUPO;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('GRUPO')]
  TGRUPO = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FTIPO: String;
    FUSU_INC: String;
    FUSU_ALT: String;
    FDATA_INC: TDateTime;
    FDATA_ALT: TDateTime;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetTIPO(const Value: String);
    procedure SetUSU_INC(const Value: String);
    procedure SetUSU_ALT(const Value: String);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetDATA_ALT(const Value: TDateTime);
 
  public
 
  published
  [Campo('CODIGO')]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('TIPO')]
  property TIPO : String read FTIPO write SetTIPO;
  [Campo('USU_INC')]
  property USU_INC : String read FUSU_INC write SetUSU_INC;
  [Campo('USU_ALT')]
  property USU_ALT : String read FUSU_ALT write SetUSU_ALT;
  [Campo('DATA_INC')]
  property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;
  [Campo('DATA_ALT')]
  property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;
 
end;
 
implementation
 
{ TGRUPO }
 
procedure TGRUPO.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TGRUPO.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TGRUPO.SetTIPO(const Value: String);
begin
  FTIPO := Value;
end;
 
procedure TGRUPO.SetUSU_INC(const Value: String);
begin
  FUSU_INC := Value;
end;
 
procedure TGRUPO.SetUSU_ALT(const Value: String);
begin
  FUSU_ALT := Value;
end;
 
procedure TGRUPO.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;
 
procedure TGRUPO.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;
 
end.
