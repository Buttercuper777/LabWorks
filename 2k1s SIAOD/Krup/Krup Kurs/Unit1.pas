unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls, MainLib;

const
   tab_s = 8;
type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    TreeView1: TTreeView;
    Label2: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n_form, v_form: integer;
  newnode : TTreeNode;
  snode : TTreeNode;
implementation
{$R *.dfm}
procedure PrintTree(treenode:TTreeNode; root:TPNode);
 var newnode : TTreeNode;
 begin
    if Assigned(root) then
    begin
       newnode := Form1.TreeView1.Items.AddChild(treenode, IntToStr(root^.Data));
       PrintTree(newnode, root^.PLeft);
       PrintTree(newnode, root^.PRight);

    end;
 end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j:integer;
  way_out, wght_out: string;
begin

 for i:=1 to 100 do
  visit[i] := true;

 for i := 1 to n_form do
  for j := 1 to n_form do
    C[i, j] := strtoint(stringgrid1.Cells[i, j]);

 v_form := 1;
 Prim(way_out, wght_out, n_form);

 label4.Caption := way_out;
 label6.Caption := wght_out;

 for i := 1 to tab_s do
  for j := 1 to tab_s do
    if C[i, j] > 0 then
    begin
      C_BFS[i, j] := 1;
      StringGrid1.Cells[i, j] := inttostr(C_BFS[i, j]);
    end;

 BFS(v_form, n_form);
 for i := 1 to tab_s do
   Memo1.Lines.Add(inttostr(out_arr[i]));

 PrintTree(nil, PTree);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  tab_i, tab_j:integer;
begin
  PTree := nil;
  n_form := tab_s;

  stringgrid1.RowCount := tab_s + 1;
  stringgrid1.ColCount  := tab_s + 1;

  for tab_i := 0 to tab_s do
  begin
    stringgrid1.Cells[0, tab_i] := inttostr(tab_i);
    stringgrid1.Cells[tab_i, 0] := inttostr(tab_i);
  end;

  for tab_i := 1 to tab_s do
    for tab_j := 1 to tab_s do
      stringgrid1.Cells[tab_i, tab_j] := '0';

  stringgrid1.Cells[1, 2] := '2';
  stringgrid1.Cells[1, 8] := '4';

  stringgrid1.Cells[2, 1] := '2';
  stringgrid1.Cells[2, 3] := '3';

  stringgrid1.Cells[3, 2] := '3';
  stringgrid1.Cells[3, 4] := '4';
  stringgrid1.Cells[3, 6] := '5';
  stringgrid1.Cells[3, 8] := '5';

  stringgrid1.Cells[4, 3] := '4';
  stringgrid1.Cells[4, 5] := '7';

  stringgrid1.Cells[5, 4] := '7';
  stringgrid1.Cells[5, 6] := '6';

  stringgrid1.Cells[6, 5] := '6';
  stringgrid1.Cells[6, 3] := '5';
  stringgrid1.Cells[6, 8] := '9';
  stringgrid1.Cells[6, 7] := '3';

  stringgrid1.Cells[7, 8] := '7';
  stringgrid1.Cells[7, 6] := '3';

  stringgrid1.Cells[8, 6] := '9';
  stringgrid1.Cells[8, 3] := '5';
  stringgrid1.Cells[8, 1] := '4';
  stringgrid1.Cells[8, 7] := '7';


end;

end.
