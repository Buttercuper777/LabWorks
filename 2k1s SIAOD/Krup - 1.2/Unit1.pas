unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    TreeView1: TTreeView;
    Edit1: TEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TData = Integer;
  TPNode = ^TNode;

  TNode = record
    Data: TData;
    PLeft, PRight: TPNode;
  end;


var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
