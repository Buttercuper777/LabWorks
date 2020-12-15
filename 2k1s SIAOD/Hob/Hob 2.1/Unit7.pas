unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Grids;

type
  TForm7 = class(TForm)
    Memo3: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
procedure bubblesort(var Cgreedy:array of real;var q,c:array of Integer;var names: array of string; Number:integer);
var
i,j,p,l:integer;
n:string;
d:real;
begin
for i := 1 to Number-1 do
  for j := 1 to Number-i do
    if Cgreedy[j-1]>Cgreedy[j] then
    begin
      d:=Cgreedy[j-1];
      p:=q[j-1];
      l:=c[j-1];
      n:=names[j-1];
      Cgreedy[j-1]:=Cgreedy[j];
      q[j-1]:=q[j];
      c[j-1]:=c[j];
      names[j-1]:=names[j];
      Cgreedy[j]:=d;
      q[j]:=p;
      c[j]:=l;
      names[j]:=n;
    end;
end;

procedure TForm7.Button1Click(Sender: TObject);
var
  names: array of string;
  q,c:array of integer;
  Cmax,i,Volume,Number,Cgreed,currentv,k, saver:integer;
  Cgreedy:array of real;
  p:string;

  counter: integer;
begin
  Volume:=StrToInt(Edit1.Text);
  Number:= StringGrid1.RowCount - 1;

  setlength(names,Number);
  setlength(q,Number);
  setlength(c,Number);
  setlength(Cgreedy,Number);

    for i := 0 to Number-1 do begin
      names[i]:= StringGrid1.Cells[0, i+1];
      q[i]:=StrToInt(StringGrid1.Cells[1, i+1]);
      c[i]:=StrToInt(StringGrid1.Cells[2, i+1]);
    end;

  Cmax:=0;

  for i := 0 to Number-1 do
  if Cmax<c[i] then
  begin
    Cmax:=c[i];
    p:=names[i];
  end;

  for i := 0 to Number-1 do
      Cgreedy[i]:=c[i]/q[i];

    bubblesort(Cgreedy,q,c,names,Number);
    Cgreed:=0;
    currentv:=0;
    i:=Number-1;

  for i := number - 1 downto 0 do
    begin
      saver := currentv;
      currentv:=currentv+q[i];

      if currentv > Volume then
        begin
        currentv:=saver;
        continue;
        end

      else
        begin
          Cgreed:=Cgreed+c[i];
          Memo3.Lines.Add(Names[i]+' '+IntToStr(c[i]) + ' ' + '(' + IntToStr(q[i]) + ')');
        end;

    end;

  end;

procedure TForm7.FormShow(Sender: TObject);
  var
    i: integer;
begin
  Randomize;

 stringGrid1.Cells[0,0] := 'Название';
 stringGrid1.Cells[1,0] := 'Объем';
 stringGrid1.Cells[2,0] := 'Цена';

 stringGrid1.Cells[0,1] := 'Ноутбук';
 stringGrid1.Cells[0,2] := 'Книга';
 stringGrid1.Cells[0,3] := 'Еда';
 stringGrid1.Cells[0,4] := 'Перчатки';
 stringGrid1.Cells[0,5] := 'Уголь';
 stringGrid1.Cells[0,6] := 'Розжиг';
 stringGrid1.Cells[0,7] := 'Фонарик';
 stringGrid1.Cells[0,8] := 'Спальный мешок';

 for i := 1 to 8 do
  stringGrid1.Cells[1,i] := inttostr(Random(15) + 1);

 for i := 1 to 8 do
  stringGrid1.Cells[2,i] := inttostr(Random(15) + 1);
end;

end.
