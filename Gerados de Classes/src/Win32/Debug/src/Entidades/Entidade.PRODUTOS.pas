unit Entidade.PRODUTOS;
 
interface
 
uses
  SimpleAttributes;
 
type
  [Tabela('PRODUTOS')]
  TPRODUTOS = class
  private
    FCODIGO: Integer;
    FNOME: String;
    FCOD_MARCA: Integer;
    FCODIGO_BARRAS: String;
    FPRECO_CUSTO: Currency;
    FPRECO: Currency;
    FCOD_GRUPO: Integer;
    FCOD_UND: Integer;
    FCOD_TRIBUTO: Integer;
    FDT_ULTCOMPRA: TDateTime;
    FULT_FORNEC: Integer;
    FULT_CONTROLE: Integer;
    FESTOQUE_MAX: Currency;
    FPCOMIS: Currency;
    FSITUACAO: String;
    FEST_MIN: Currency;
    FPRECO_PRAZO: Currency;
    FOBS: String;
    FPESO: Currency;
    FGONDOLA: String;
    FLADO: String;
    FPRATELEIRA: String;
    FCOLUNA: String;
    FUSU_INC: String;
    FDATA_INC: TDateTime;
    FUSU_ALT: String;
    FDATA_ALT: TDateTime;
    FCOD_FABR: String;
    FIPI: Currency;
    FICMS: Currency;
    FCUSTO_FINAL: Currency;
    FPORC_VISTA: Currency;
    FPORC_PRAZO: Currency;
    FFRETE: Currency;
    FREFERENCIA: String;
    FCOD_FOR: String;
    FPRECO_TAB: Currency;
    FKIT: String;
    FGARANTIA: Integer;
    FVALIDADE: TDateTime;
    FFLG_FRACIONA: String;
    FCICMS_FRETE: Currency;
    FSTRIB: Currency;
    FCICMS: Currency;
    FACRESC: Currency;
    FDESCONTO: Currency;
    FCFIXO: Currency;
    FPIS: Currency;
    FCOFINS: Currency;
    FPROMOCAO: String;
    FCLAS_ABC: String;
    FDESC_MAX: Currency;
    FMULTIPLO: Currency;
    FCST_ORIG: Integer;
    FCOD_CFOP: Integer;
    FPORC_IPI: Currency;
    FPORC_ICMS: Currency;
    FPORC_BICMS: Currency;
    FPORC_DIF: Currency;
    FNCM: String;
    FCFOPDENTRO: String;
    FCFOPFORA: String;
    FCSOSN: Integer;
    FSEL: String;
    FCEST: String;
    FNOME_REDUZ: String;
    FMVA: Currency;
    FMVA4: Currency;
    FMVA12: Currency;
    FBASE_REDUCAO: Currency;
    FBALANCA: String;
    FPIS_SAIDA: Currency;
    FCOFINS_SAIDA: Currency;
    FPISO: String;
    FMETROS: Currency;
    FSIT_PIS_COFINS: Integer;
    procedure SetCODIGO(const Value: Integer);
    procedure SetNOME(const Value: String);
    procedure SetCOD_MARCA(const Value: Integer);
    procedure SetCODIGO_BARRAS(const Value: String);
    procedure SetPRECO_CUSTO(const Value: Currency);
    procedure SetPRECO(const Value: Currency);
    procedure SetCOD_GRUPO(const Value: Integer);
    procedure SetCOD_UND(const Value: Integer);
    procedure SetCOD_TRIBUTO(const Value: Integer);
    procedure SetDT_ULTCOMPRA(const Value: TDateTime);
    procedure SetULT_FORNEC(const Value: Integer);
    procedure SetULT_CONTROLE(const Value: Integer);
    procedure SetESTOQUE_MAX(const Value: Currency);
    procedure SetPCOMIS(const Value: Currency);
    procedure SetSITUACAO(const Value: String);
    procedure SetEST_MIN(const Value: Currency);
    procedure SetPRECO_PRAZO(const Value: Currency);
    procedure SetOBS(const Value: String);
    procedure SetPESO(const Value: Currency);
    procedure SetGONDOLA(const Value: String);
    procedure SetLADO(const Value: String);
    procedure SetPRATELEIRA(const Value: String);
    procedure SetCOLUNA(const Value: String);
    procedure SetUSU_INC(const Value: String);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetUSU_ALT(const Value: String);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetCOD_FABR(const Value: String);
    procedure SetIPI(const Value: Currency);
    procedure SetICMS(const Value: Currency);
    procedure SetCUSTO_FINAL(const Value: Currency);
    procedure SetPORC_VISTA(const Value: Currency);
    procedure SetPORC_PRAZO(const Value: Currency);
    procedure SetFRETE(const Value: Currency);
    procedure SetREFERENCIA(const Value: String);
    procedure SetCOD_FOR(const Value: String);
    procedure SetPRECO_TAB(const Value: Currency);
    procedure SetKIT(const Value: String);
    procedure SetGARANTIA(const Value: Integer);
    procedure SetVALIDADE(const Value: TDateTime);
    procedure SetFLG_FRACIONA(const Value: String);
    procedure SetCICMS_FRETE(const Value: Currency);
    procedure SetSTRIB(const Value: Currency);
    procedure SetCICMS(const Value: Currency);
    procedure SetACRESC(const Value: Currency);
    procedure SetDESCONTO(const Value: Currency);
    procedure SetCFIXO(const Value: Currency);
    procedure SetPIS(const Value: Currency);
    procedure SetCOFINS(const Value: Currency);
    procedure SetPROMOCAO(const Value: String);
    procedure SetCLAS_ABC(const Value: String);
    procedure SetDESC_MAX(const Value: Currency);
    procedure SetMULTIPLO(const Value: Currency);
    procedure SetCST_ORIG(const Value: Integer);
    procedure SetCOD_CFOP(const Value: Integer);
    procedure SetPORC_IPI(const Value: Currency);
    procedure SetPORC_ICMS(const Value: Currency);
    procedure SetPORC_BICMS(const Value: Currency);
    procedure SetPORC_DIF(const Value: Currency);
    procedure SetNCM(const Value: String);
    procedure SetCFOPDENTRO(const Value: String);
    procedure SetCFOPFORA(const Value: String);
    procedure SetCSOSN(const Value: Integer);
    procedure SetSEL(const Value: String);
    procedure SetCEST(const Value: String);
    procedure SetNOME_REDUZ(const Value: String);
    procedure SetMVA(const Value: Currency);
    procedure SetMVA4(const Value: Currency);
    procedure SetMVA12(const Value: Currency);
    procedure SetBASE_REDUCAO(const Value: Currency);
    procedure SetBALANCA(const Value: String);
    procedure SetPIS_SAIDA(const Value: Currency);
    procedure SetCOFINS_SAIDA(const Value: Currency);
    procedure SetPISO(const Value: String);
    procedure SetMETROS(const Value: Currency);
    procedure SetSIT_PIS_COFINS(const Value: Integer);
 
  public
 
  published
  [Campo('CODIGO')]
  property CODIGO : Integer read FCODIGO write SetCODIGO;
  [Campo('NOME')]
  property NOME : String read FNOME write SetNOME;
  [Campo('COD_MARCA')]
  property COD_MARCA : Integer read FCOD_MARCA write SetCOD_MARCA;
  [Campo('CODIGO_BARRAS')]
  property CODIGO_BARRAS : String read FCODIGO_BARRAS write SetCODIGO_BARRAS;
  [Campo('PRECO_CUSTO')]
  property PRECO_CUSTO : Currency read FPRECO_CUSTO write SetPRECO_CUSTO;
  [Campo('PRECO')]
  property PRECO : Currency read FPRECO write SetPRECO;
  [Campo('COD_GRUPO')]
  property COD_GRUPO : Integer read FCOD_GRUPO write SetCOD_GRUPO;
  [Campo('COD_UND')]
  property COD_UND : Integer read FCOD_UND write SetCOD_UND;
  [Campo('COD_TRIBUTO')]
  property COD_TRIBUTO : Integer read FCOD_TRIBUTO write SetCOD_TRIBUTO;
  [Campo('DT_ULTCOMPRA')]
  property DT_ULTCOMPRA : TDateTime read FDT_ULTCOMPRA write SetDT_ULTCOMPRA;
  [Campo('ULT_FORNEC')]
  property ULT_FORNEC : Integer read FULT_FORNEC write SetULT_FORNEC;
  [Campo('ULT_CONTROLE')]
  property ULT_CONTROLE : Integer read FULT_CONTROLE write SetULT_CONTROLE;
  [Campo('ESTOQUE_MAX')]
  property ESTOQUE_MAX : Currency read FESTOQUE_MAX write SetESTOQUE_MAX;
  [Campo('PCOMIS')]
  property PCOMIS : Currency read FPCOMIS write SetPCOMIS;
  [Campo('SITUACAO')]
  property SITUACAO : String read FSITUACAO write SetSITUACAO;
  [Campo('EST_MIN')]
  property EST_MIN : Currency read FEST_MIN write SetEST_MIN;
  [Campo('PRECO_PRAZO')]
  property PRECO_PRAZO : Currency read FPRECO_PRAZO write SetPRECO_PRAZO;
  [Campo('OBS')]
  property OBS : String read FOBS write SetOBS;
  [Campo('PESO')]
  property PESO : Currency read FPESO write SetPESO;
  [Campo('GONDOLA')]
  property GONDOLA : String read FGONDOLA write SetGONDOLA;
  [Campo('LADO')]
  property LADO : String read FLADO write SetLADO;
  [Campo('PRATELEIRA')]
  property PRATELEIRA : String read FPRATELEIRA write SetPRATELEIRA;
  [Campo('COLUNA')]
  property COLUNA : String read FCOLUNA write SetCOLUNA;
  [Campo('USU_INC')]
  property USU_INC : String read FUSU_INC write SetUSU_INC;
  [Campo('DATA_INC')]
  property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;
  [Campo('USU_ALT')]
  property USU_ALT : String read FUSU_ALT write SetUSU_ALT;
  [Campo('DATA_ALT')]
  property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;
  [Campo('COD_FABR')]
  property COD_FABR : String read FCOD_FABR write SetCOD_FABR;
  [Campo('IPI')]
  property IPI : Currency read FIPI write SetIPI;
  [Campo('ICMS')]
  property ICMS : Currency read FICMS write SetICMS;
  [Campo('CUSTO_FINAL')]
  property CUSTO_FINAL : Currency read FCUSTO_FINAL write SetCUSTO_FINAL;
  [Campo('PORC_VISTA')]
  property PORC_VISTA : Currency read FPORC_VISTA write SetPORC_VISTA;
  [Campo('PORC_PRAZO')]
  property PORC_PRAZO : Currency read FPORC_PRAZO write SetPORC_PRAZO;
  [Campo('FRETE')]
  property FRETE : Currency read FFRETE write SetFRETE;
  [Campo('REFERENCIA')]
  property REFERENCIA : String read FREFERENCIA write SetREFERENCIA;
  [Campo('COD_FOR')]
  property COD_FOR : String read FCOD_FOR write SetCOD_FOR;
  [Campo('PRECO_TAB')]
  property PRECO_TAB : Currency read FPRECO_TAB write SetPRECO_TAB;
  [Campo('KIT')]
  property KIT : String read FKIT write SetKIT;
  [Campo('GARANTIA')]
  property GARANTIA : Integer read FGARANTIA write SetGARANTIA;
  [Campo('VALIDADE')]
  property VALIDADE : TDateTime read FVALIDADE write SetVALIDADE;
  [Campo('FLG_FRACIONA')]
  property FLG_FRACIONA : String read FFLG_FRACIONA write SetFLG_FRACIONA;
  [Campo('CICMS_FRETE')]
  property CICMS_FRETE : Currency read FCICMS_FRETE write SetCICMS_FRETE;
  [Campo('STRIB')]
  property STRIB : Currency read FSTRIB write SetSTRIB;
  [Campo('CICMS')]
  property CICMS : Currency read FCICMS write SetCICMS;
  [Campo('ACRESC')]
  property ACRESC : Currency read FACRESC write SetACRESC;
  [Campo('DESCONTO')]
  property DESCONTO : Currency read FDESCONTO write SetDESCONTO;
  [Campo('CFIXO')]
  property CFIXO : Currency read FCFIXO write SetCFIXO;
  [Campo('PIS')]
  property PIS : Currency read FPIS write SetPIS;
  [Campo('COFINS')]
  property COFINS : Currency read FCOFINS write SetCOFINS;
  [Campo('PROMOCAO')]
  property PROMOCAO : String read FPROMOCAO write SetPROMOCAO;
  [Campo('CLAS_ABC')]
  property CLAS_ABC : String read FCLAS_ABC write SetCLAS_ABC;
  [Campo('DESC_MAX')]
  property DESC_MAX : Currency read FDESC_MAX write SetDESC_MAX;
  [Campo('MULTIPLO')]
  property MULTIPLO : Currency read FMULTIPLO write SetMULTIPLO;
  [Campo('CST_ORIG')]
  property CST_ORIG : Integer read FCST_ORIG write SetCST_ORIG;
  [Campo('COD_CFOP')]
  property COD_CFOP : Integer read FCOD_CFOP write SetCOD_CFOP;
  [Campo('PORC_IPI')]
  property PORC_IPI : Currency read FPORC_IPI write SetPORC_IPI;
  [Campo('PORC_ICMS')]
  property PORC_ICMS : Currency read FPORC_ICMS write SetPORC_ICMS;
  [Campo('PORC_BICMS')]
  property PORC_BICMS : Currency read FPORC_BICMS write SetPORC_BICMS;
  [Campo('PORC_DIF')]
  property PORC_DIF : Currency read FPORC_DIF write SetPORC_DIF;
  [Campo('NCM')]
  property NCM : String read FNCM write SetNCM;
  [Campo('CFOPDENTRO')]
  property CFOPDENTRO : String read FCFOPDENTRO write SetCFOPDENTRO;
  [Campo('CFOPFORA')]
  property CFOPFORA : String read FCFOPFORA write SetCFOPFORA;
  [Campo('CSOSN')]
  property CSOSN : Integer read FCSOSN write SetCSOSN;
  [Campo('SEL')]
  property SEL : String read FSEL write SetSEL;
  [Campo('CEST')]
  property CEST : String read FCEST write SetCEST;
  [Campo('NOME_REDUZ')]
  property NOME_REDUZ : String read FNOME_REDUZ write SetNOME_REDUZ;
  [Campo('MVA')]
  property MVA : Currency read FMVA write SetMVA;
  [Campo('MVA4')]
  property MVA4 : Currency read FMVA4 write SetMVA4;
  [Campo('MVA12')]
  property MVA12 : Currency read FMVA12 write SetMVA12;
  [Campo('BASE_REDUCAO')]
  property BASE_REDUCAO : Currency read FBASE_REDUCAO write SetBASE_REDUCAO;
  [Campo('BALANCA')]
  property BALANCA : String read FBALANCA write SetBALANCA;
  [Campo('PIS_SAIDA')]
  property PIS_SAIDA : Currency read FPIS_SAIDA write SetPIS_SAIDA;
  [Campo('COFINS_SAIDA')]
  property COFINS_SAIDA : Currency read FCOFINS_SAIDA write SetCOFINS_SAIDA;
  [Campo('PISO')]
  property PISO : String read FPISO write SetPISO;
  [Campo('METROS')]
  property METROS : Currency read FMETROS write SetMETROS;
  [Campo('SIT_PIS_COFINS')]
  property SIT_PIS_COFINS : Integer read FSIT_PIS_COFINS write SetSIT_PIS_COFINS;
 
end;
 
implementation
 
{ TPRODUTOS }
 
procedure TPRODUTOS.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;
 
procedure TPRODUTOS.SetNOME(const Value: String);
begin
  FNOME := Value;
end;
 
procedure TPRODUTOS.SetCOD_MARCA(const Value: Integer);
begin
  FCOD_MARCA := Value;
end;
 
procedure TPRODUTOS.SetCODIGO_BARRAS(const Value: String);
begin
  FCODIGO_BARRAS := Value;
end;
 
procedure TPRODUTOS.SetPRECO_CUSTO(const Value: Currency);
begin
  FPRECO_CUSTO := Value;
end;
 
procedure TPRODUTOS.SetPRECO(const Value: Currency);
begin
  FPRECO := Value;
end;
 
procedure TPRODUTOS.SetCOD_GRUPO(const Value: Integer);
begin
  FCOD_GRUPO := Value;
end;
 
procedure TPRODUTOS.SetCOD_UND(const Value: Integer);
begin
  FCOD_UND := Value;
end;
 
procedure TPRODUTOS.SetCOD_TRIBUTO(const Value: Integer);
begin
  FCOD_TRIBUTO := Value;
end;
 
procedure TPRODUTOS.SetDT_ULTCOMPRA(const Value: TDateTime);
begin
  FDT_ULTCOMPRA := Value;
end;
 
procedure TPRODUTOS.SetULT_FORNEC(const Value: Integer);
begin
  FULT_FORNEC := Value;
end;
 
procedure TPRODUTOS.SetULT_CONTROLE(const Value: Integer);
begin
  FULT_CONTROLE := Value;
end;
 
procedure TPRODUTOS.SetESTOQUE_MAX(const Value: Currency);
begin
  FESTOQUE_MAX := Value;
end;
 
procedure TPRODUTOS.SetPCOMIS(const Value: Currency);
begin
  FPCOMIS := Value;
end;
 
procedure TPRODUTOS.SetSITUACAO(const Value: String);
begin
  FSITUACAO := Value;
end;
 
procedure TPRODUTOS.SetEST_MIN(const Value: Currency);
begin
  FEST_MIN := Value;
end;
 
procedure TPRODUTOS.SetPRECO_PRAZO(const Value: Currency);
begin
  FPRECO_PRAZO := Value;
end;
 
procedure TPRODUTOS.SetOBS(const Value: String);
begin
  FOBS := Value;
end;
 
procedure TPRODUTOS.SetPESO(const Value: Currency);
begin
  FPESO := Value;
end;
 
procedure TPRODUTOS.SetGONDOLA(const Value: String);
begin
  FGONDOLA := Value;
end;
 
procedure TPRODUTOS.SetLADO(const Value: String);
begin
  FLADO := Value;
end;
 
procedure TPRODUTOS.SetPRATELEIRA(const Value: String);
begin
  FPRATELEIRA := Value;
end;
 
procedure TPRODUTOS.SetCOLUNA(const Value: String);
begin
  FCOLUNA := Value;
end;
 
procedure TPRODUTOS.SetUSU_INC(const Value: String);
begin
  FUSU_INC := Value;
end;
 
procedure TPRODUTOS.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;
 
procedure TPRODUTOS.SetUSU_ALT(const Value: String);
begin
  FUSU_ALT := Value;
end;
 
procedure TPRODUTOS.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;
 
procedure TPRODUTOS.SetCOD_FABR(const Value: String);
begin
  FCOD_FABR := Value;
end;
 
procedure TPRODUTOS.SetIPI(const Value: Currency);
begin
  FIPI := Value;
end;
 
procedure TPRODUTOS.SetICMS(const Value: Currency);
begin
  FICMS := Value;
end;
 
procedure TPRODUTOS.SetCUSTO_FINAL(const Value: Currency);
begin
  FCUSTO_FINAL := Value;
end;
 
procedure TPRODUTOS.SetPORC_VISTA(const Value: Currency);
begin
  FPORC_VISTA := Value;
end;
 
procedure TPRODUTOS.SetPORC_PRAZO(const Value: Currency);
begin
  FPORC_PRAZO := Value;
end;
 
procedure TPRODUTOS.SetFRETE(const Value: Currency);
begin
  FFRETE := Value;
end;
 
procedure TPRODUTOS.SetREFERENCIA(const Value: String);
begin
  FREFERENCIA := Value;
end;
 
procedure TPRODUTOS.SetCOD_FOR(const Value: String);
begin
  FCOD_FOR := Value;
end;
 
procedure TPRODUTOS.SetPRECO_TAB(const Value: Currency);
begin
  FPRECO_TAB := Value;
end;
 
procedure TPRODUTOS.SetKIT(const Value: String);
begin
  FKIT := Value;
end;
 
procedure TPRODUTOS.SetGARANTIA(const Value: Integer);
begin
  FGARANTIA := Value;
end;
 
procedure TPRODUTOS.SetVALIDADE(const Value: TDateTime);
begin
  FVALIDADE := Value;
end;
 
procedure TPRODUTOS.SetFLG_FRACIONA(const Value: String);
begin
  FFLG_FRACIONA := Value;
end;
 
procedure TPRODUTOS.SetCICMS_FRETE(const Value: Currency);
begin
  FCICMS_FRETE := Value;
end;
 
procedure TPRODUTOS.SetSTRIB(const Value: Currency);
begin
  FSTRIB := Value;
end;
 
procedure TPRODUTOS.SetCICMS(const Value: Currency);
begin
  FCICMS := Value;
end;
 
procedure TPRODUTOS.SetACRESC(const Value: Currency);
begin
  FACRESC := Value;
end;
 
procedure TPRODUTOS.SetDESCONTO(const Value: Currency);
begin
  FDESCONTO := Value;
end;
 
procedure TPRODUTOS.SetCFIXO(const Value: Currency);
begin
  FCFIXO := Value;
end;
 
procedure TPRODUTOS.SetPIS(const Value: Currency);
begin
  FPIS := Value;
end;
 
procedure TPRODUTOS.SetCOFINS(const Value: Currency);
begin
  FCOFINS := Value;
end;
 
procedure TPRODUTOS.SetPROMOCAO(const Value: String);
begin
  FPROMOCAO := Value;
end;
 
procedure TPRODUTOS.SetCLAS_ABC(const Value: String);
begin
  FCLAS_ABC := Value;
end;
 
procedure TPRODUTOS.SetDESC_MAX(const Value: Currency);
begin
  FDESC_MAX := Value;
end;
 
procedure TPRODUTOS.SetMULTIPLO(const Value: Currency);
begin
  FMULTIPLO := Value;
end;
 
procedure TPRODUTOS.SetCST_ORIG(const Value: Integer);
begin
  FCST_ORIG := Value;
end;
 
procedure TPRODUTOS.SetCOD_CFOP(const Value: Integer);
begin
  FCOD_CFOP := Value;
end;
 
procedure TPRODUTOS.SetPORC_IPI(const Value: Currency);
begin
  FPORC_IPI := Value;
end;
 
procedure TPRODUTOS.SetPORC_ICMS(const Value: Currency);
begin
  FPORC_ICMS := Value;
end;
 
procedure TPRODUTOS.SetPORC_BICMS(const Value: Currency);
begin
  FPORC_BICMS := Value;
end;
 
procedure TPRODUTOS.SetPORC_DIF(const Value: Currency);
begin
  FPORC_DIF := Value;
end;
 
procedure TPRODUTOS.SetNCM(const Value: String);
begin
  FNCM := Value;
end;
 
procedure TPRODUTOS.SetCFOPDENTRO(const Value: String);
begin
  FCFOPDENTRO := Value;
end;
 
procedure TPRODUTOS.SetCFOPFORA(const Value: String);
begin
  FCFOPFORA := Value;
end;
 
procedure TPRODUTOS.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
end;
 
procedure TPRODUTOS.SetSEL(const Value: String);
begin
  FSEL := Value;
end;
 
procedure TPRODUTOS.SetCEST(const Value: String);
begin
  FCEST := Value;
end;
 
procedure TPRODUTOS.SetNOME_REDUZ(const Value: String);
begin
  FNOME_REDUZ := Value;
end;
 
procedure TPRODUTOS.SetMVA(const Value: Currency);
begin
  FMVA := Value;
end;
 
procedure TPRODUTOS.SetMVA4(const Value: Currency);
begin
  FMVA4 := Value;
end;
 
procedure TPRODUTOS.SetMVA12(const Value: Currency);
begin
  FMVA12 := Value;
end;
 
procedure TPRODUTOS.SetBASE_REDUCAO(const Value: Currency);
begin
  FBASE_REDUCAO := Value;
end;
 
procedure TPRODUTOS.SetBALANCA(const Value: String);
begin
  FBALANCA := Value;
end;
 
procedure TPRODUTOS.SetPIS_SAIDA(const Value: Currency);
begin
  FPIS_SAIDA := Value;
end;
 
procedure TPRODUTOS.SetCOFINS_SAIDA(const Value: Currency);
begin
  FCOFINS_SAIDA := Value;
end;
 
procedure TPRODUTOS.SetPISO(const Value: String);
begin
  FPISO := Value;
end;
 
procedure TPRODUTOS.SetMETROS(const Value: Currency);
begin
  FMETROS := Value;
end;
 
procedure TPRODUTOS.SetSIT_PIS_COFINS(const Value: Integer);
begin
  FSIT_PIS_COFINS := Value;
end;
 
end.
