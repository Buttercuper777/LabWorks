unit MainLib;

interface
uses
  System.SysUtils,
  Vcl.Dialogs;


Type
  TData = Integer; { ��� ��������� �� ����. }
  TPNode = ^TNode; { ��� ���� ������. }

  TNode = record
    Data: TData; { ���� (�������� ������) ���� ������. }
    PLeft, PRight: TPNode; { ��������� �� ����� � ������ ����. }
end;

var
  PTree : TPNode;
  visit: array [1..100] of boolean;
  out_arr: array of integer;
  C: array[1..100] of array[1..100] of integer;
  C_BFS: array[1..100] of array[1..100] of integer;
  i :integer;

procedure BFS(v:integer; n:integer);
procedure Prim(out Way, Wght:string; n:integer);
procedure AddNode(var aPNode: TPNode; const aData: TData);
implementation

procedure Prim(out Way, Wght:string; n:integer);
  var
  visited: array[1..10] of integer;  //������ ����������/������������ ������
  cost: array[1..10, 1..10] of integer;  //������� ���������
  a, b, u, v, i, j, ne, min, path_index, mincost:integer;
  ti, tj:integer;
  outStr : String;
  path: array[1..100] of integer;
begin
  outStr := '1, ';
  path_index := 1;
  ne := 1;
  min := maxint; // ���� �������� ��� integer. 4 ����� ~ 43*10^8.
                  {��� ��� ��� ��� ������, ������� ����� �������
                  ������ � ������ ����������� ����. ��� ����� ���� ������ � ����}
  mincost := 0;

  for i := 1 to 10 do  // ������ ���� �������� ���������� ��������� � 0
    visited[i] := 0;

  for i := 1 to n do
    for j := 1 to n do  // ��������� ��� �� ������� �� ����� � �������-��������� ������
    begin
      cost[i,j] := C[i,j];
      if (cost[i,j] = 0) then
        cost[i, j] := maxint;
    end;

    visited[1] := 1;   // �������� ������ �������

    while (ne < n) do  // ���������� ���� �� ������� ��� �������
    begin
      min := maxint;
      for i := 1 to n do
      begin
        for j := 1 to n do
          if cost[i,j] < min then  // ���� ������ ����������
            if visited[i] <> 0 then   // ��������� �������� ������� ��� ���. ���� ��, �� ��� ��� ���� ���������� ��� ��� ����
            begin
              min := cost[i,j];
              u := i;
              a := u;

              v := j;
              b := v;
            end;
      end;
        if (visited[u] = 0) or (visited[v] = 0) then  // ��������� �������� ������� ab ��� ba
        begin
          path[path_index] := b;   // ��������� ������� �� �����
          path_index := path_index + 1;
          ne := ne + 1;  // ���, ����� while �� ������ ����������. �������
          mincost := mincost + min; // ��������� ���������
          visited[b] := 1;   // ��������� �������
        end;
        cost[b,a] := maxint;   // ��� ������ ���
        cost[a,b] := cost[b,a];  //��� ����
      end;

        for i := 1 to n-1 do   // ��� �������� ������ � �������. Outstr - ������ ������� ����� ���� � memo
        begin
          outStr := OutStr + inttostr(path[i]);  // ��������� ������ �� �����
          if (i < n - 1) then   // ��������� ����� �� ���� � ������ ����� ���������� '--> n ' �����-�� �����
            outStr := outStr + ', '; // ���� ��, �� � �������� ����������� ������ -->
        end;

        Way := outStr; // ��� �������� ����
        Wght := inttostr(mincost);  // ��� �������� ��� }
end;

procedure BFS(v:integer; n:integer);
  var
  Q: array [1..100] of integer;
  Un,Uk: integer;
  j, add_out: integer;

begin
Un:=0; Uk:=0;
Uk:=Uk+1; Q[Uk]:=v;
add_out := 0;
Visit[v]:=false;
setlength(out_arr, n);

while Un < Uk do
begin
  Un:=Un+1; v:=Q[Un];
  inc(add_out);
  out_arr[add_out] := v;
  AddNode(PTree, v);
  for j:=0 to n do
    if (C_BFS[v,j]=1) and (Visit[j]) then
    begin
      Uk:=Uk+1; Q[Uk]:=j;
      Visit[j]:=false;
      AddNode(PTree, Q[Un]);
    end;
  end;
end;


procedure AddNode(var aPNode: TPNode; const aData: TData);
begin
  if aPNode = nil then { ������� ����. }
  begin
    New(aPNode); { �������� ������ ��� ����. }
    aPNode^.Data := aData; { ���������� � ���� �������� �����. }
    aPNode^.PLeft := nil; { �������� ��������� �� ������ �������. }
    aPNode^.PRight := nil; { �������� ��������� �� ������� �������. }
  end

  else if aData < aPNode^.Data then { ����� ����� ������� � ����� �����. }
  begin
    //showMessage('left');
    AddNode(aPNode^.PLeft, aData);
    //NodeData := aPNode^.PLeft.Data;

  end

  else if aData > aPNode^.Data then { ����� ����� ������� � ������ �����. }
  begin
    //showMessage('right');
    AddNode(aPNode^.PRight, aData);
    //NodeData := aPNode^.PRight.Data;

  end;
end;

end.
