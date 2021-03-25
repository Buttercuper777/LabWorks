unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
      Edit1.SetFocus();

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,j,kol,k: integer;
  nom: integer;
  s, sw: string;
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Введите букву в строку поиска');
    exit;
  end

  else if Memo1.Lines[0] = '' then
  begin
    ShowMessage('Текст не найден');
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
      Memo1.Lines.Add(IntToStr(nom) + ' . ' + s);    end;    For j:= 1 to length(s) do    if s[j] = ' ' then
    begin
      for k:= 1 to length(sw) do
        if AnsiUpperCase(sw[k]) = AnsiUpperCase(Edit1.Text[1]) then
        begin
          kol:= kol + 1;
          break;
        end;
        sw:= '';

        else
          sw:= sw + s[j];

   end;  end;

end;

end.



