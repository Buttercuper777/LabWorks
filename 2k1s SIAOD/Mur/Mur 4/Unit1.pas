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
    procedure tabSize(n: integer); //�������� ������ ������
  private
    { Private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n :integer;   //������
  visited: array[1..10] of integer;  //������ ����������/������������ ������
  cost: array[1..10, 1..10] of integer;  //������� ���������

implementation

{$R *.dfm}
procedure TForm1.tabSize(n: integer);  //��� ������ ������� stringgrid. ����� ������ TForm1.
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

procedure TForm1.Button1Click(Sender: TObject);   // ��� ��������� ������ ������� �� �����
begin
  n:= strtoint(Edit1.Text);
  tabSize(n);
end;

procedure TForm1.Button2Click(Sender: TObject);  // ������� ���.
var
  a, b, u, v, i, j, ne, min, path_index, mincost:integer;
  ti, tj:integer;
  outStr : String;
  path: array[1..100] of integer;
begin
  outStr := '1 --> ';
  n:= strtoint(Edit1.Text);  // ������ �������
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
      cost[i,j] := strtoint(StringGrid1.Cells[i,j]);
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
            outStr := outStr + ' --> '; // ���� ��, �� � �������� ����������� ������ -->
        end;

        memo1.Lines.Add(outStr); // ��� �������� ����
        memo1.Lines.Add('���: ' + inttostr(mincost));  // ��� �������� ���

end;

procedure TForm1.FormShow(Sender: TObject);   // ��� ������ ��������� �����...
var
  i, j: integer;
begin
  n:= strtoint(Edit1.Text);   // � edit ��� �������� ������� ���������� �������� ����� 5. ��� ��� ��� n = 5
  tabSize(n); // ������ ������ ������� �� �����


  //��� ������ �������� � stringgrid (�� ������� ������). ������ ��� ��������.
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
