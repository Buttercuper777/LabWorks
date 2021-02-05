program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type
  //��� ����� (��� �������� ������) ���� ������.
  TData = Integer;
  //��� ��������� �� ����.
  TPNode = ^TNode;
  //��� ���� ������.
  TNode = record
    Data : TData; //���� (�������� ������) ���� ������.
    PLeft, PRight : TPNode; //��������� �� ����� � ������ ����.
  end;

{����������� ��������� ��� ���������� ������ ����� ���������������� ����.
aPNode - ����������-���������, ������������ ����������� ����.
aName - ��� ����. ���� �������� ������������ ��� �������� �����.
aName = '0' - �������� ���� ������;
aName = '0-1' - ����� ����, ��������� � �������� �����.
aName = '0-2' - ������ ����, ��������� � �������� �����.
� �. �.
������ ���������� ����� ������:
                   0
               /       \
           0-1           0-2
         /     \       /     \
      0-1-1  0-1-2  0-2-1  0-2-2
     /     \              /     \
 0-1-1-1  0-1-1-2     0-2-2-1  0-2-2-2       }
procedure TreeRead(var aPNode : TPNode; const aName : String);
var
  Data : TData;
  Code : Integer;
  S : String;
begin
  //���������� ������������ ������� ����.
  Write('���� ', aName, '. ����: ');
  Readln(S);
  if S <> '' then //���� ������������ ���������� ������� ����.
  repeat
    Val(S, Data, Code); //����������� ��������� �������� � ��������.
    if Code = 0 then //���� ���� ����� ���������.
    begin
      //������ ����.
      New(aPNode); //�������� ������ ��� ����.
      aPNode^.Data := Data;  //���������� � ���� �������� �����.
      aPNode^.PLeft := nil;  //�������� ��������� �� ������ �������.
      aPNode^.PRight := nil; //�������� ��������� �� ������� �������.
      TreeRead(aPNode^.PLeft, aName + '-1');  //����������� ����� ������� �������� ������ �������.
      TreeRead(aPNode^.PRight, aName + '-2'); //����������� ����� ������� �������� ������� �������.
    end
    else //���� ���� ����� �����������.
      Writeln('�������� ����. ������� ������ ����� �����. ���������.');
  until Code = 0;
end;

//����������� ��������� ��� ������������ ������, ������� �������. (�������� ������).
procedure TreeFree(var aPNode : TPNode);
begin
  if aPNode = nil then
    Exit;
  TreeFree(aPNode^.PLeft); {����������� ����� ��� ������������ ������ � ����� �����.}
  TreeFree(aPNode^.PRight); {����������� ����� ��� ������������ ������ � ������ �����.}
  Dispose(aPNode); {������������ ������, ������� ��� �������� ����.}
  aPNode := nil; {��������� ��������� �� ������� ����.}
end;

//����������� ��������� ��� ���������� ����� ������ � ������ �����������.
procedure TreeWritelnD(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  Writeln(aName, ': ', aPNode^.Data);
  TreeWritelnD(aPNode^.PLeft, aName + '-1');
  TreeWritelnD(aPNode^.PRight, aName + '-2');
end;

//����������� ��������� ��� ���������� ����� ������ � �������� �����������.
procedure TreeWritelnR(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  TreeWritelnR(aPNode^.PLeft, aName + '-1');
  TreeWritelnR(aPNode^.PRight, aName + '-2');
  Writeln(aName, ': ', aPNode^.Data);
end;

//����������� ��������� ��� ���������� ����� ������ � ������������ �������.
procedure TreeWritelnS(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  TreeWritelnS(aPNode^.PLeft, aName + '-1');
  Writeln(aName, ': ', aPNode^.Data);
  TreeWritelnS(aPNode^.PRight, aName + '-2');
end;

//����������� ������� ��� �������� ����� � �������� ��������� �����.
function CountNode(const aPNode : TPNode; const aData : TData) : Integer;
var
  Cnt : Integer;
begin
  Cnt := 0; //���������� �����, � ������� �������� ����� ����� aData.
  if aPNode <> nil then //���� ������ ��������.
  begin
    //���� ���� �������� ���� ����� ��������, �� ��������� ���� ���� � ��������.
    if aPNode^.Data = aData then
      Inc(Cnt);
    //����������� ����� ��� �������� ����� � ����� � ������ ������.
    Cnt := Cnt + CountNode(aPNode^.PLeft, aData) + CountNode(aPNode^.PRight, aData);
  end;
  CountNode := Cnt;
end;

//����������� ��������� �������� ������ �� �����. � ������� � ������ ����������� ����� - �������.
procedure NodeLoad(var aPNode : TPNode; var aF : TextFile);
var
  Data : TData;
  S : String;
  Code : Integer;
begin
  aPNode := nil;
  if Eof(aF) then   //���� ��������� ����� ����� - ������, ��������� ����� �����./
    Exit;
  Readln(aF, S);
  Val(S, Data, Code);
  if Code <> 0 then //���� ����������� ������ �� �������� ������ - ������, ��������� ����� �����.
    Exit;

  New(aPNode);
  aPNode^.Data := Data;
  NodeLoad(aPNode^.PLeft, aF);
  NodeLoad(aPNode^.PRight, aF);
end;

//��������� ��� �������� ������ �� �����. � ������� � ������ ����������� ����� - �������.
procedure TreeLoad(var aPNode : TPNode; const aFileName : String);
var
  F : TextFile;
begin
  TreeFree(aPNode);
  AssignFile(F, aFileName);
  Reset(F);
  try
    NodeLoad(aPNode, F);
  finally
    CloseFile(F);
  end;
end;

//����������� ��������� ��� ������ ������ � ����. � ������� � ������ ����������� ����� - �������.
procedure NodeSave(const aPNode : TPNode; var aF : TextFile);
begin
  if aPNode = nil then
    Writeln(aF)
  else
  begin
    Writeln(aF, aPNode^.Data);
    NodeSave(aPNode^.PLeft, aF);
    NodeSave(aPNode^.PRight, aF);
  end;
end;

//��������� ��� ������ ������ � ����. � ������� � ������ ����������� ����� - �������.
procedure TreeSave(var aPNode : TPNode; const aFileName : String);
var
  F : TextFile;
begin
  AssignFile(F, aFileName);
  Rewrite(F);
  try
    NodeSave(aPNode, F);
  finally
    CloseFile(F);
  end;
end;

const
  Fn = 'tree.txt';
var
  PTree : TPNode;
  Data : TData;
  Cmd, Code, Res : Integer;
  S, FileName : String;
begin
  {������������ ���� ������� �� ������� �������� CP1251 (Win-1251).
  ���� ����� ������������ ������� ����� ������������ �������,
  ������� ������� ��������� ���� ����������� ���� - ������� ���� � �����
  ������� ���� ���� ������� � �������:
  �������� - �������� "�����" - ������� �����: "Lucida Console".}
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  PTree := nil; //��������� ������������� ������.
  FileName := ExtractFilePath(ParamStr(0)) + Fn; //������ ���� � �����.

  repeat
    //����.
    Writeln('----------');
    Writeln('�������� ��������:');
    Writeln('1: ���� ������ � ����������.');
    Writeln('2: �������� ������ �� �����.');
    Writeln('3: ������ ������ � ����.');
    Writeln('4: ���������� ����� ������.');
    Writeln('5: ������� ���������� ����� � �������� ������.');
    Writeln('6: ������� ������ (������������ ������, ������� ��� ������).');
    Writeln('7: �����.');
    Write('������� �������: ');
    Readln(S);
    Val(S, Cmd, Code);
    if Code <> 0 then
      Cmd := -1;
    case Cmd of
      1:
      begin
        Writeln('���� ������.');
        Writeln('��������� ����� ���� ���������� ��� ���� �����. ���� �� ��������');
        Writeln('������� ������������ ����, �� ������� ��� �������� � ������� Enter.');
        Writeln('����� ���������� �� �������� ���� �������� ������ ������ � ������� Enter.');
        TreeFree(PTree);
        TreeRead(PTree, '0');
        Write('���� ������ ��������.');
      end;
      2:
      begin
        TreeLoad(PTree, FileName);
        Write('������ ��������� �� �����: "', Fn, '".');
      end;
      3:
      begin
        TreeSave(PTree, FileName);
        Write('������ ��������� � ����: "', Fn, '".');
      end;
      4:
      begin
        Writeln('������� ������� ����������: ');
        Write('1 - ������, 2 - ��������, 3 - ������������: ');
        repeat
          Readln(S);
          Val(S, Res, Code);
          if (Code <> 0) or not (Res in [1..3]) then
          begin
            Writeln('�������� ����. ������� ������ ����� ����� �� ��������� 1..4. ���������.');
            Continue;
          end;
          Break;
        until False;
        case Res of
          1: TreeWritelnD(PTree, '0');
          2: TreeWritelnR(PTree, '0');
          3: TreeWritelnS(PTree, '0');
          else
            Writeln('������! �������������������� ��������.');
        end;
        Write('����� ����������.');
      end;
      5:
      begin
        repeat
          Write('������� ������� �������� �����: ');
          Readln(S);
          Val(S, Data, Code);
          if Code <> 0 then
            Writeln('�������� ����. ������� ������ ����� �����. ���������.');
        until Code = 0;
        Write('���-�� ����� � �������� ��������� �����: ', CountNode(PTree, Data), '.');
      end;
      6, 7:
      begin
        TreeFree(PTree);
        Write('������ ������� (������ �����������).');
      end;
      else
        Write('�������������������� �������. ��������� ����.');
    end;
    Readln;
  until Cmd = 7;

  Write('������ ��������� ���������. ��� ������ ������� Enter.');
  Readln;
end.
