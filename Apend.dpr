program Apend;

uses
  Forms,
  UAprend in 'UAprend.pas' {Frm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm, Frm);
  Application.Run;
end.
