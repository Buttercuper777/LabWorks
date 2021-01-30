program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type

  // ----- Types for Array ------
  type_of_array_element = integer;
  
  parr = ^HeadArray;
  pelement = ^type_of_array_element;
  HeadArray = array[1..100000] of pelement;
 // ----------------------------- 


var

  // -------- Array -----------
  p:parr;                   
  n:integer;
  el:type_of_array_element;
  // --------------------------
  
  year, month, day, hr, min, sec, ms: Word;
  res, a, b:string;
  i, d: integer;

{------------------------------- For D-Arr -------------------------------------}

procedure FreeArray(var p:parr; var ArraySize : integer);
var i : integer;
begin
  for i:=1 to ArraySize do begin
    Dispose(p^[i]); {��������� ������, ���������� ��� �������� �������, �� ���������� � ������� }
    p^[i] := nil; {�������������, �� ������ ������������ ������, ������� � ���� ���������}
  end;
  FreeMem(p);
  ArraySize := 0; {������� }
end;

procedure PrinArray(p:parr; ArraySize : integer);
var i : integer;
begin
  WriteLn('���������� ������� (�� ��� ���������� ��������� � ������������ �������):');
  for i:=1 to ArraySize do
    if (p^[i]<>nil) then
      Write(p^[i]^,' ');
  WriteLn;
end;

{��������� ������ ����������� �� ��������� ��������}
procedure FillRandom(var p:parr; ArraySize : integer);
var i : integer;
begin
  for i:=1 to ArraySize do begin
     New(p^[i]);
     p^[i]^ := random(50); {����� �� ���� �� 9.999999}                          // <----------
     //p^[i]^ := Round(100*p^[i]^)/100; {�������� �� �����}
  end;
end;

{-------------------------------------------------------------------------------}

function Selection(MainArr:parr; ArraySize:integer; AssType: char):integer;
var
  //MainArr: array of integer;
  max, id, i, j, z: integer;
  StepsVal, BOVal: integer;
begin
  //SetLength(MainArr, n);
  BOVal := 1;

  {randomize;
  for i := 1 to n do begin
      MainArr[i] := random(100);
      //write(MainArr[i]:4)
  end;}

    j := ArraySize;

  while j > 1 do begin
  inc(BOVal);
      id := 1;
      //writeln(inttostr(MainArr^[1]^));
      for i := 2 to j do
      begin
        //writeln(inttostr(MainArr^[i]^) + ' ' + inttostr(MainArr^[id]^));
        if MainArr^[i]^ > MainArr^[id]^ then
            id := i;
        BOVal := BOVal + 2; {��� +1 �� �������� O((N^2)/2), ��� 2 - ���������,
                                ��� �� ����������� ��� ������. �������}  
      end;

      max := MainArr^[id]^;
      MainArr^[id]^ := MainArr^[j]^;
      MainArr^[j]^ := max;
      j := j - 1; 


      //write(inttostr(outval) + ': ');
      for z := 1 to ArraySize do
        write(MainArr^[z]^:4);
      writeln;  
  end;

  //result := BOVal;
end;

{----------------------------------------------------------------------------}

function Insertion(MainArr:parr; ArraySize:integer; AssType: char):integer;
var
  //MainArr: array of integer;
  i, j, k, key, tempValue, z: integer;
  StepsVal, BOVal: integer;

begin
  //SetLength(MainArr, n);
  StepsVal := 1;
  BOVal := 1;
  writeln('Insertion');
  {randomize;
  for i := 1 to n do begin
    if mode = 'g' then
      MainArr[i] := i
    else if mode = 'm' then
      MainArr[i] := random(100)
    else if mode = 'b' then
      MainArr[i] := n - i + 1
    else
      result := 0;

    //write(MainArr[i]:4);
  end;
  //writeln;
  {���������� ���������}

  for i := 2 to ArraySize do
    begin
      StepsVal := StepsVal + 1;
      //BOVal := BOVal - 1;
      key := MainArr^[i]^;
      j := i;
      if (j > 1) and (MainArr^[j - 1]^ > key) then
      begin
        BOVal := BOVal + ArraySize + 1; 
        while (j > 1) and (MainArr^[j - 1]^ > key) do
        begin
            {����� ���������}
            StepsVal := StepsVal + 1;
            tempValue :=  MainArr^[j]^;
            MainArr^[j]^ := MainArr^[j - 1]^;
            MainArr^[j - 1]^ := tempValue;
            j := j - 1;
        end;
      end
        else
          BOVal := BOVal + 1;
         
          
      MainArr^[j]^ := key;
      write(inttostr(BOVal) + ': ');
      for z := 1 to ArraySize do
        write(MainArr^[z]^:4);
      writeln;
    end;

    if AssType = 's' then
      result := StepsVal
    else 
      result := BOVal;
end;

function SortCaller(ArrayPointer: parr; ArrSize:integer; AlgType: boolean; AssType: char {CaseType: char}):integer;  {
                                                                                  ������; ������ �������; ��� ���(1 - S, 0 - I); ��� ������[�����(t), �������(s), ���������(o)];
                                                                                  ���� ������ = nil, �� ������ ������ � ��������. ���.��������} 
var
  resVal: integer;
begin
  //write(trunc(sizeof(ArrayPointer^)));
  if ArrayPointer <> nil then
    if AlgType = True then
      resVal := Selection(ArrayPointer, ArrSize, AssType)
    else
      resVal := Insertion(ArrayPointer, ArrSize, AssType);

    result := resVal;
end;

{-----------------------------------Main Block----------------------------------}
begin
  {for i := 1 to 10 do
  begin
  
   DecodeTime(Time,hr, min, sec, ms);
   a := (format('%d',[ms]));

   Insertion(10000,'m');
    //write(Insertion(10000,'b'));writeln;

   DecodeTime(Time,hr, min, sec, ms);
   b := (format('%d',[ms]));
   
   if b < a then
    d := (1000 - strtoint(a)) + strtoint(b)
   else
    d := strtoint(b) - strtoint(a);
    
   writeln(d);
  end;  }

  WriteLn('������� ����������� �������: ');
  ReadLn(n);
  
  GetMem(p, n*sizeof(type_of_array_element));
  FillRandom(p, n);
  
  PrinArray(p, n);
  write(SortCaller(p, n, False, 'o'));
  //FreeArray(p,n); 
  
  readln;
  readln;
end.
