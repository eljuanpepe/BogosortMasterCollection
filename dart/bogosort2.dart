bool isSorted(List<int> array) {
  for (var i = 1, len = array.length; i < len; i++) {
    if (array[i-1] > array[i]) {
      return false;
    }
  }
  return true;
}

void main() {
  var array = [0, 3, 2, 4, 10, 1, 7, 9];
  while (!isSorted(array)) {
    array.shuffle();
  }
  print("$array");
}
