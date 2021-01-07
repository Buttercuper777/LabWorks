unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  graf, a: array [1 .. 50, 1 .. 50] of integer;
  visited: array [1 .. 50] of boolean;

implementation

{$R *.dfm}



procedure search(st: integer);
var
  r, x, y, n : integer;
begin
  visited[st] := true; // st posetili
  Form1.Edit3.Text := Form1.Edit3.Text + IntToStr(st);
  for r := 1 to n do
    if (graf[st, r] <> 0) and (not visited[r]) then
    begin
      Form1.Edit2.Text := Form1.Edit2.Text + IntToStr(r);
      search(r);
    end;
end;

{ }




procedure TForm1.Button1Click(Sender: TObject);
var
  n, k, i, j: integer;
  s: string;

begin
  n := StringGrid1.ColCount - 1;
  for i := 1 to StringGrid1.ColCount - 1 do
  begin
    visited[i] := false;
    for j := 1 to StringGrid1.rowCount - 1 do
      graf[i, j] := StrToInt(StringGrid1.Cells[i, j]);
  end;
  k := StrToInt(Edit1.Text);
  search(k);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, w, n, x, y: integer;
  g: array [1 .. 100] of integer;
  s, c: shortstring;
begin
  s := Form1.Edit3.Text;
  c := Form1.Edit2.Text;
  n := Memo1.lines.count - 1;

  for i := 1 to length(s) do
  begin
    Memo1.lines.Add(s[i] + ' ' + c[i]);
  end;
end;

end.
