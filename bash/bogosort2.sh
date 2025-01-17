#!/usr/bin/env bash

isSorted () {
  local -n arr=$1
  length=${#arr[@]}
  for (( i = 1; i < $length; i++ )); do
    if [ ${arr[i-1]} -ge ${arr[i]} ]; then
      return 1
    fi
  done
  return 0
}

array=(14 7 23 56 9)
#array=(0 3 2 4 10 1 7 9)
until isSorted array; do
  array=( $(shuf -e "${array[@]}") )
done
echo "${array[@]}"
