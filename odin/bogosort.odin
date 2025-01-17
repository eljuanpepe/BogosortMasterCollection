package main

import "core:math/rand"
import "core:fmt"

shuffle :: proc(array: []int) {
  for i := 0; i < len(array); i += 1 {
    j := rand.int_max(len(array))
    array[i], array[j] = array[j], array[i]
  }
}

is_sorted :: proc(array: []int) -> bool {
  for i := 0; i < len(array)-1; i += 1 {
    if array[i] > array[i+1] {
      return false
    }
  }
  return true
}

main :: proc() {
  array := []int{ 0, 3, 2, 4, 10, 1, 7, 9 }
  for !is_sorted(array) {
    shuffle(array)
  }
  fmt.println(array)
}
