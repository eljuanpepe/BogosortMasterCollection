import std/algorithm
import std/random

var array = [10, 2, 7, 4, 6, 1, 9, 0]
while not isSorted(array):
  shuffle(array)

echo array
