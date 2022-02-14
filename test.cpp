#include <iostream>
using namespace std;

int main(){
    int x = 5;
    int y = 7;
    int z = 0;
    for (int i = 0; i < 8; i++)
    {
        z = z - 8*x + y;
        if (x >= 2)
        {
            y -= 1;
        }
        x++;
    }
    cout << z << endl;
}