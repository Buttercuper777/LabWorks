unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if combobox1.ItemIndex = 0 then
  begin
    stringgrid1.Cells[2,1] := '0,83';
    stringgrid1.Cells[2,2] := '0,82';

    stringgrid1.Cells[2,4] := '0,8';
    stringgrid1.Cells[2,5] := '0,85';

    stringgrid1.Cells[2,7] := '0,80';
    stringgrid1.Cells[2,8] := '0,85';


    stringgrid1.Cells[3,1] := '50';
    stringgrid1.Cells[3,2] := '50';

    stringgrid1.Cells[3,4] := '100';
    stringgrid1.Cells[3,5] := '180';

    stringgrid1.Cells[3,7] := '100';
    stringgrid1.Cells[3,8] := '120';


    stringgrid1.Cells[4,1] := '50';
    stringgrid1.Cells[4,2] := '100';

    stringgrid1.Cells[4,4] := '100';
    stringgrid1.Cells[4,5] := '100';

    stringgrid1.Cells[4,7] := '70';
    stringgrid1.Cells[4,8] := '80';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  combobox1.ItemIndex := -1;

  stringgrid1.Cells[0,1] := 'À0_ÝÄ';
  stringgrid1.Cells[0,4] := 'À1_ÏÌ';
  stringgrid1.Cells[0,7] := 'À2_ÈÌ';

  stringgrid1.Cells[1,1] := 'À01';
  stringgrid1.Cells[1,2] := 'À02';

  stringgrid1.Cells[1,4] := 'À_11';
  stringgrid1.Cells[1,5] := 'À_12';

  stringgrid1.Cells[1,7] := 'À_21';
  stringgrid1.Cells[1,8] := 'À_22';

  stringgrid1.Cells[2,0] := 'P';
  stringgrid1.Cells[3,0] := 'C';
  stringgrid1.Cells[4,0] := 'M';
end;

end.
