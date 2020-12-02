/*#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <iostream>

#define quater 25
#define ten    10
#define five   5
#define cent   1

int main() {
    unsigned change, _change;
    do {
        change = _change = 0;
        printf("How much change is owed? ");
        scanf("%d,%d", &change, &_change);
    } while (!change && !_change);

    change *= 100;
    change += _change;

    unsigned a = change / quater;
    change -= a * quater;

    unsigned b = change / ten;
    change -= b * ten;

    unsigned c = change / five;
    change -= c * five;

    printf("25 - %3d\n10 - %3d\n5  - %3d\n1  - %3d\n Total - %d\n", a, b, c, change, a + b + c + change);

    return 0;
}
*/
#include <stdio.h>
#include <iostream>
using namespace std;

int main(void)
{   //переменные для обозначения сдачи и каждой из монет
    double change;
    double quater = 0.25;
    double ten = 0.10;
    double five = 0.05;
    double cent = 0.01;

    //запрос введения размера сдачи
    printf("O hai! ");
    do
    {
        printf("How much change is owed? ");
        scanf("%lf", &change);
    } while (change < 0.009);

    //рассчет сколько монет каждого номинала составляют данную сумму, начиная с монеты самого большого номинала
    float x = change / quater;
    int a = (int)x;

    float y = (change - a * quater) / ten;
    int b = (int)y;

    float z = (change - a * quater - b * ten) / five;
    int c = (int)z;

    float u = (change - a * quater - b * ten - c * five) / cent;
    int d = (int)u;

    int result = a + b + c + d;

    printf("%d\n", result);