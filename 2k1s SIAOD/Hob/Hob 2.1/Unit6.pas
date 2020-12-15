unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    N71: TMenuItem;
    poiskwithback1: TMenuItem;
    procedure poiskwithback1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit7;

{$R *.dfm}

procedure TForm6.poiskwithback1Click(Sender: TObject);
begin
Form7.Show;
end;

end.
