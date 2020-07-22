unit uConnection;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Data.DB, FireDAC.Comp.Client, VCL.Dialogs,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, uConfig,SysUtils;

type
  TConnection = class
  strict private
    class var FInstance: TFDConnection;
    constructor CreatePrivate;
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    class function GetInstance: TFDConnection;
    property Conexao: TFDConnection read FConnection write FConnection;
    function Conectar(var Error: String): Boolean;
    procedure Rollback;
  end;
implementation

{ TConnection }

function TConnection.Conectar(var Error: String): Boolean;
begin
  Result := False;
  try
    FConnection.Connected := False;
    with FConnection.Params do
    begin
      if (CFG.Instance <> '') and (UpperCase(CFG.Instance) <> 'DEFAULT') then
        Values['Server'] := CFG.HostName + '\' + CFG.Instance
      else
        Values['Server'] := CFG.HostName;
      Values['Database'] := CFG.DataBase;
      Values['User_Name'] := CFG.Login;
      Values['Password'] := CFG.Password;
    end;
    FConnection.Connected := True;
    Result := FConnection.Connected;
  except
    on E:Exception do
    begin
      Result := False;
      Error := 'Houve um problema ao conectar ao banco: ' + E.Message;
    end;
  end;
end;

constructor TConnection.Create;
begin
  raise Exception.Create('Object Singleton');
end;

constructor TConnection.CreatePrivate;
var
  Error: String;
begin
  inherited Create;
  FConnection := TFDConnection.Create(nil);
  FConnection.DriverName := 'FB';
  FInstance := FConnection;
  if not (Conectar(Error)) then
    raise Exception.Create(Error);
end;

class function TConnection.GetInstance: TFDConnection;
begin
  if not Assigned(FInstance) then
    TConnection.CreatePrivate;
  Result := FInstance;
end;

procedure TConnection.Rollback;
begin
  FConnection.Rollback;
end;

end.
