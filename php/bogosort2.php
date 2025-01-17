<?php
function isSorted($array)
{
  for ($i = 1; $i < count($array); $i++) {
    if ($array[$i-1] >= $array[$i]) {
      return FALSE;
    }
  }
  return TRUE;
}

$array = array(0, 3, 2, 4, 10, 1, 7, 9);
while (!isSorted($array)) {
  shuffle($array);
}
print_r($array);
