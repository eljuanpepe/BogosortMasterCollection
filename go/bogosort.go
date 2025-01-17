package main

import (
	"fmt"
	"math/rand"
)

func shuffle(array []int) {
  for i := range array {
    j := rand.Intn(len(array))
    array[i], array[j] = array[j], array[i]
  }
}

func isSorted(array []int) bool {
  for i := 0; i < len(array)-1; i++ {
    if array[i+1] < array[i] {
      return false
    }
  }
  return true
}

func main() {
  array := []int{0, 3, 2, 4, 10, 1, 7, 9};
  for !isSorted(array){
    shuffle(array)
  }
  fmt.Println(array);
}
