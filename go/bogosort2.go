package main

import (
	"fmt"
	"math/rand"
	"sort"
)

func main() {
  array := []int{0, 3, 2, 4, 10, 1, 7, 9};
  for !sort.IntsAreSorted(array) {
    rand.Shuffle(len(array), func(i, j int) {
      array[i], array[j] = array[j], array[i];
    })
  }
  fmt.Println(array);
}
