program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
const
   l = 100;

var
  i,j,n : integer;

  v: integer;
  visit: array [1..l] of boolean;
  C: array[1..100] of array[1..100] of integer;

{-------------------------------------------}

procedure BFS( v:integer);
  var Q: array [1..l] of integer;
  Un,Uk: integer;
  j: integer;
begin
Un:=0; Uk:=0;             {�������������, ������� �����}
Uk:=Uk+1; Q[Uk]:=v;       {������� ������� � �������}

Visit[v]:=false;          {�������� ������� ��� ����������}
  while Un < Uk do        {���� ������� �� �����}
  begin
  Un:=Un+1; v:=Q[Un];     {��������� ������� �� �������}
  write(v:3);             {������� ������� � ������� ������ � ������}

  for j:=0 to n do        {�������� ���� ������, ��������� � v �����}
    if (C[v,j]=1) and (Visit[j]) then {���� ������� ����� �� ���������� � ������� �����, �� ������� � �������}
    begin
      Uk:=Uk+1; Q[Uk]:=j;
      Visit[j]:=false;  {�������� ��� ���������� �������}
    end;
  end; {while}
end; {procedure}

begin

  For i:=1 to l do
    begin
      visit[i] := true;
    end;

readln(n);
 For i:=1 to n do
    For j:=1 to n do
       read(C[i,j]);

writeln('����� � ������');
writeln ('������� ������� ������ ������'); readln(v);
BFS(v); { ����� � ������ �� �������� ������� v}

  readln;
   readln;
   readln;
end.


