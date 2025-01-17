bool is_sorted(int[] array) {
  for (int i = 0; i < array.length-1; i++) {
    if (array[i] > array[i+1]) {
      return false;
    }
  }
  return true;
}

void shuffle(int[] array) {
  for (int i = 0; i < array.length; i++) {
    int j = GLib.Random.int_range(0, array.length);
    int temp = array[j];
    array[j] = array[i];
    array[i] = temp;
  }
}

void main () {
  int[] array = {1, 2, 3, 4, 2};
  while (!is_sorted(array)) {
    shuffle(array);
  }
  foreach (int item in array) {
    print ("%d ", item);
  }
}
