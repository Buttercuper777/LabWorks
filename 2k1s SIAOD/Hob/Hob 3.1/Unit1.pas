unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
const
G = 9;
R = 10;


type
TArray = array [0..G] of integer;

var A : TArray;
 key, x, t, u, z : integer;
 i: integer;

procedure TForm1.FormCreate(Sender: TObject);
 var i: integer;
 begin
  t := randomrange(1,G);
  u := randomrange(1,G);
  for i := 0 to G do
    begin
    A[i]:= 0;
    Form1.StringGrid1.Cells[i, 0] := IntToStr(i)
    end;
 end;


Function Hash (t, u, G, x, R:integer): integer;
begin
z := (((t*x)+u) mod G) mod R;
Hash := z;
Form1.Label3.Caption := IntToStr(z);
end;


Procedure SAP (key:integer);
begin
  key := Hash(t, u, G, x, R);
  if A[key] = 0 then
   begin
     A[key] := x;
     Form1.StringGrid1.Cells[key, 1] := IntToStr(A[key]);
   end
else
  Begin
    for i := 0 to G do
    begin
      if key = 9 then
          key := 0
      else
          key := key+1;
    if A[key] = 0 then
    begin
    A[key] := x;
    Form1.StringGrid1.Cells[key, 1] := IntToStr(A[key]);
    exit;
    end;
    end;
  end;

end;

Procedure TForm1.Button1Click(Sender: TObject);
begin
 x := StrToInt(Edit1.Text);
 SAP(x);
 end;

end.
