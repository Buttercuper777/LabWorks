unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.math, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  Vcl.ExtCtrls, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Imaging.pngimage, Vcl.Grids, VCLTee.Series, VCLTee.TeeFunci;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Image3: TImage;
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TCustomTeeFunction;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  n,m: integer;
  Ky, Ce, Ko, Tm, Tk: real;
implementation

{$R *.dfm}
function P(PKy, PCe, PKo, PTk, PTm, PW:real):real;  //P
var
  saveVal: real;
begin
  saveVal := (1 + (PKy * PKo) - (PTk * PTm * PW * PW));
  p := ((PKy/PCe) * saveVal)/( (saveVal * saveVal) + ((PW * PW) * (PTk + PTm) * (PTk + PTm)) );
end;

function Q(PKy, PCe, PKo, PTk, PTm, PW:real):real;  //Q
var
  saveVal: real;
begin
  saveVal := (1 + PKy * PKo - PTk * PTm * power(PW, 2));
  Q := (-1) * ((PKy/PCe) * (PTk + PTm) * PW)/(power(saveVal, 2) + power(PW, 2) * power((PTk + PTm), 2));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  count, i, W ,x, y, z :integer;
  Ps, Qs: real;
begin
  count := 1;

  n := strtoint(edit1.text);
  m := strtoint(edit2.text);

  Ky := strtofloat(edit3.text);
  Ce := strtofloat(edit4.text);
  Ko := strtofloat(edit5.text);
  Tm := strtofloat(edit6.text);
  Tk := strtofloat(edit7.text);

  for i:=1 to StringGrid1.RowCount-1 do
    StringGrid1.Rows[i].Clear;

  Stringgrid1.RowCount := m + 2;
  i := 1;

  for W := n to m do
  Begin
    Ps := P(Ky, Ce, Ko, Tk, Tm, W);
    Qs := Q(Ky, Ce, Ko, Tk, Tm, W);

    StringGrid1.Cells[0,i] := inttostr(count);
    StringGrid1.Cells[1,i] := inttostr(w);
    StringGrid1.Cells[2,i] := floattostr( SimpleRoundTo(Ps, -3));
    StringGrid1.Cells[3,i] := floattostr( SimpleRoundTo(Qs, -3));

    count := count + 1;
    i := i + 1;

  End;

  for z:=1 to StringGrid1.rowcount-1 do
    Series1.AddXY(strtofloat(StringGrid1.Cells[2,z]),strtofloat(StringGrid1.Cells[3,z]),'',clred);

end;

procedure TForm1.FormShow(Sender: TObject);
var
  x0, y0 :integer;
begin
  Series1.XValues.Order := loNone;

  Stringgrid1.Cells[0,0] := '¹';
  Stringgrid1.Cells[1,0] := 'W';
  Stringgrid1.Cells[2,0] := 'P(W)';
  Stringgrid1.Cells[3,0] := 'Q(W)';
end;

end.
