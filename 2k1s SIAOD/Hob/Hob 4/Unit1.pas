unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TTForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  n = 8;
var
  TForm1: TTForm1;
  matrix: array[1..n, 1..n] of integer;
  visited: array[1..n] of boolean;
  output: string;
  strcnt: integer;
implementation

{$R *.dfm}
procedure dfs(stVal:integer);
var
  r: integer;
begin
output := output + inttostr(stVal);
if strcnt < n then
  output := output + ' --> ';

inc(strcnt);
visited[stVal] := true;

for r := 1 to n do
  if (matrix[stVal, r] > 0) and (not visited[r]) then
    dfs(r);
end;

procedure TTForm1.Button1Click(Sender: TObject);
var
  i, j, input:integer;
  s:string;
begin
  output:= '';
  strcnt := 1;

  input := strtoint(edit1.Text);

  for i := 1 to n do
  begin
    visited[i] := false;
    for j := 1 to n do
      matrix[i,j] := strtoint(stringgrid1.Cells[i,j]);

  end;
  dfs(input);

  memo1.Lines.Add('������� ������:');
  memo1.Lines.Add(output + #13#10);
end;

procedure TTForm1.FormShow(Sender: TObject);
var
  i, j: integer;
begin
  for i := 0 to n + 1 do
  begin
    stringgrid1.Cells[0, i] := inttostr(i);
    stringgrid1.Cells[i, 0] := inttostr(i);
  end;

  for i := 1 to n do
    for j := 1 to n do
      stringgrid1.Cells[i, j] := '0';

  stringgrid1.Cells[1, 2] := '1';
  stringgrid1.Cells[1, 8] := '1';

  stringgrid1.Cells[2, 1] := '1';
  stringgrid1.Cells[2, 3] := '1';

  stringgrid1.Cells[3, 2] := '1';
  stringgrid1.Cells[3, 4] := '1';
  stringgrid1.Cells[3, 6] := '1';
  stringgrid1.Cells[3, 8] := '1';

  stringgrid1.Cells[4, 3] := '1';
  stringgrid1.Cells[4, 5] := '1';

  stringgrid1.Cells[5, 4] := '1';
  stringgrid1.Cells[5, 6] := '1';

  stringgrid1.Cells[6, 8] := '1';
  stringgrid1.Cells[6, 7] := '1';

  stringgrid1.Cells[7, 5] := '1';
  stringgrid1.Cells[7, 3] := '1';
  stringgrid1.Cells[7, 8] := '1';
  stringgrid1.Cells[7, 6] := '1';

  stringgrid1.Cells[8, 6] := '1';
  stringgrid1.Cells[8, 3] := '1';
  stringgrid1.Cells[8, 1] := '1';
  stringgrid1.Cells[8, 7] := '1';

end;

end.
