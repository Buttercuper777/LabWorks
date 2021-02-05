unit TreeLib;

interface

uses
  System.SysUtils;

implementation
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
  InputData: string;
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
begin
  if aPNode = nil then
    exit;

  if WriteType = 's' then
  begin
    TreeWrite(aPNode^.PLeft, WriteType);
    InputData := InputData + ' ' + inttostr(aPNode^.Data);
    TreeWrite(aPNode^.PRight, WriteType);
  end
  else if WriteType = 'd' then
  begin
    InputData := InputData + ' ' + inttostr(aPNode^.Data);
    TreeWrite(aPNode^.PLeft, WriteType);
    TreeWrite(aPNode^.PRight, WriteType);
  end
  else if WriteType = 'r' then
  begin
    TreeWrite(aPNode^.PLeft, WriteType);
    TreeWrite(aPNode^.PRight, WriteType);
    InputData := InputData + ' ' + inttostr(aPNode^.Data);
  end;
       
  result := InputData;
end;

procedure FillTree(ArraySize: integer; MainArray:TreeArrT);
var
  i: integer;
begin
  for i := 1 to ArraySize do
    AddNode(PTree, MainArray[i]);
end;

end.
