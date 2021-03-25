unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, TreeLib;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MTree: TTree;
  Form1: TForm1;
  InputArray: TreeArrT;

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
  i, TreeArrSize: integer;
begin
  if Memo1.Lines.Count = 0 then
    ShowMessage('¬ведите данные дл€ построени€ дерева!')
  else
  begin

  TreeArrSize := Memo1.Lines.Count - 1;
  
  for i := 0 to TreeArrSize do
    InputArray[i] := strtoint(Memo1.Lines[i]);  

  MTree := TTree.Create();
  MTree.FillTree(TreeArrSize + 1, InputArray, MTree.TreePointer);

  PrintTree(nil, MTree.TreePointer);
  
  RadioGroup1.Enabled := True;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var 
  NTreeVal: integer;
  i: Integer;
begin
  Memo1.Clear;
  NTreeVal := strtoint(Edit1.Text);
  for i := 1 to NTreeVal do
    Memo1.Lines.Add(inttostr(1 + random(99)));
end;

procedure TForm1.Button3Click(Sender: TObject);
  Var
    FindVal: integer;
begin
  TreeLib.Way := '';
  FindVal := strtoint(Edit2.Text);
  MTree.Find(MTree.TreePointer, FindVal); 
end;

procedure TForm1.Button4Click(Sender: TObject);
  Var
    AddVal: integer;
begin
  TreeView1.Items.Clear;
  AddVal := strtoint(Edit2.Text);
  MTree.Add(MTree.TreePointer, AddVal);
  PrintTree(nil, MTree.TreePointer); 
end;

procedure TForm1.Button5Click(Sender: TObject);
  Var
    DelVal: integer;
begin
  TreeView1.Items.Clear;
  DelVal := strtoint(Edit2.Text);
  MTree.Del(MTree.TreePointer, DelVal);
  PrintTree(nil, MTree.TreePointer);
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
var
  OutMode: char;
begin

  if RadioGroup1.ItemIndex = 0 then
    OutMode := 'd'
  else if RadioGroup1.ItemIndex = 1 then
    OutMode := 'r'
  else if RadioGroup1.ItemIndex = 2 then
    OutMode := 's';
    
  MTree.OutData := '';  
  MTree.TreeWrite(MTree.TreePointer, OutMode);
  Label6.Caption := MTree.OutData;
end;

end.
