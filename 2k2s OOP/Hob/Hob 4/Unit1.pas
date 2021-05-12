unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
  i,j,kol,k,n: integer;
  nom, sLnght, sum, mSum, lineData: integer;
  s, sw: string;
begin
  memo2.Lines.Clear;
  sum := 0;
  mSum := 0;
  
  if radiogroup1.ItemIndex = 0 then
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
     end;     label1.Caption:= 'Букву ' + Edit1.Text + ' содержит ' + #13 + IntToStr(kol) + ' слов';     label1.Visible:= true;    end    else begin      if Edit1.Text = '' then      begin
        ShowMessage('Введите букву в строку поиска');
        exit;
      end      else begin        try
          sLnght := strtoint(edit1.text);
        except
          ShowMessage('Проверьте введеные данные!');
          exit;
        end;
      end;      if Memo1.Lines[0] = '' then      begin
        ShowMessage('Текст не найден');
        exit;
      end;
        nom := memo1.Lines.Count;

        sum := 0;
        mSum := 0;
        
        for i := 0 to nom - 1 do
        begin
          s := '';
          sw := memo1.Lines[i];
          j := length(sw);
          if j = 0 then
            continue;

          for n := 1 to j do
          begin
            if sw[n] = ' ' then
            begin
              if length(s) >= sLnght then
                memo2.Lines.Add(s);
              if s <> '' then
              begin
                try
                  if strtoint(s) > 0 then
                    sum := sum + strtoint(s)
                  else 
                    mSum := mSum + strtoint(s);
                except
                  showmessage('Файл не должен содержать букв. символов');
                  exit;
                end;
              end;

              s := '';
              continue;
            end
            else begin
              s := s + sw[n];
            end;
          end;

          if length(s) >= sLnght then
            memo2.Lines.Add(s);
            
          try
            if strtoint(s) > 0 then
              sum := sum + strtoint(s)
            else 
              mSum := mSum + strtoint(s);
          except
            showmessage('Файл не должен содержать букв. символов');
            exit;
          end;
        end;
        
        label1.Caption := 'Сумма(X > 0): ' + #13 + inttostr(sum) + #13 + 
                          'Сумма(X < 0): ' + #13 + inttostr(mSum);
    end;  end;procedure TForm1.FormShow(Sender: TObject);
begin
  radiogroup1.ItemIndex := 0;
end;

end.



