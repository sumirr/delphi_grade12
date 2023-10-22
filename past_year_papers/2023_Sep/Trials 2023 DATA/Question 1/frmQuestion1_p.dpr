program frmQuestion1_p;

uses
  Forms,
  frmQuestion1_U in 'frmQuestion1_U.pas' {frmQuestion1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion1, frmQuestion1);
  Application.Run;
end.
