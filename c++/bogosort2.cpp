#include <algorithm>
#include <iostream>
#include <iterator>
#include <random>

using namespace std;

int main()
{
  int array[] = {3, 2, 4, 10, 1, 7, 9, 100};
  random_device rd;
  mt19937 rand(rd());
  while (!is_sorted(begin(array), end(array))) {
    shuffle(begin(array), end(array), rand);
  }
  for (const int n : array) {
    cout << n << " ";
  }
  return 0;
}
