#pragma once
#include <iostream>
#include <string>

using namespace std;

#define TABLE_SIZE 20
#define PRIME 13

class DoubleHashLesson
{
    string* hashTable;
    string* sPtr;
    int curr_size;

public:

    DoubleHashLesson()
    {
        sPtr = new string[TABLE_SIZE];

        for (int i = 0; i < TABLE_SIZE; i++)
            sPtr[i] = "!";

    }

    void print()
    {
        for (int i = 0; i < TABLE_SIZE; i++)
            cout << sPtr[i] << endl;
    }

    bool isFull()
    {
        return (curr_size == TABLE_SIZE);
    }

    int hash1(int key)
    {
        return (key % TABLE_SIZE);
    }

    int hash2(int key)
    {
        return (PRIME - (key % PRIME));
    }


    void insert(int key, string login)
    {
        sPtr[key] = (string)login;
    }

    bool insertHash(int key, string login)
    {
        if (isFull())
            return;

        int index = hash1(key);

        if (sPtr[index] != "!")
        {
            if (sPtr[index] == login)
                return true;
            else
            {
                int index2 = hash2(key);
                int i = 1;
                while (1)
                {
                    int newIndex = (index + i * index2) %
                        TABLE_SIZE;

                    if (sPtr[newIndex] == "!")
                    {
                        sPtr[newIndex] = (string)login;
                        break;
                    }
                    i++;
                }
            }
        }

        else
            sPtr[index] = (string)login;
        curr_size++;
    }

    /*void displayHash()
    {
        for (int i = 0; i < TABLE_SIZE; i++)
        {
            if (hashTable[i] != -1)
                cout << i << " --> "
                << hashTable[i] << endl;
            else
                cout << i << endl;
        }
    }*/
};

