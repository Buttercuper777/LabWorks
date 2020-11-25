#include <stdio.h>
 
int main(void)
{   //переменные для обозначения сдачи и каждой из монет
    float change;
    float quater=0.25;
    float ten=0.10;
    float five=0.05;
    float cent=0.01;

    #define FiveTh 5000
    #define OneTh 1000
    #define FiveNd 500
    #define OneNd 100
    #define FiveTy 50
    #define OneTy 10
    #define Five 5
    #define One 1
    #define FiveHf 0.5
    #define OneHf 0.1
    
    //запрос введения размера сдачи
    printf("O hai! ");
        do
        {
            printf("How much change is owed? ");
            scanf("%f", &change);
        }
        while (change<0.009);
        
        //рассчет сколько монет каждого номинала составляют данную сумму, начиная с монеты самого большого номинала
        float x = change/FiveTh;
        int a = (int)(x+0.1);
        
        float y = (change-a*FiveTh)/OneTh;
        int b = (int)(y+0.1);
        
        float z = (change-a*FiveTh-b*OneTh)/FiveNd;
        int c = (int)(z+0.1);
        
        float u = (change-a*FiveTh-b*OneTh-c*FiveNd)/OneNd;
        int d = (int)(u+0.1);

        float w = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd)/FiveTy;
        int e = (int)(w+0.1);

        float o = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd-e*FiveTy)/OneTy;
        int f = (int)(o+0.1);

        float q = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd-e*FiveTy-f*OneTy)/Five;
        int g = (int)(q+0.1);

        float v = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd-e*FiveTy-f*OneTy-g*Five)/One;
        int h = (int)(v+0.1);

        float r = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd-e*FiveTy-f*OneTy-g*Five-h*One)/FiveHf;
        int i = (int)(r+0.1);

        float m = (change-a*FiveTh-b*OneTh-c*FiveNd-d*OneNd-e*FiveTy-f*OneTy-g*Five-h*One-i*FiveHf)/OneHf;
        int j = (int)(m+0.1);
        
        int result=a+b+c+d;
        
        printf("%d\n", a);
        printf("%d\n", b);
        printf("%d\n", c);
        printf("%d\n", d);
        printf("%d\n", e);
        printf("%d\n", f);
        printf("%d\n", g);
        printf("%d\n", h);
        printf("%d\n", i);
        printf("%d\n", j);

}