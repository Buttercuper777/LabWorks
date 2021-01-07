#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#define SIZE 6
int matrix[SIZE][SIZE]; // матрица связей
int a[SIZE]; // массив посещенных вершинн
int d[SIZE]; // минимальное расстояние
int save;//переменная для временного хранения величин
int begin_index = 0;//задаем индекс начальной вершины, от которой будем искать путь
int min;
int minindex;

void matrix_svyazey()
{
    for (int i = 0; i < SIZE; i++)
    {
        matrix[i][i] = 0;
        for (int j = 0; j < SIZE; j++) {
            if (i == j) {
                matrix[i][j] = 0;
                continue;
            }
            printf("vvedite rasstoyanie %d - %d: ", i, j);
            scanf("%d", &save);
            matrix[i][j] = save;
        }
    }
}

void Vyvod_matrix()
{
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
            printf("%5d ", matrix[i][j]);
        printf("\n");
    }
}

void alg_kratchayshego_pyti()
{

    for (int i = 0; i < SIZE; i++)
    {
        d[i] = 10000;
        a[i] = 1;//отмечает все вершины как необработанные
        //printf("%d %5d", d[i], a[i]);
    }
    d[begin_index] = 0;
    // алгоритм
    do {
        minindex = 10000;//индекс вершины с минимальным весом
        min = 10000;// мин вес
        for (int i = 0; i < SIZE; i++)
        {
            if ((a[i] == 1) && (d[i] < min))
            {
                min = d[i];
                minindex = i;
            }
        }
        // добавляем найденный минимальный вес к текущему весу вершины и сравниваем с текущим минимальным

        if (minindex != 10000)
        {
            for (int i = 0; i < SIZE; i++)
            {
                if (matrix[minindex][i] > 0)
                {
                    save = min + matrix[minindex][i];
                    if (save < d[i])
                    {
                        d[i] = save;
                    }
                }
            }
            a[minindex] = 0;
        }
    } while (minindex < 10000);

}

void v_p()
{
    int ver[SIZE]; // массив посещенных вершин
    int end = 5; // индекс последней вершины = 6 - 1
    ver[0] = end + 1; // начальный элемент - последняя вершина
    int k = 1; // индекс предыдущей вершины
    int weight = d[end]; // вес последней вершины

    while (end != begin_index) // пока не дошли до начальной вершины
    {
        for (int i = 0; i < SIZE; i++)
            if (matrix[i][end] != 0)
            {
                int temp = weight - matrix[i][end]; // вес пути из предыдущей вершины
                if (temp == d[i])
                {
                    weight = temp;
                    end = i; // сохраняем предыдущую вершину
                    ver[k] = i + 1; // записываем ее в массив
                    k++;
                }
            }
    }

    printf("\n\nkratchayshee rasstoyanie do vershin \n");
    for (int i = 0; i < SIZE; i++)
        printf("%5d ", d[i]);
    // Вывод пути (начальная вершина оказалась в конце массива из k элементов)
    printf("\nVyvod kratchayshego pyti\n");
    for (int i = k - 1; i >= 0; i--)
        printf("%3d ", ver[i]);
}
int main()
{


    matrix_svyazey();

    // Вывод матрицы связей
    Vyvod_matrix();

    alg_kratchayshego_pyti();
    // Восстановление пути
    v_p();

    getchar();
    getchar();
    return 0;
}