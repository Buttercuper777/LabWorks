unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Registry, Vcl.StdCtrls, ActiveX, ComObj, AboutSys,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid2: TStringGrid;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  StringGrid1.Cells[1,0] := 'Big O';
  StringGrid2.Cells[1,0] := 'Big O';

  StringGrid1.Cells[2,0] := 't';
  StringGrid2.Cells[2,0] := 't';

  StringGrid1.Cells[3,0] := 'S (����)';
  StringGrid2.Cells[3,0] := 'S (����)';

  StringGrid1.Cells[0,1] := '1..n';
  StringGrid2.Cells[0,1] := '1..n';

  StringGrid1.Cells[0,2] := 'n..1';
  StringGrid2.Cells[0,2] := 'n..1';

  StringGrid1.Cells[0,3] := 'Random';
  StringGrid2.Cells[0,3] := 'Random';
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Form2.Show();
end;

end.