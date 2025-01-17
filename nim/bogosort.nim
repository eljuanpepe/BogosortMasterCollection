import std/random

proc shuffleArray(array: var array[8, int]) =
  const length = len(array)-1
  for i in countup(0, length):
    var j = rand(length)
    swap(array[i], array[j])

proc isSorted(array: array[8, int]): bool =
  for i in countup(1, len(array)-1):
    if array[i] < array[i-1]:
      return false
  return true

randomize()
var array = [10, 2, 7, 4, 6, 1, 9, 0]
while not isSorted(array):
  shuffleArray(array)
echo array
