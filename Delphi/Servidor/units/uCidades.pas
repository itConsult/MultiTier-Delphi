unit uCidades;

interface

uses uPersistentObject,uAtrib;

implementation

type
  [Tablename('CIDADES')]
  TCidade = class(TPersintentObject)
  private
    FID: Integer;
    FNome: String;
    FEstado: String;
  public
    [FieldName('ID_CIDADES',True,True)]
    property ID: Integer read FID write FID;
    [FieldName('NOME')]
    property Nome: String read FNome write FNome;
    [FieldName('ESTADO')]
    property Estado: String read FEstado write FEstado;
    procedure Load(const AValue: Integer); override;
  end;

{ TCidade }

procedure TCidade.Load(const AValue: Integer);
begin
  ID := AValue;
  inherited;
end;

end.
