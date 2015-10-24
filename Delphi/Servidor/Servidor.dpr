program Servidor;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Main in 'Main.pas' {Form1},
  ServerMethods in 'ServerMethods.pas' {ServerMethods1: TDataModule},
  WebModule in 'WebModule.pas' {WebModule1: TWebModule},
  uAtrib in 'units\uAtrib.pas',
  uCFG in 'units\uCFG.pas',
  uConnection in 'units\uConnection.pas',
  uPersistentObject in 'units\uPersistentObject.pas',
  CfgDB in 'CfgDB.pas' {fmCfgDB},
  uCidades in 'units\uCidades.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfmCfgDB, fmCfgDB);
  Application.Run;
end.
