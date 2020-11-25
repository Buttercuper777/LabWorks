#include <iostream>
using namespace std;
struct Node
{
    int   Data;
    Node* Left;
    Node* Right;
};

class Tree
{
private:
    Node* Root;
public:
    Tree() { Root = NULL; };
    void PrintTree(Node*, int, char pren);
    void FibonTreeBuild(int, Node**);
    void FibonTreeFilling(Node**, int*);

    Node** GetTree() { return &Root; };
    Node* GetTree1() { return Root; };
};

void Tree::PrintTree(Node* W, int l, char pren)
{
    int i;

    if (W != NULL)
    {
        PrintTree(W->Right, l + 1, 'r');
        for (i = 1; i <= l; i++) cout << "      ";
        if (pren == 'l')
            cout <<"|__"<< W->Data <<endl;
        else if (pren == 'r')
            cout << "/--- " << W->Data << endl;
        else
            cout << W->Data << pren << endl;
               
        //cout << W->Data << pren << endl;
        PrintTree(W->Left, l + 1, 'l');
    }
}

void Tree::FibonTreeBuild(int k, Node** T)
{
    if (k == 0)
    {
        (*T) = NULL;
    }
    else
        if (k == 1)
        {
            (*T) = new (Node);
            (*T)->Left = (*T)->Right = NULL;
        }
        else
        {
            (*T) = new (Node);
            FibonTreeBuild(k - 1, &((*T)->Left));
            FibonTreeBuild(k - 2, &((*T)->Right));
        }
}

void Tree::FibonTreeFilling(Node** T, int* i)
{
    if ((*T) != NULL)
    {
        FibonTreeFilling(&((*T)->Left), i);
        (*T)->Data = (*i)++;
        FibonTreeFilling(&((*T)->Right), i);
    }
}

void main()
{

    setlocale(LC_ALL, "");
    Tree A;
    int h;
    cout << "Input h:";
    cin >> h;
    int i = 1;

    A.FibonTreeBuild(h, A.GetTree());
    A.FibonTreeFilling(A.GetTree(), &i);
    A.PrintTree(A.GetTree1(), 0, 'm');

}
