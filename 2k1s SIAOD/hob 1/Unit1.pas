unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  TreeNode: TTreeNode;
  CheckAdd: boolean;
  lab1, lab2, lab3: Integer;
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

    CheckAdd := False;
    TreeHead := aData;
    showMessage('1');
  end

  else if aData <= aPNode^.Data then { ����� ����� ������� � ����� �����. }
  begin
    showMessage('left');
    AddNode(aPNode^.PLeft, aData);
    NodeData := aPNode^.PLeft.Data;

  end

  else if aData > aPNode^.Data then { ����� ����� ������� � ������ �����. }
  begin
    showMessage('right');
    AddNode(aPNode^.PRight, aData);
    NodeData := aPNode^.PRight.Data;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  aPNode: TPNode ;
  Data: TData;

  tryAdd: Integer;
begin
  Data := strtoint(Edit1.text);
  AddNode(PTree, Data);

  if CheckAdd = False then
    begin
      TreeView1.Items.Add(TreeNode, inttostr(TreeHead));
      CheckAdd := True;

    end
  else
    begin

    end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
   PTree := nil;
end;

end.
