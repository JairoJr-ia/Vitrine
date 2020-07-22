unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, Vcl.StdCtrls, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmPrincipal = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    FDTable1: TFDTable;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
    Path : String;
    procedure GerarEntidade(aTableName: String);

    procedure gerarModel(aTableName: String);
    procedure gerarModelInterfaces(aTableName : String);

    procedure gerarController(aTableName: String);
    procedure gerarControllerInterfaces(aTableName : String);

    procedure gerarModelFachada(Tabelas : TStringList);
    procedure gerarModelFachadaInterfaces(Tabelas : TStringList);

    procedure gerarControllerFachada(Tabelas : TStringList);
    procedure gerarControllerFachadaInterfaces(Tabelas : TStringList);

    function dataTypeField(aDataType : TFieldType) : String;
    procedure gerarControllerGeneric(aTableName: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button10Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    for I := 0 to Pred(Tabelas.Count) do
    begin

      Path := Path + '\Controller\Generic';

      if not DirectoryExists(path) then
        ForceDirectories(Path);

      gerarControllerGeneric(Tabelas[I]);

      Path := ExtractFilePath(Application.ExeName) + '/src';

    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Controller Generic Gerado com Sucesso');
  end;


end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);
      Path := Path + '/Entidades';

    if not DirectoryExists(path) then
      ForceDirectories(Path);

    for I := 0 to Pred(Tabelas.Count) do
    begin
      FDTable1.Active := False;
      FDTable1.TableName := Tabelas[I];
      FDTable1.Active := True;

      gerarEntidade(Tabelas[I]);
    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Entidades Gerada com Sucesso');
  end;

end;

procedure TfrmPrincipal.gerarModel(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try
    ArqController.Add('unit Vitrine.Model.'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Vitrine.Model.'+aTableName+'.Interfaces, Entidade.'+aTableName+',');
    ArqController.Add('  Data.DB, SimpleInterface, SimpleDAO,SimpleQueryFireDAC,');
    ArqController.Add('  uConnection;');
    ArqController.Add(' ');
    ArqController.Add('Type');
    ArqController.Add('  TModel'+aTableName+' = class(TInterfacedObject, iModel'+aTableName+')');
    ArqController.Add('    private');
    ArqController.Add('      FEntidade : T'+aTableName+';');
    ArqController.Add('      FDAO : iSimpleDAO<T'+aTableName+'>;');
    ArqController.Add('      FDataSource : TDataSource;');
    ArqController.Add('    public');
    ArqController.Add('      constructor Create;');
    ArqController.Add('      destructor Destroy; override;');
    ArqController.Add('      class function New : iModel'+aTableName+';');
    ArqController.Add('      function Entidade : T'+aTableName+';');
    ArqController.Add('      function DAO : iSimpleDAO<T'+aTableName+'>;');
    ArqController.Add('      function DataSource(aDataSource : TDataSource) : iModel'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('{ TModel'+aTableName+' }');
    ArqController.Add(' ');
    ArqController.Add('uses System.SysUtils;');
    ArqController.Add(' ');
    ArqController.Add('constructor TModel'+aTableName+'.Create;');
    ArqController.Add('begin');
    ArqController.Add('  FEntidade := T'+aTableName+'.Create;');
    ArqController.Add(' ');
    ArqController.Add('  FDAO := TSimpleDAO<T'+aTableName+'>');
    ArqController.Add('            .New(TSimpleQueryFireDAC');
    ArqController.Add('              .New(TConnection.GetInstance));');
    ArqController.Add(' ');
    ArqController.Add('{   FDAO := TSimpleDAO<T'+aTableName+'>');
    ArqController.Add('            .New(TSimpleQueryRestDW<T'+aTableName+'>');
    ArqController.Add('              .New(conexaoRestDW.RESTDWDataBase1)); }');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TModel'+aTableName+'.DAO: iSimpleDAO<T'+aTableName+'>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := FDAO;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TModel'+aTableName+'.DataSource(aDataSource: TDataSource): iModel'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDataSource := aDataSource;');
    ArqController.Add('  FDAO.DataSource(FDataSource);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('destructor TModel'+aTableName+'.Destroy;');
    ArqController.Add('begin');
    ArqController.Add('  FreeAndNil(FEntidade);');
    ArqController.Add(' ');
    ArqController.Add('  inherited;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TModel'+aTableName+'.Entidade: T'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := FEntidade;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('class function TModel'+aTableName+'.New : iModel'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self.Create;');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Model.' +
    aTableName + '.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.gerarModelFachada(Tabelas : TStringList);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Model;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');

    ArqController.Add('  Vitrine.Model.Interfaces,');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      if i <> Pred(Tabelas.Count) then
      begin

        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+',');
        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+'.Interfaces,');

      end
      else
      begin
        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+',');
        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+'.Interfaces;');
      end;


    end;

    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  TModel = class(TInterfacedObject, iModel)');
    ArqController.Add('    constructor Create;');
    ArqController.Add('    destructor Destroy; override;');
    ArqController.Add('    class function New : iModel;');

    for I := 0 to Pred(Tabelas.Count) do
    begin

      ArqController.Add('    function '+Tabelas[I]+' : iModel'+Tabelas[I]+';');

    end;

    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('{ TModel }');
    ArqController.Add(' ');
    ArqController.Add('constructor TModel.Create;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('destructor TModel.Destroy;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('  inherited;');
    ArqController.Add('end;');
    ArqController.Add(' ');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      ArqController.Add('function TModel.'+Tabelas[I]+': iModel'+Tabelas[I]+';');
      ArqController.Add('begin');
      ArqController.Add('  Result := TModel'+Tabelas[I]+'.New;');
      ArqController.Add('end;');
      ArqController.Add(' ');

    end;

    ArqController.Add('class function TModel.New: iModel;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self.Create;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Model.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.gerarModelFachadaInterfaces(Tabelas : TStringList);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Model.Interfaces;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');

    ArqController.Add('uses');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      if i <> Pred(Tabelas.Count) then
        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+'.Interfaces, ')
      else
        ArqController.Add('  Vitrine.Model.'+Tabelas[I]+'.Interfaces; ')

    end;

    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  iModel = interface');
    ArqController.Add('    [''{A995ADB8-92B8-4B3E-9DE5-4EA487027377}'']');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      ArqController.Add('    function '+Tabelas[I]+' : iModel'+Tabelas[I]+'; ');

    end;

    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Model.Interfaces.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.gerarModelInterfaces(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Model.'+aTableName+'.Interfaces;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Entidade.'+aTableName+', SimpleInterface, Data.DB;');
    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  iModel'+aTableName+' = interface');
    ArqController.Add('    [''{89B2FE0D-5FAE-43B8-80DA-BB8720D1831C}'']');
    ArqController.Add('    function Entidade : T'+aTableName+';');
    ArqController.Add('    function DAO : iSimpleDAO<T'+aTableName+'>;');
    ArqController.Add('    function DataSource(aDataSource : TDataSource) : iModel'+aTableName+';');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Model.' +
    aTableName + '.Interfaces.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    for I := 0 to Pred(Tabelas.Count) do
    begin
      Path := Path + '\Model\Entidades';

      if not DirectoryExists(path) then
        ForceDirectories(Path);

      gerarModelInterfaces(Tabelas[I]);

      Path := ExtractFilePath(Application.ExeName) + '/src';

    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Model Interfaces Gerado com Sucesso');
  end;


end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    for I := 0 to Pred(Tabelas.Count) do
    begin
      Path := Path + '\Model\Entidades';

      if not DirectoryExists(path) then
        ForceDirectories(Path);

      gerarModel(Tabelas[I]);

      Path := ExtractFilePath(Application.ExeName) + '/src';

    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Model Gerado com Sucesso');
  end;

end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    for I := 0 to Pred(Tabelas.Count) do
    begin

      Path := Path + '\Controller\Entidades';

      if not DirectoryExists(path) then
        ForceDirectories(Path);

      gerarControllerInterfaces(Tabelas[I]);

      Path := ExtractFilePath(Application.ExeName) + '/src';

    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Controller Interfaces Gerado com Sucesso');
  end;


end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    for I := 0 to Pred(Tabelas.Count) do
    begin

      Path := Path + '\Controller\Entidades';

      if not DirectoryExists(path) then
        ForceDirectories(Path);

      gerarController(Tabelas[I]);

      Path := ExtractFilePath(Application.ExeName) + '/src';

    end;
  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Controller Gerado com Sucesso');
  end;

end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    Path := Path + '\Model\';

    gerarModelFachadaInterfaces(Tabelas);

  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Fachada Model Interfaces Gerado com Sucesso');
  end;


end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    Path := Path + '\Controller\';

    gerarControllerFachadaInterfaces(Tabelas);

  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Fachada Controller Interfaces Gerado com Sucesso');
  end;

end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    Path := Path + '\Model\';

    gerarModelFachada(Tabelas);

  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Fachada Model Gerado com Sucesso');
  end;



end;

procedure TfrmPrincipal.Button9Click(Sender: TObject);
var
  Tabelas: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + '/src';

  if not DirectoryExists(Path) then
    ForceDirectories(Path);

  FDConnection1.Connected := True;

  Tabelas := TStringList.Create;

  try
    FDConnection1.GetTableNames('','','',Tabelas, [osMy]);

    Path := Path + '\Controller\';

    gerarControllerFachada(Tabelas);

  finally
    FDConnection1.Connected := False;
    Tabelas.Free;
    ShowMessage('Fachada Controller Gerado com Sucesso');
  end;

end;

function TfrmPrincipal.dataTypeField(aDataType: TFieldType): String;
begin
  case aDataType of
    ftString, ftWideString : result := 'String';

    ftLargeint, ftSmallint, ftInteger, ftWord : result := 'Integer';

    ftBoolean: result := 'Boolean';

    ftFloat, ftCurrency, ftFMTBcd : result := 'Currency';

    ftDate, ftTime, ftDateTime,ftTimeStamp : result := 'TDateTime';

    ftUnknown, ftVariant : result := 'Variant';

  end;
end;

procedure TfrmPrincipal.gerarControllerGeneric(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try
    ArqController.Add('unit Vitrine.Controller.'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Vitrine.Model.DAOGeneric,');
    ArqController.Add('  Entidade.'+aTableName+',');
    ArqController.Add('  Vitrine.Controller.DAOGeneric.Interfaces,');
    ArqController.Add('  Data.DB,');
    ArqController.Add('  VCL.Forms;');
    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  TController'+aTableName+'<T : class, constructor> = class(TInterfacedObject, iControllerDAOGeneric<T>)');
    ArqController.Add('    private');
    ArqController.Add('      FDAO : iDAOGeneric<T>;');
    ArqController.Add('      FOrderBy : String;');
    ArqController.Add('      FWhere, FFiltro,FFirst, FSkip : String;');
    ArqController.Add(' ');
    ArqController.Add('    public');
    ArqController.Add('      constructor Create;');
    ArqController.Add('      destructor Destroy; override;');
    ArqController.Add('      class function New : iControllerDAOGeneric<T>;');
    ArqController.Add(' ');
    ArqController.Add('      function Insert   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add('      function Insert(aValue : T) : iControllerDAOGeneric<T>; overload;');
    ArqController.Add(' ');
    ArqController.Add('      function Update   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add('      function Update(aValue : T)   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add(' ');
    ArqController.Add('      function Delete   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add('      function Delete(aValue : T)   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add('      function Find     : iControllerDAOGeneric<T>; overload;');
    ArqController.Add(' ');
    ArqController.Add('      function Find(const aID   : Integer)   : iControllerDAOGeneric<T>; overload;');
    ArqController.Add('      function Find(const aName : String)    : iControllerDAOGeneric<T>; overload;');
    ArqController.Add(' ');
    ArqController.Add('      function FindLast : iControllerDAOGeneric<T>;');
    ArqController.Add('      function NumberRecords : Integer;');
    ArqController.Add(' ');
    ArqController.Add('      function DataSource(aDataSource : TDataSource) : iControllerDAOGeneric<T>;');
    ArqController.Add('      function BindForm(aForm : TForm)               : iControllerDAOGeneric<T>;');
    ArqController.Add(' ');
    ArqController.Add('      function OrderBy(const aValue : String) : iControllerDAOGeneric<T>;');
    ArqController.Add('      function Where(const aWhere, aValue : String) : iControllerDAOGeneric<T>;');
    ArqController.Add('      function Limit(const aFirst, aSkip : Integer) : iControllerDAOGeneric<T>;');
    ArqController.Add('  end; ');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  System.SysUtils;');
    ArqController.Add(' ');
    ArqController.Add('{ TController'+aTableName+' }');
    ArqController.Add(' ');ArqController.Add('function TController'+aTableName+'<T>.BindForm(aForm: TForm): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.DAO.BindForm(aForm);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('constructor TController'+aTableName+'<T>.Create;');
    ArqController.Add('var');
    ArqController.Add('  F'+aTableName+' : T'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  FDAO := TDAOGeneric<T>.New;');
    ArqController.Add(' ');
    ArqController.Add('  try');
    ArqController.Add('    F'+aTableName+' := T'+aTableName+'.Create;');
    ArqController.Add('    FOrderBy := ''CODIGO'';');
    ArqController.Add('  finally');
    ArqController.Add('    FreeAndNil(F'+aTableName+');');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('  FWhere := '''';');
    ArqController.Add('  FFiltro := '''';');
    ArqController.Add('  FFirst := ''100'';');
    ArqController.Add('  FSkip := ''0'';');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.DataSource(');
    ArqController.Add('  aDataSource: TDataSource): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.DAO.DataSource(aDataSource);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Delete: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Delete;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Delete(aValue: T): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Delete(aValue);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('destructor TController'+aTableName+'<T>.Destroy;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('  inherited;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Find: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('  Result := Self;');
    ArqController.Add(' ');
    ArqController.Add('  if FWhere = ''''then');
    ArqController.Add('  begin');
    ArqController.Add('    FDAO.DAO');
    ArqController.Add('      .SQL');
    ArqController.Add('        .Fields(''FIRST '' + FFirst +  '' SKIP '' +  FSkip ) ');
    ArqController.Add('        .Fields('''+aTableName+'.* '')');
    ArqController.Add('        .OrderBy(FOrderBy)');
    ArqController.Add('        .&End');
    ArqController.Add('      .Find;');
    ArqController.Add(' ');
    ArqController.Add('  end');
    ArqController.Add('  else');
    ArqController.Add('  begin');
    ArqController.Add('    FDAO.DAO');
    ArqController.Add('      .SQL');
    ArqController.Add('        .Fields(''FIRST '' + FFirst +  '' SKIP '' +  FSkip ) ');
    ArqController.Add('        .Fields('''+aTableName+'.* '')');
    ArqController.Add('        .Where(FWhere+QuotedStr(FFiltro))');
    ArqController.Add('        .OrderBy(FOrderBy)');
    ArqController.Add('        .&End');
    ArqController.Add('      .Find;');
    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('  FWhere := '''';');
    ArqController.Add('  FFiltro := '''';');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Find(const aName: String): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.DAO');
    ArqController.Add('    .SQL');
    ArqController.Add('      .Where(''NOME LIKE QuotedStr(aName)'')');
    ArqController.Add('      .&End');
    ArqController.Add('    .Find;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Find(const aID: Integer): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.DAO');
    ArqController.Add('    .SQL');
    ArqController.Add('      .Where(''CODIGO = ''+IntToStr(aID))');
    ArqController.Add('      .&End');
    ArqController.Add('    .Find;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.FindLast: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.DAO');
    ArqController.Add('    .SQL');
    ArqController.Add('      .Fields(''MAX(CODIGO) CODIGO'')');
    ArqController.Add('      .&End');
    ArqController.Add('    .Find;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Insert(aValue: T): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Insert(aValue);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Limit(const aFirst,');
    ArqController.Add('  aSkip: Integer): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FFirst := IntToStr(aFirst);');
    ArqController.Add('  FSkip := IntToStr(aSkip);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Insert: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Insert;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('class function TController'+aTableName+'<T>.New: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self.Create;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.NumberRecords: Integer;');
    ArqController.Add('begin');
    ArqController.Add('  if FWhere = '''' then');
    ArqController.Add('  begin');
    ArqController.Add('    FDAO.DAO');
    ArqController.Add('      .SQL');
    ArqController.Add('        .Fields(''COUNT(CODIGO) QTDE'')');
    ArqController.Add('        .&End');
    ArqController.Add('      .Find;');
    ArqController.Add(' ');
    ArqController.Add('  end');
    ArqController.Add('  else');
    ArqController.Add('  begin');
    ArqController.Add('    FDAO.DAO');
    ArqController.Add('      .SQL');
    ArqController.Add('        .Fields(''COUNT(CODIGO) QTDE'')');
    ArqController.Add('        .Where(FWhere+QuotedStr(FFiltro))');
    ArqController.Add('        .&End');
    ArqController.Add('      .Find;');
    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('  FWhere := '''';');
    ArqController.Add('  FFiltro := '''';');
    ArqController.Add(' ');
    ArqController.Add('  Result := FDAO.DataSource.DataSet.FieldByName(''QTDE'').AsInteger');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.OrderBy(const aValue: String): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FOrderBy := aValue;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Update(aValue: T): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Update(aValue);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Where(const aWhere,aValue: String): iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FWhere := aWhere;');
    ArqController.Add('  FFiltro := aValue;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'<T>.Update: iControllerDAOGeneric<T>;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDAO.Update;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('end.');


  finally
    ArqController.SaveToFile(Path + '/Vitrine.Controller.' +
    aTableName + '.pas');
    ArqController.Free;
  end;

end;



procedure TfrmPrincipal.gerarController(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try
    ArqController.Add('unit Vitrine.Controller.'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Vitrine.Controller.'+aTableName+'.Interfaces,Data.DB,');
    ArqController.Add('  Entidade.'+aTableName+', Vitrine.Model.'+aTableName+'.Interfaces,');
    ArqController.Add('  Vitrine.Model,');
    ArqController.Add('  System.Generics.Collections;');
    ArqController.Add(' ');
    ArqController.Add('Type');
    ArqController.Add('  TController'+aTableName+' = class(TInterfacedObject, iController'+aTableName+')');
    ArqController.Add('    private');
    ArqController.Add('      FModel : iModel'+aTableName+';');
    ArqController.Add('      FDataSource : TDataSource;');
    ArqController.Add('      FList : TObjectList<T'+aTableName+'>;');
    ArqController.Add('      FEntidade : T'+aTableName+';');
    ArqController.Add('      procedure DataChange(Sender : TObject; Field : TField);');
    ArqController.Add('    public');
    ArqController.Add('      constructor Create;');
    ArqController.Add('      destructor Destroy; override;');
    ArqController.Add('      class function New : iController'+aTableName+';');
    ArqController.Add('      function DataSource(aDataSource : TDataSource) : iController'+aTableName+';');
    ArqController.Add('      function Buscar : iController'+aTableName+'; overload;');
    ArqController.Add('      function Buscar(aID : Integer) : iController'+aTableName+'; overload;');
    ArqController.Add('      function Buscar(aNome : String) : iController'+aTableName+'; overload;');
    ArqController.Add('      function BuscarUltControle : Integer;');
    ArqController.Add('      function Insert : iController'+aTableName+';');
    ArqController.Add('      function Update : iController'+aTableName+';');
    ArqController.Add('      function Delete : iController'+aTableName+';');
    ArqController.Add('      function Entidade : T'+aTableName+';');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  System.SysUtils;');
    ArqController.Add(' ');
    ArqController.Add('{ TController'+aTableName+' }');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Buscar: iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add(' ');
    ArqController.Add('  if Assigned(FList) then');
    ArqController.Add('    FList.Free;');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.DisableControls;');
    ArqController.Add('  //FList := FModel.DAO.Find;');
    ArqController.Add('  FDataSource.DataSet.EnableControls;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Buscar(aID: Integer): iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add(' ');
    ArqController.Add('  if Assigned(FList) then');
    ArqController.Add('    FList.Free;');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.DisableControls;');
    ArqController.Add(' ');
    ArqController.Add('{  FList := FModel.DAO');
    ArqController.Add('             .SQL');
    ArqController.Add('               .Where(''COD_BARRAS = '' + IntToStr(aID))');
    ArqController.Add(' ');
    ArqController.Add('             .&End');
    ArqController.Add('           .Find;         }');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.RecordCount;');
    ArqController.Add('  FDataSource.DataSet.EnableControls;');
    ArqController.Add(' ');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Buscar(aNome: String): iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add(' ');
    ArqController.Add('  if Assigned(FList) then');
    ArqController.Add('    FList.Free;');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.DisableControls;');
    ArqController.Add('{  FList := FModel.DAO');
    ArqController.Add('            .SQL');
    ArqController.Add('              .Where(''COD_BARRAS = '' + QuotedStr(aNome)');
    ArqController.Add('               )');
    ArqController.Add('             .&End');
    ArqController.Add('           .Find; }');
    ArqController.Add('  FDataSource.DataSet.EnableControls;');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.BuscarUltControle: Integer;');
    ArqController.Add('begin');
    ArqController.Add('  if Assigned(FList) then');
    ArqController.Add('    FList.Free;');
    ArqController.Add(' ');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.DisableControls;');
    ArqController.Add('{  FList := FModel.DAO');
    ArqController.Add('            .SQL');
    ArqController.Add('               .Fields(''MAX(cod_barras) AS cod_barras'')');
    ArqController.Add('             .&End');
    ArqController.Add('           .Find; }');
    ArqController.Add(' ');
    ArqController.Add('  Result := FDataSource.DataSet.FieldByName(''COD_BARRAS'').AsInteger;');
    ArqController.Add(' ');
    ArqController.Add('  FDataSource.DataSet.EnableControls;');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('constructor TController'+aTableName+'.Create;');
    ArqController.Add('begin');
    ArqController.Add('  FModel := TModel.New.'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add(' procedure TController'+aTableName+'.DataChange(Sender: TObject; Field: TField);');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.DataSource(');
    ArqController.Add('  aDataSource: TDataSource): iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FDataSource := aDataSource;');
    ArqController.Add('  FModel.DataSource(FDataSource);');
    ArqController.Add('  FDataSource.OnDataChange := DataChange;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Delete: iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FModel.DAO.Delete(FModel.Entidade);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('destructor TController'+aTableName+'.Destroy;');
    ArqController.Add('begin');
    ArqController.Add('  if Assigned(FList) then');
    ArqController.Add('    FList.Free;');
    ArqController.Add(' ');
    ArqController.Add('  inherited;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Entidade: T'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := FModel.Entidade;');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Insert: iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FModel.DAO.Insert(FModel.Entidade);');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('class function TController'+aTableName+'.New  : iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self.Create;');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('function TController'+aTableName+'.Update: iController'+aTableName+';');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self;');
    ArqController.Add('  FModel.DAO.Update(FModel.Entidade);');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Controller.' +
    aTableName + '.pas');
    ArqController.Free;
  end;

end;


procedure TfrmPrincipal.gerarControllerFachada(Tabelas: TStringList);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Controller;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Vitrine.Controller.Interfaces,');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      if i <> Pred(Tabelas.Count) then
      begin
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+',');
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+'.Interfaces,');

      end
      else
      begin
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+',');
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+'.Interfaces;');

      end;

    end;

    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  TController = class(TInterfacedObject, iController)');
    ArqController.Add('    constructor Create;');
    ArqController.Add('    destructor Destroy; override;');
    ArqController.Add('    class function New : iController;');

    for I := 0 to Pred(Tabelas.Count) do
    begin

      ArqController.Add('    function '+Tabelas[I]+' : iController'+Tabelas[I]+';');

    end;

    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('{ TController }');
    ArqController.Add(' ');
    ArqController.Add('constructor TController.Create;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('destructor TController.Destroy;');
    ArqController.Add('begin');
    ArqController.Add(' ');
    ArqController.Add('  inherited;');
    ArqController.Add('end;');
    ArqController.Add(' ');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      ArqController.Add('function TController.'+Tabelas[I]+': iController'+Tabelas[I]+';');
      ArqController.Add('begin');
      ArqController.Add('  Result := TController'+Tabelas[I]+'.New;');
      ArqController.Add('end;');
      ArqController.Add(' ');

    end;

    ArqController.Add('class function TController.New: iController;');
    ArqController.Add('begin');
    ArqController.Add('  Result := Self.Create;');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Controller.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.gerarControllerFachadaInterfaces(Tabelas: TStringList);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Controller.Interfaces;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');

    for I := 0 to Pred(Tabelas.Count) do
    begin
      if i <> Pred(Tabelas.Count) then
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+'.Interfaces, ')
      else
        ArqController.Add('  Vitrine.Controller.'+Tabelas[I]+'.Interfaces; ')

    end;

    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  iController = interface');
    ArqController.Add('    [''{AE882F03-62C4-43B0-ABD0-FCC6E7A5454C}'']');

    for I := 0 to Pred(Tabelas.Count) do
    begin

      ArqController.Add('    function '+Tabelas[I]+' : iController'+Tabelas[I]+';');

    end;

    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Controller.Interfaces.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.gerarControllerInterfaces(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field : String;
begin
  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Vitrine.Controller.'+aTableName+'.Interfaces;');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  Data.DB, Entidade.'+aTableName+';');
    ArqController.Add('type');
    ArqController.Add(' ');
    ArqController.Add('  iController'+aTableName+' = interface');
    ArqController.Add('    [''{7E4C6BEB-15C3-4DEA-9167-1105F3033BC0}'']');
    ArqController.Add('    function DataSource(aDataSource : TDataSource) : iController'+aTableName+';');
    ArqController.Add('    function Buscar : iController'+aTableName+'; overload;');
    ArqController.Add('    function Buscar(aID : Integer) : iController'+aTableName+'; overload;');
    ArqController.Add('    function Buscar(aNome : String) : iController'+aTableName+'; overload;');
    ArqController.Add('    function BuscarUltControle : Integer;');
    ArqController.Add('    function Insert : iController'+aTableName+';');
    ArqController.Add('    function Update : iController'+aTableName+';');
    ArqController.Add('    function Delete : iController'+aTableName+';');
    ArqController.Add('    function Entidade : T'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('  end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('end.');

  finally
    ArqController.SaveToFile(Path + '/Vitrine.Controller.' +
    aTableName + '.Interfaces.pas');
    ArqController.Free;
  end;

end;

procedure TfrmPrincipal.GerarEntidade(aTableName: String);
var
  ArqController : TStringList;
  I : Integer;
  field, fieldType : String;

begin

  ArqController := TStringList.Create;
  try

    ArqController.Add('unit Entidade.'+aTableName+';');
    ArqController.Add(' ');
    ArqController.Add('interface');
    ArqController.Add(' ');
    ArqController.Add('uses');
    ArqController.Add('  SimpleAttributes;');
    ArqController.Add(' ');
    ArqController.Add('type');
    ArqController.Add('  [Tabela('''+aTableName+''')]');
    ArqController.Add('  T'+aTableName+' = class');
    ArqController.Add('  private');

    for i := 0 to FDTable1.FieldList.Count -1 do
    begin
      field     := FDTable1.FieldList.Fields[i].FieldName;
      fieldType := dataTypeField(FDTable1.FieldList.Fields[i].DataType);

      ArqController.Add('    F'+field+': '+ fieldType +';');

    end;

    for i := 0 to FDTable1.FieldList.Count -1 do
    begin
      field     := FDTable1.FieldList.Fields[i].FieldName;
      fieldType := dataTypeField(FDTable1.FieldList.Fields[i].DataType);

      ArqController.Add('    procedure Set'+field+'(const Value: '+fieldType+');');

    end;

    ArqController.Add(' ');
    ArqController.Add('  public');
    ArqController.Add(' ');
    ArqController.Add('  published');

    for i := 0 to FDTable1.FieldList.Count -1 do
    begin
      field     := FDTable1.FieldList.Fields[i].FieldName;
      fieldType := dataTypeField(FDTable1.FieldList.Fields[i].DataType);

      ArqController.Add('  [Campo('''+field+''')]');
      ArqController.Add('  property '+field+' : '+fieldType+' read F'+field+' write Set'+field+';');

    end;

    ArqController.Add(' ');
    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');

    ArqController.Add('{ T'+aTableName+' }');
    ArqController.Add(' ');

    for i := 0 to FDTable1.FieldList.Count -1 do
    begin
      field     := FDTable1.FieldList.Fields[i].FieldName;
      fieldType := dataTypeField(FDTable1.FieldList.Fields[i].DataType);

      ArqController.Add('procedure T'+aTableName+'.Set'+field+'(const Value: '+fieldType+');');
      ArqController.Add('begin');
      ArqController.Add('  F'+field+' := Value;');
      ArqController.Add('end;');
      ArqController.Add(' ');

    end;

    ArqController.Add('end.');

    {ArqController.Add('unit Entidade.'+aTableName+';');
    ArqController.Add(' ');

    ArqController.Add('interface');
    ArqController.Add(' ');

    ArqController.Add('uses');
    ArqController.Add('  SimpleAttributes;');
    ArqController.Add(' ');

    ArqController.Add('type');
    ArqController.Add('  [Tabela('''+aTableName+''')]');
    ArqController.Add('  T'+aTableName+' = class');
    ArqController.Add('  private');
    ArqController.Add('  public');
    ArqController.Add('  published');

    for i := 0 to FDTable1.FieldList.Count -1 do
    begin
      field := FDTable1.FieldList.Fields[i].FieldName;

      ArqController.Add('  [Campo('''+ field +''')]');
      ArqController.Add('  property '+ field +' : '+ dataTypeField(
      FDTable1.FieldList.Fields[i].DataType) +';');

    end;

    ArqController.Add('end;');
    ArqController.Add(' ');
    ArqController.Add('implementation');
    ArqController.Add(' ');
    ArqController.Add('end.');    }
  finally
    ArqController.SaveToFile(Path + '/Entidade.' +
    aTableName + '.pas');
    ArqController.Free;
  end;
end;

end.
