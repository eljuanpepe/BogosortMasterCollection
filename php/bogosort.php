<?php

function shuffleArray(&$array)
{
  for ($i = 0; $i < count($array); $i++) {
    $j = rand(0, count($array)-1);
    list($array[$i], $array[$j]) = array($array[$j], $array[$i]);
  }
}

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
  shuffleArray($array);
}
print_r($array);
