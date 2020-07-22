unit uConfig;

interface

uses SysUtils,IniFiles,VCL.Forms;

type
  TConfig = class(TIniFile)
  private
    function GetDatabase: String;
    function GetHostname: String;
    function GetInstance: String;
    function GetLogin: String;
    function GetPassword: String;
    procedure SetDatabase(const Value: String);
    procedure SetHostname(const Value: String);
    procedure SetInstance(const Value: String);
    procedure SetLogin(const Value: String);
    procedure SetPassword(const Value: String);
  public
    property Instance: String read GetInstance write SetInstance;
    property Hostname: String read GetHostname write SetHostname;
    property Login: String read GetLogin write SetLogin;
    property Password: String read GetPassword write SetPassword;
    property Database: String read GetDatabase write SetDatabase;
  end;

var
  CFG: TConfig;

implementation

{ TConfig }

function TConfig.GetDatabase: String;
begin
  Result := ReadString('CONFIG','DATABASE','');
end;

function TConfig.GetHostname: String;
begin
  Result := ReadString('CONFIG','HOSTNAME','');
end;

function TConfig.GetInstance: String;
begin
  Result := ReadString('CONFIG','INSTANCE','');
end;

function TConfig.GetLogin: String;
begin
  Result := ReadString('CONFIG','LOGIN','');
end;

function TConfig.GetPassword: String;
begin
  Result := ReadString('CONFIG','PASSWORD','');
end;

procedure TConfig.SetDatabase(const Value: String);
begin
  WriteString('CONFIG','DATABASE',Value);
end;

procedure TConfig.SetHostname(const Value: String);
begin
  WriteString('CONFIG','HOSTNAME','');
end;

procedure TConfig.SetInstance(const Value: String);
begin
  WriteString('CONFIG','INSTANCE','');
end;

procedure TConfig.SetLogin(const Value: String);
begin
  WriteString('CONFIG','LOGIN','');
end;

procedure TConfig.SetPassword(const Value: String);
begin
  WriteString('CONFIG','PASSWORD','');
end;

initialization
  CFG := TConfig.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
finalization
  FreeAndNil(CFG);

end.
