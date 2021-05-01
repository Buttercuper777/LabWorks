unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Character;

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
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
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
  i,j,kol,k, n, l: integer;
  nom, nom2: integer;
  s, sw, number: string;

var
  maxVal: integer;
  trySv: integer;
  sum: real;
begin
  memo2.Lines.Clear;
  sum := 0;
  if radiogroup1.ItemIndex = 0 then
    begin
    if Edit1.Text = '' then
    begin
      ShowMessage('������� ����� � ������ ������');
      exit;
    end

    else if Memo1.Lines[0] = '' then
    begin
      ShowMessage('����� �� ������');
      exit;
    end;

    Nom:= 0;
    for i := 0 to (Memo1.Lines.Count - 1) do
    begin
      s:= Memo1.Lines[i];
      if s = '' then continue;
      if AnsiUpperCase(s[1]) = AnsiUpperCase(Edit1.Text[1]) then
      begin
        nom:= nom + 1;
        Memo2.Lines.Add(IntToStr(nom) + '. ' + s);      end;                For j:= 1 to length(s) do      if s[j] = ' ' then
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
     end;     label1.Caption:= '����� ' + Edit1.Text + ' �������� ' + #13 + IntToStr(kol) + ' ����';     label1.Visible:= true;    end    else begin      if Memo1.Lines[0] = '' then      begin
        ShowMessage('����� �� ������');
        exit;
      end;
        nom := memo1.Lines.Count;

        for i := 0 to nom - 1 do
        begin
          maxVal := 0;
          number := '';
          sw := memo1.Lines[i];
          j := length(sw);
          if j = 0 then
            continue;
          maxVal := 0;
          k:=1;
          for n := 1 to j do
            if (sw[n] = ' ') then
            begin
              try
                if maxVal < strtoint(number) then
                  MaxVal := strtoint(number);
              except
                continue;
              end;
              number := '';
              continue
            end
            else if isLetter(sw[n]) then
            begin
              showmessage('���� �� ������ ��������� ����');
              exit;
            end
            else
              number := number + sw[n];

            try
              if maxVal < strtoint(number) then
              begin
                 memo2.lines.add(number)
              end
              else begin
                 memo2.lines.add(inttostr(maxVal));
              end;
                 
            except
              Memo2.Lines.Add('� ������ ' + inttostr(i+1) + ' �������� ������');
              exit;
            end;
            end;

          sum := 0;
          nom2 := memo2.Lines.Count;
          for l := 0 to nom2 - 1 do
            sum := sum + strtoint(memo2.Lines[l]);
          label1.Caption := ('���������:' + #13 + '��. ��. = ' + floattostr(sum / memo2.Lines.Count));

    end;  end;procedure TForm1.FormShow(Sender: TObject);
begin
  radiogroup1.ItemIndex := 0;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  label1.Caption := '���������:';
  
  if radiogroup1.ItemIndex <> 0 then
    edit1.Enabled := false
  else
    edit1.Enabled := true;  
end;

end.



