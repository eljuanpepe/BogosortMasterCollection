#include <stdio.h>
#include <stdlib.h>

void shuffle(int *array, size_t length)
{
  int i, j, temp;
  for (i = 0; i < length; i++) {
    j = rand() % (length);
    temp = array[j];
    array[j] = array[i];
    array[i] = temp;
  }
}

int is_sorted(int array[], size_t length)
{
  while (--length >= 1) {
    if (array[length] < array[length-1]) {
      return 0;
    }
  }
  return 1;
}

int main()
{
  int array[] = {0, 3, 2, 4, 10, 1, 7, 9};
  size_t length = sizeof(array) / sizeof(*array);
  while (!is_sorted(array, length)) {
    shuffle(array, length);
  }
  for (int  i = 0; i < length; i++) {
    printf("%d ", array[i]);
  }
  return 0; 
}
