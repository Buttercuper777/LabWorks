#include <iostream>
#include "DoubleHashLesson.h"
#include <string>
using namespace std;

int main()
{
    DoubleHashLesson m;

    char enterVal;

    /*string* ptr;
    ptr = new string[3];
    ptr[0] = (string)"dscsdc";
    cout << ptr[0];*/

    string login;
    int password;

    cout << "Reg(r) or LogIn(l)" << endl;
    cin >> enterVal;

    if (enterVal == 'r')
    {
        cout << "Enter Login" << endl;
        cin >> login;

        cout << "Enter password" << endl;
        cin >> password;

        m.insertHash(password, login);
    }

    if (enterVal == 'l')
    {
        cout << "Enter Login" << endl;
        cin >> login;

        cout << "Enter password" << endl;
        cin >> password;
    }

    cout << "Good!!" << endl;

    m.print();


    /*const char* a[] = { "ada", "sdcsdcs" };


    cout << a[0];
    //int n = sizeof(a) / sizeof(a[0]);

    DoubleHash h;
    for (int i = 0; i < n; i++)
        //h.insertHash(a[i]);

    h.displayHash();*/
    return 0;
}