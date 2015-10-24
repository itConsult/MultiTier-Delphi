unit uClientes;

interface

uses uPersistentObject,uAtrib;

type
  [Tablename('CLIENTES')]
  TCliente = class(TPersintentObject)
  private
    FIDCidade: Integer;
    FCnpjCpf: String;
    FID: Integer;
    FIERG: String;
    FNome: String;
    FTipo: Byte;
    FEndereco: String;
    FTelefone: String;
  public
    [FieldName('ID_CLIENTES',True,True)]
    property ID: Integer read FID write FID;
    [FieldName('NOME')]
    property Nome: String read FNome write FNome;
    [FieldName('CPFCNPJ')]
    property CnpjCpf: String read FCnpjCpf write FCnpjCpf;
    [FieldName('IERG')]
    property IERG: String read FIERG write FIERG;
    [FieldName('TIPO')]
    property Tipo: Byte read FTipo write FTipo;
    [FieldName('ENDERECO')]
    property Endereco: String read FEndereco write FEndereco;
    [FieldName('TELEFONE')]
    property Telefone: String read FTelefone write FTelefone;
    [FieldName('ID_CIDADES')]
    property IDCidade: Integer read FIDCidade write FIDCidade;
    procedure Load(const AValue: Integer); override;
  end;

implementation

{ TCliente }

procedure TCliente.Load(const AValue: Integer);
begin
  ID := AValue;

  inherited Load;
end;

end.

