#include <iostream>
#include <cstdlib>

void shuffle(int *array, size_t length)
{
  int i, j, temp;
  for (i = 0; i < length; i++) {
    j = rand() % length;
    temp = array[j];
    array[j] = array[i];
    array[i] = temp;
  }
}

bool isSorted(int array[], size_t length)
{
  for (int i = 0; i < length-1; i++) {
    if (array[i+1] < array[i]) {
      return false;
    }
  }
  return true;
}

int main()
{ 
  int array[] = {0, 3, 2, 4, 10, 1, 7, 9};
  size_t length = sizeof(array) / sizeof(*array);
  srand((unsigned) time(NULL));
  while(!isSorted(array, length)) {
    shuffle(array, length);
  }
  for (const int n : array) {
    std::cout << n << " ";
  }
  return 0;
}
