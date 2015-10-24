unit CfgDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCFG;

type
  TfmCfgDB = class(TForm)
    edtServidor: TEdit;
    edtInstance: TEdit;
    edtDatabase: TEdit;
    edtLogin: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCfgDB: TfmCfgDB;

implementation

{$R *.dfm}

procedure TfmCfgDB.Button1Click(Sender: TObject);
begin
  CFG.Hostname := edtServidor.Text;
  CFG.Instance := edtInstance.Text;
  CFG.Database := edtDatabase.Text;
  CFG.Login := edtLogin.Text;
  CFG.Password := edtPassword.Text;
  ModalResult := mrOK;
end;

procedure TfmCfgDB.FormCreate(Sender: TObject);
begin
  edtServidor.Text := CFG.Hostname;
  edtInstance.Text := CFG.Instance;
  edtDatabase.Text := CFG.Database;
  edtLogin.Text := CFG.Login;
  edtPassword.Text := CFG.Password;
end;

end.
