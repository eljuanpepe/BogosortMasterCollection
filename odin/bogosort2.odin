package main

import "core:math/rand"
import "core:fmt"
import "core:slice"

main :: proc() {
  array := []int{ 0, 3, 2, 4, 10, 1, 7, 9 }
  for !slice.is_sorted(array) {
    rand.shuffle(array[:])
  }
  fmt.println(array)
}
