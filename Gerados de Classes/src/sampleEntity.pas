unit sampleEntity;

interface

uses
  SimpleAttributes;

type
  [Tabela('ENTITY')]
  TEntidade = class
    private
    FID: String;
    procedure SetID(const Value: String);
    public
    published
    [Campo('ID'), PK]
    property ID : String read FID write SetID;
  end;

implementation

{ TEntidade }

procedure TEntidade.SetID(const Value: String);
begin
  FID := Value;
end;

end.
