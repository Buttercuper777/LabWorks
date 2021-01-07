program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {TForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTForm1, TForm1);
  Application.Run;
end.
