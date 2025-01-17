import rand

fn is_sorted(array []int) bool {
  for i := 1; i < array.len; i++ {
    if array[i-1] >= array[i] {
      return false
    }
  }
  return true
}

fn main() {
  mut array := [10, 2, 7, 4, 6, 1, 9, 0];
  for !is_sorted(array) {
    rand.shuffle(mut &array)!
  }
  println(array)
}
