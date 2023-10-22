program Quest4_P;

uses
  Forms,
  Q4 in 'Q4.pas' {Quest4_U};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQuest4_U, Quest4_U);
  Application.Run;
end.
