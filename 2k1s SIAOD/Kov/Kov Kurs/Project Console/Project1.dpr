program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TData = Integer; { ��� ��������� �� ����. }
  TPNode = ^TNode; { ��� ���� ������. }

  TNode = record
    Data: TData; { ���� (�������� ������) ���� ������. }
    PLeft, PRight: TPNode; { ��������� �� ����� � ������ ����. }
  end;
  TreeArrT = array[0..100] of TData;
var
  NodeData: integer;
  TreeHead: integer;
  OutData: string;
  PTree : TPNode;

  Data: TData;
  i:integer;


procedure AddNode(var aPNode: TPNode; const aData: TData);
begin
  if aPNode = nil then { ������� ����. }
  begin
    New(aPNode); { �������� ������ ��� ����. }
    aPNode^.Data := aData; { ���������� � ���� �������� �����. }
    aPNode^.PLeft := nil; { �������� ��������� �� ������ �������. }
    aPNode^.PRight := nil; { �������� ��������� �� ������� �������. }

    TreeHead := aData;
    //showMessage('1');
  end

  else if aData <= aPNode^.Data then { ����� ����� ������� � ����� �����. }
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

function TreeWrite(const aPNode : TPNode; WriteType:char): string;
var
  DataSaver: string;
begin
  if aPNode = nil then
    exit;

  if WriteType = 's' then
  begin
    TreeWrite(aPNode^.PLeft, WriteType);
    OutData := OutData + ' ' + inttostr(aPNode^.Data);
    TreeWrite(aPNode^.PRight, WriteType);
  end
  else if WriteType = 'd' then
  begin
    OutData := OutData + ' ' + inttostr(aPNode^.Data);
    TreeWrite(aPNode^.PLeft, WriteType);
    TreeWrite(aPNode^.PRight, WriteType);
  end
  else if WriteType = 'r' then
  begin
    TreeWrite(aPNode^.PLeft, WriteType);
    TreeWrite(aPNode^.PRight, WriteType);
    OutData := OutData + ' ' + inttostr(aPNode^.Data);
  end;

  result := OutData;
end;

procedure FillTree(ArraySize: integer; MainArray:TreeArrT);
var
  i: integer;
begin
  for i := 1 to ArraySize do
    AddNode(PTree, MainArray[i]);
end;

begin
PTree := nil;

 for i:= 0 to 9 do
  begin
    readln(Data); // := strtoint(Memo1.Lines[i]);
    AddNode(PTree, Data);
  end;

  writeln('---------------------');
  write('D - ' + TreeWrite(PTree, 'd'));
  OutData := '';
  writeln;
  write('R - ' + TreeWrite(PTree, 'r'));
  OutData := '';
  writeln;
  write('S - ' + TreeWrite(PTree, 's'));
  OutData := '';

  {
12
23
7
4
19
10
2
8
11
24
  }

readln;
readln;
readln;
end.
