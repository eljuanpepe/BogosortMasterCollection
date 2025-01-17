fun isSorted(array: Array<Int>): Boolean {
  for (i in 1 until array.size) {
    if (array[i-1] >= array[i]) {
      return false
    }
  }
  return true
}

fun main() {
  var array = arrayOf(0, 3, 2, 4, 10, 1, 7, 9)
  while (!isSorted(array)) {
    array.shuffle()
  }
  println(array.contentToString())
}
