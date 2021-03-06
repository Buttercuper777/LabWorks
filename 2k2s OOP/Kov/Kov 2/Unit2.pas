unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TForm2 = class(TForm)
    Edit_X: TEdit;
    Edit_Eps: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button_Calc: TButton;
    Memo_ChSum: TMemo;
    Label3: TLabel;
    Label_Func: TLabel;
    Label_Sum: TLabel;
    Label_AbsE: TLabel;
    Label_Kol: TLabel;
    procedure Button_CalcClick(Sender: TObject);
    procedure Edit_XKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_EpsKeyPress(Sender: TObject; var Key: Char);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button_CalcClick(Sender: TObject);
var x,              // �������� ���������
Eps,                // ��������� �������� ����������
Func,               // �������� �������
Sum,                // ���������� ��� �������� �����
Fact,               // ���������� ��� �������� ����������
ElemSeq, ElemSeq1: Real;      // ���������� ��� �������� ���������� �������� ����
Kol: Integer;       // ���������� ��������

begin
  if trim(Edit_X.Text) = '' then
  begin
    Showmessage('������� �������� �');
    exit
  end;

  if trim(Edit_Eps.Text) = '' then
  begin
    Showmessage('������� �������� ��������');
    exit
  end;

  x := StrToFloat(Edit_x.Text);
  Eps := StrToFloat(Edit_Eps.Text);
  Memo_ChSum.Lines.Clear;
  Sum := 0;
  Fact := 1;
  Kol := 1;
  ElemSeq := 0;

  if (Eps<=0) or (Eps>=1) then
  begin
    Showmessage ('������� ������ � ��������� �� 0 �� 1');
    exit
  end;

  if (x <= -1) or (x >= 1) then
  begin
    Showmessage('�������� x ������ ���� � ���������: (-1;1)');
    exit;
  end;

  Func := Ln(1 - power(x, 2));
  Label_Func.Caption := FloatToStr(Func);
  Label_Func.Visible := True;

  ElemSeq :=  -(power(x, kol * 2)) / Fact;
  Inc(kol);
  Fact := Fact * kol;

  while  > Eps do
  begin
    //showmessage(floattostr( RoundTo(abs(Func) - abs(ElemSeq1), -2) ));

    ElemSeq := ElemSeq - ((power(x, kol * 2)) / Fact);

    //showmessage(floattostr());
    //showmessage(floattostr(x) + '^' + floattostr(kol * 2) + '/' + floattostr(Fact));
    Memo_chSum.Lines.Add(FloatToStr(ElemSeq));
    Sum := Sum + Elemseq;
    Inc(Kol);
    Fact := Fact * kol;
  end;

  Label_Func.Caption := '�������� �������: ' + FloatToStr(Func);
  Label_Func.Visible := True;
  Label_Sum.Caption := '����� ����: ' + FloatToStr(Sum);
  Label_Sum.Visible := True;
  Sum := abs(Func - Sum);
  Label_AbsE.Caption := '�����������: ' + FloatToStr(Roundto(sum, - 6));
  Label_AbsE.Visible := True;
  Label_Kol.Caption := '���������� ��������: ' + FloatToStr(Kol);
  Label_Kol.Visible := True;

end;


procedure TForm2.Edit_EpsKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9','-',#8,','] = false then
    key := #0
  else
    begin
      if (Pos('-', Edit_Eps.Text)>0) and (Key = '-') then
      key :=#0;
      if (Pos(',', Edit_Eps.Text)>0) and (Key = ',') then
      key :=#0;
    end;
end;

procedure TForm2.Edit_XKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9','-',#8,','] = false then
    key := #0
  else
    begin
      if (Pos('-', Edit_X.Text)>0) and (Key = '-') then
      key :=#0;
      if (Pos(',', Edit_X.Text)>0) and (Key = ',') then
      key :=#0;
    end;
end;


end.
