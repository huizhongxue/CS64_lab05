#include <iostream>
using namespace std;

/*int main(){
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
}*/

void printA(int a[], int al){
for (int i = al-1; i >=0; i--)
std::cout << a[i] << "\n";
}
// again you don’t need to implement main
int main(){
int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int alength = 10;
std::cout << "The contents of the array in reverse order are:\n";
printA(arr, alength);
// Expected Output : 10 9 8 7 6 5 4 3 2 1
}
