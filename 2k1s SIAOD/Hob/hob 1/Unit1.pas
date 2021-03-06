unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TData = Integer; { ��� ��������� �� ����. }
  TPNode = ^TNode; { ��� ���� ������. }

  TNode = record
    Data: TData; { ���� (�������� ������) ���� ������. }
    PLeft, PRight: TPNode; { ��������� �� ����� � ������ ����. }
  end;

var
  Form1: TForm1;
  NodeData: integer;
  TreeHead: integer;

  InputData: string;

  PTree : TPNode;

implementation

{$R *.dfm}



procedure AddNode(var aPNode: TPNode; const aData: TData);
begin
  if aPNode = nil then { ������� ����. }
  begin
    New(aPNode); { �������� ������ ��� ����. }
    aPNode^.Data := aData; { ���������� � ���� �������� �����. }
    aPNode^.PLeft := nil; { �������� ��������� �� ������ �������. }
    aPNode^.PRight := nil; { �������� ��������� �� ������� �������. }

    TreeHead := aData;
    //showMessage('1');
  end

  else if aData <= aPNode^.Data then { ����� ����� ������� � ����� �����. }
  begin
    //showMessage('left');
    AddNode(aPNode^.PLeft, aData);
    //NodeData := aPNode^.PLeft.Data;

  end

  else if aData > aPNode^.Data then { ����� ����� ������� � ������ �����. }
  begin
    //showMessage('right');
    AddNode(aPNode^.PRight, aData);
    //NodeData := aPNode^.PRight.Data;

  end;
end;

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

procedure TreeWrite(const aPNode : TPNode);
begin
  if aPNode = nil then
    exit;

  TreeWrite(aPNode^.PLeft);
  InputData := InputData + inttostr(aPNode^.Data);
  Form1.Label2.Caption := InputData;
  TreeWrite(aPNode^.PRight);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  aPNode: TPNode ;
  Data: TData;
  tryAdd: Integer;
  i: integer;
begin
  for i:= 0 to Memo1.Lines.Count - 1 do
  begin
    Data := strtoint(Memo1.Lines[i]);
    AddNode(PTree, Data);
  end;

  TreeWrite(PTree);
  PrintTree(nil, PTree);

end;

procedure TForm1.FormShow(Sender: TObject);
begin
   PTree := nil;
end;

end.
