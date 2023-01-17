program garant;

uses
  Forms,
  Unit1 in 'Unit1.pas' {mainform},
  barUnit in 'barUnit.pas',
  dmunit in 'dmunit.pas' {dm: TDataModule},
  userunit in 'userunit.pas' {userform},
  tovarunit in 'tovarunit.pas' {tovarform},
  custunit in 'custunit.pas' {custform},
  aktunit in 'aktunit.pas' {aktform},
  jurnunit in 'jurnunit.pas' {jurnForm},
  skladunit in 'skladunit.pas' {skladform},
  movunit in 'movunit.pas' {movform},
  vozvunit in 'vozvunit.pas' {vozvForm},
  outUnit in 'outUnit.pas' {outform},
  tipunit in 'tipunit.pas' {tipform},
  carsunit in 'carsunit.pas' {carsform},
  histunit in 'histunit.pas' {histform},
  tovinunit in 'tovinunit.pas' {tovinform},
  eventunit in 'eventunit.pas' {eventform},
  zunit in 'zunit.pas' {zform};

{R *.res}

begin
  Application.Initialize;
  Application.Title := 'Гарантия';
  Application.CreateForm(Tmainform, mainform);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
