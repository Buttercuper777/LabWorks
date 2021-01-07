unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tabSize(n: integer); //ѕрототип метода класса
  private
    { Private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n :integer;   //размер
  visited: array[1..10] of integer;  //массив посещенных/непосещенных вершин
  cost: array[1..10, 1..10] of integer;  //матрица смежности

implementation

{$R *.dfm}
procedure TForm1.tabSize(n: integer);  //“ут задаем размеры stringgrid. ћетод класса TForm1.
var
  i, j, k: integer;
begin
  StringGrid1.RowCount := n + 1;
  StringGrid1.ColCount := n + 1;
  for i := 1 to n do
  begin
    StringGrid1.Cells[0,i] := inttostr(i);
    StringGrid1.Cells[i,0] := inttostr(i);
  end;
  for k := 1 to n do
    for j := 1 to n do
      StringGrid1.Cells[k,j] := inttostr(0);
end;

procedure TForm1.Button1Click(Sender: TObject);   // “ут обновл€ем размер матрицы на форме
begin
  n:= strtoint(Edit1.Text);
  tabSize(n);
end;

procedure TForm1.Button2Click(Sender: TObject);  // √лавный алг.
var
  a, b, u, v, i, j, ne, min, path_index, mincost:integer;
  ti, tj:integer;
  outStr : String;
  path: array[1..100] of integer;
begin
  outStr := '1 --> ';
  n:= strtoint(Edit1.Text);  // –азмер матрицы
  path_index := 1;
  ne := 1;
  min := maxint; // макс значение дл€ integer. 4 байта ~ 43*10^8.
                  {»сп как вес дл€ дороги, которую точно следует
                  обойти в поиске наименьшего пути.  ак будто этой дороги и нету}
  mincost := 0;

  for i := 1 to 10 do  // «адаем всем вершинам показатель посещени€ в 0
    visited[i] := 0;

  for i := 1 to n do
    for j := 1 to n do  // переносим все из матрицы на форме в матрицу-структуру данных
    begin
      cost[i,j] := strtoint(StringGrid1.Cells[i,j]);
      if (cost[i,j] = 0) then
        cost[i, j] := maxint;
    end;

    visited[1] := 1;   // посещаем первую вершину

    while (ne < n) do  // ѕродолжаем пока не поситим все вершины
    begin
      min := maxint;
      for i := 1 to n do
      begin
        for j := 1 to n do
          if cost[i,j] < min then  // ≈сли дорога существует
            if visited[i] <> 0 then   // ѕровер€ем посещена вершина или нет. ≈сли да, то все это дело запоминаем все это дело
            begin
              min := cost[i,j];
              u := i;
              a := u;

              v := j;
              b := v;
            end;
      end;
        if (visited[u] = 0) or (visited[v] = 0) then  // провер€ем посещена вершина ab или ba
        begin
          path[path_index] := b;   // записывем вершину на вывод
          path_index := path_index + 1;
          ne := ne + 1;  // это, чтобы while не длилс€ бесконечно. —четчик
          mincost := mincost + min; // ќбновл€ем стоимость
          visited[b] := 1;   // маркеруем вершину
        end;
        cost[b,a] := maxint;   // “ут дороги нет
        cost[a,b] := cost[b,a];  //“ут тоже
      end;

        for i := 1 to n-1 do   // тут работаем только с выводом. Outstr - строка котора€ потом идет в memo
        begin
          outStr := OutStr + inttostr(path[i]);  // формируем строку на вывод
          if (i < n - 1) then   // ѕровер€ем может ли быть в строке после последнего '--> n ' какое-то число
            outStr := outStr + ' --> '; // если да, то в качестве разделител€ ставим -->
        end;

        memo1.Lines.Add(outStr); // это итоговый путь
        memo1.Lines.Add('¬ес: ' + inttostr(mincost));  // это итоговый вес

end;

procedure TForm1.FormShow(Sender: TObject);   // как только откроетс€ форма...
var
  i, j: integer;
begin
  n:= strtoint(Edit1.Text);   // в edit дл€ указани€ размера изначально занесено число 5. “ак что тут n = 5
  tabSize(n); // «адаем размер таблицы на форме


  //“ут задаем значени€ в stringgrid (по ословию задачи). ѕросто дл€ удобства.
  StringGrid1.Cells[1,4] := inttostr(1);
  StringGrid1.Cells[1,5] := inttostr(3);

  StringGrid1.Cells[2,3] := inttostr(3);
  StringGrid1.Cells[2,4] := inttostr(5);
  StringGrid1.Cells[2,5] := inttostr(4);

  StringGrid1.Cells[3,2] := inttostr(3);
  StringGrid1.Cells[3,5] := inttostr(4);

  StringGrid1.Cells[4,1] := inttostr(1);
  StringGrid1.Cells[4,2] := inttostr(5);
  StringGrid1.Cells[4,5] := inttostr(2);

  StringGrid1.Cells[5,1] := inttostr(3);
  StringGrid1.Cells[5,2] := inttostr(4);
  StringGrid1.Cells[5,3] := inttostr(4);
  StringGrid1.Cells[5,4] := inttostr(2);
end;

end.
