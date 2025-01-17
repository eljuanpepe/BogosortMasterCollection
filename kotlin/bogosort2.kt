fun shuffle(array: Array<Int>) {
  for (i in 0 until array.size) {
    val j = (0..array.size-1).random()
      array[i] = array[j].also {array[j] = array[i]}
  }
}

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
    shuffle(array)
  }
  println(array.contentToString())
}
