program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type
  //Тип ключа (тип основных данных) узла дерева.
  TData = Integer;
  //Тип указателя на узел.
  TPNode = ^TNode;
  //Тип узла дерева.
  TNode = record
    Data : TData; //Ключ (основные данные) узла дерева.
    PLeft, PRight : TPNode; //Указатели на левый и правый узел.
  end;

{Рекурсивная процедура для построения дерева через пользовательский ввод.
aPNode - переменная-указатель, обозначающая создаваемый узел.
aName - имя узла. Этот параметр предназначен для удобства ввода.
aName = '0' - корневой узел дерева;
aName = '0-1' - левый узел, связанный с корневым узлом.
aName = '0-2' - правый узел, связанный с корневым узлом.
И т. д.
Пример именования узлов дерева:
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
  //Предлагаем пользователю создать узел.
  Write('Узел ', aName, '. Ключ: ');
  Readln(S);
  if S <> '' then //Если пользователь согласился создать узел.
  repeat
    Val(S, Data, Code); //Преобразуем строковое значение в числовое.
    if Code = 0 then //Если ключ задан правильно.
    begin
      //Создаём узел.
      New(aPNode); //Выделяем память для узла.
      aPNode^.Data := Data;  //Записываем в узел значение ключа.
      aPNode^.PLeft := nil;  //Обнуляем указатель на левого потомка.
      aPNode^.PRight := nil; //Обнуляем указатель на правого потомка.
      TreeRead(aPNode^.PLeft, aName + '-1');  //Рекурсивный вызов диалога создания левого потомка.
      TreeRead(aPNode^.PRight, aName + '-2'); //Рекурсивный вызов диалога создания правого потомка.
    end
    else //Если ключ задан НЕправильно.
      Writeln('Неверный ввод. Следует ввести целое число. Повторите.');
  until Code = 0;
end;

//Рекурсивная процедура для освобождения памяти, занятой деревом. (Удаление дерева).
procedure TreeFree(var aPNode : TPNode);
begin
  if aPNode = nil then
    Exit;
  TreeFree(aPNode^.PLeft); {Рекурсивный вызов для освобождения памяти в левой ветви.}
  TreeFree(aPNode^.PRight); {Рекурсивный вызов для освобождения памяти в правой ветви.}
  Dispose(aPNode); {Освобождение памяти, занятой для текущего узла.}
  aPNode := nil; {Обнуление указателя на текущий узел.}
end;

//Рекурсивная процедура для распечатки узлов дерева в прямом направлении.
procedure TreeWritelnD(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  Writeln(aName, ': ', aPNode^.Data);
  TreeWritelnD(aPNode^.PLeft, aName + '-1');
  TreeWritelnD(aPNode^.PRight, aName + '-2');
end;

//Рекурсивная процедура для распечатки узлов дерева в обратном направлении.
procedure TreeWritelnR(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  TreeWritelnR(aPNode^.PLeft, aName + '-1');
  TreeWritelnR(aPNode^.PRight, aName + '-2');
  Writeln(aName, ': ', aPNode^.Data);
end;

//Рекурсивная процедура для распечатки узлов дерева в симметричном порядке.
procedure TreeWritelnS(const aPNode : TPNode; const aName : String);
begin
  if aPNode = nil then
    Exit;
  TreeWritelnS(aPNode^.PLeft, aName + '-1');
  Writeln(aName, ': ', aPNode^.Data);
  TreeWritelnS(aPNode^.PRight, aName + '-2');
end;

//Рекурсивная функция для подсчёта узлов с заданным значением ключа.
function CountNode(const aPNode : TPNode; const aData : TData) : Integer;
var
  Cnt : Integer;
begin
  Cnt := 0; //Количество узлов, у которых значение ключа равно aData.
  if aPNode <> nil then //Если дерево НЕпустое.
  begin
    //Если ключ текущего узла равен искомому, то учитываем этот узел в подсчёте.
    if aPNode^.Data = aData then
      Inc(Cnt);
    //Рекурсивный вызов для подсчёта узлов в левой и правой ветвях.
    Cnt := Cnt + CountNode(aPNode^.PLeft, aData) + CountNode(aPNode^.PRight, aData);
  end;
  CountNode := Cnt;
end;

//Рекурсивная процедура загрузки дерева из файла. С обходом в прямом направлении слева - направо.
procedure NodeLoad(var aPNode : TPNode; var aF : TextFile);
var
  Data : TData;
  S : String;
  Code : Integer;
begin
  aPNode := nil;
  if Eof(aF) then   //Если обнаружен конец файла - значит, обнаружен конец ветви./
    Exit;
  Readln(aF, S);
  Val(S, Data, Code);
  if Code <> 0 then //Если прочитанные данные НЕ являются числом - значит, обнаружен конец ветви.
    Exit;

  New(aPNode);
  aPNode^.Data := Data;
  NodeLoad(aPNode^.PLeft, aF);
  NodeLoad(aPNode^.PRight, aF);
end;

//Процедура для загрузка дерева из файла. С обходом в прямом направлении слева - направо.
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

//Рекурсивная процедура для записи дерева в файл. С обходом в прямом направлении слева - направо.
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

//Процедура для записи дерева в файл. С обходом в прямом направлении слева - направо.
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
  {Переключение окна консоли на кодовую страницу CP1251 (Win-1251).
  Если после переключения русские буквы показываются неверно,
  следует открыть системное меню консольного окна - щелчком мыши в левом
  верхнем углу окна консоли и выбрать:
  Свойства - закладка "Шрифт" - выбрать шрифт: "Lucida Console".}
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  PTree := nil; //Начальная инициализация дерева.
  FileName := ExtractFilePath(ParamStr(0)) + Fn; //Полный путь к файлу.

  repeat
    //Меню.
    Writeln('----------');
    Writeln('Выберите действие:');
    Writeln('1: Ввод дерева с клавиатуры.');
    Writeln('2: Загрузка дерева из файла.');
    Writeln('3: Запись дерева в файл.');
    Writeln('4: Распечатка узлов дерева.');
    Writeln('5: Подсчёт количества узлов с заданным ключом.');
    Writeln('6: Удалить дерево (освобождение памяти, занятой для дерева).');
    Writeln('7: Выход.');
    Write('Задайте команду: ');
    Readln(S);
    Val(S, Cmd, Code);
    if Code <> 0 then
      Cmd := -1;
    case Cmd of
      1:
      begin
        Writeln('Ввод дерева.');
        Writeln('Программа будет сама предлагать вам ввод узлов. Если вы согласны');
        Writeln('создать предложенный узел, то задайте его значение и нажмите Enter.');
        Writeln('Чтобы отказаться от создания узла оставьте пустую строку и нажмите Enter.');
        TreeFree(PTree);
        TreeRead(PTree, '0');
        Write('Ввод дерева завершён.');
      end;
      2:
      begin
        TreeLoad(PTree, FileName);
        Write('Дерево загружено из файла: "', Fn, '".');
      end;
      3:
      begin
        TreeSave(PTree, FileName);
        Write('Дерево сохранено в файл: "', Fn, '".');
      end;
      4:
      begin
        Writeln('Задайте правило распечатки: ');
        Write('1 - прямая, 2 - обратная, 3 - симметричная: ');
        repeat
          Readln(S);
          Val(S, Res, Code);
          if (Code <> 0) or not (Res in [1..3]) then
          begin
            Writeln('Неверный ввод. Следует ввести целое число из диапазона 1..4. Повторите.');
            Continue;
          end;
          Break;
        until False;
        case Res of
          1: TreeWritelnD(PTree, '0');
          2: TreeWritelnR(PTree, '0');
          3: TreeWritelnS(PTree, '0');
          else
            Writeln('Ошибка! Незарегистрированное значение.');
        end;
        Write('Конец распечатки.');
      end;
      5:
      begin
        repeat
          Write('Задайте искомое значение ключа: ');
          Readln(S);
          Val(S, Data, Code);
          if Code <> 0 then
            Writeln('Неверный ввод. Следует ввести целое число. Повторите.');
        until Code = 0;
        Write('Кол-во узлов с заданным значением ключа: ', CountNode(PTree, Data), '.');
      end;
      6, 7:
      begin
        TreeFree(PTree);
        Write('Дерево удалено (память освобождена).');
      end;
      else
        Write('Незарегистрированная команда. Повторите ввод.');
    end;
    Readln;
  until Cmd = 7;

  Write('Работа программы завершена. Для выхода нажмите Enter.');
  Readln;
end.
