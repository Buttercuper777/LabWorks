unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Character;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Memo1: TMemo;
    memo: TLabel;
    Memo2: TMemo;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  KeyCounter: integer;

function letterChecker(str: string):boolean;
var
  sl: integer;
begin
  sl := Length(str);
  if AnsiUpperCase(str[1]) = AnsiUpperCase(str[sl]) then
    letterChecker := True
  else
    letterChecker := False;
end;

function letterCounter(str: string): integer;
var
  sl, i, k, sumL: integer;
  fs, ls: string;
begin
  sumL := 0;
  fs := ''; ls :='';
  sl := Length(str);
  k := 0;
  for i := 1 to sl + 1 do
  begin
    if str = '' then
      continue;

    if isletter(str[i]) then
    begin
      if k = 0 then
      begin
        k := 1;
        ls := '';
        fs := str[i];
      end
      else
        continue;
    end
    else begin
      ls := str[i - 1];
      k := 0;
    end;

    if fs = ls then
      sumL := sumL + 1
    else
      continue;
  end;
      letterCounter := sumL;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  f: textfile;
  s: string;
begin
  if OpenDialog1.Execute then
    begin
      AssignFile(f, OpenDialog1.FileName);
      Reset(f);
    end

  else
    exit;

      Memo1.Lines.Clear();
      while not eof(f) do
      begin
        Readln(f, s);
        Memo1.Lines.Add(s);
      end;

      CloseFile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,j,kol,k: integer;
  nom: integer;
  s, sw, check: string;

var
  maxVal, letterSum: integer;
  trySv: integer;
  sum: real;
begin
  memo2.Lines.Clear;
  sum := 0;
    if Memo1.Lines[0] = '' then
    begin
      ShowMessage('����� �� ������');
      exit;
    end;

    if CheckBox1.Checked = False then
    begin
      Nom:= 0;

      if Edit1.Text = '' then
      begin
        ShowMessage('������� ����� � ������ ������');
        exit;
      end;

      for i := 0 to (Memo1.Lines.Count - 1) do
      begin
      s:= Memo1.Lines[i];
      if s = '' then continue;
      if AnsiUpperCase(s[1]) = AnsiUpperCase(Edit1.Text[1]) then
      begin
        nom:= nom + 1;
        Memo2.Lines.Add(IntToStr(nom) + '. ' + s);      end;      For j:= 1 to length(s) do      if s[j] = ' ' then
      begin
        for k:= 1 to length(sw) do
          if AnsiUpperCase(sw[k]) = AnsiUpperCase(Edit1.Text[1]) then
            begin
              kol:= kol + 1;
              break;
            end;
            sw:= '';
          end
        else
          sw:= sw + s[j];
     end;     label1.Caption:= '����� ' + Edit1.Text + ' �������� ' + #13 + IntToStr(kol) + ' ����';     label1.Visible:= true;    end    else begin    letterSum := 0;    for i := 0 to (Memo1.Lines.Count - 1) do
    begin
      j := 1; kol := 1;
      sw := '';
      s:= Memo1.Lines[i];
      if s = '' then continue;

      letterSum := letterSum + letterCounter(s);


      for nom := 1 to Length(s) do
      begin
        if s[nom] = ' ' then
        begin
          inc(kol);
        end

        else begin
          if kol > 1 then
            continue
          else begin
            sw := sw + s[j];
            inc(j);
          end;
        end;
      end;

      memo2.Lines.Add(inttostr(i + 1)+ '. ' + sw + ' (' + inttostr(kol) + ')');
    end;      memo2.Lines.Add('���������� ����, ������������ � ��������������� �� ���� � �� �� �����: '+ inttostr(letterSum));  end;  end;
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked = True then
    edit1.Enabled := False
   else
    edit1.Enabled := True;
end;

end.



