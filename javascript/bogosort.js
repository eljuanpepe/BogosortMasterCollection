function shuffle(array) {
  for (let i = 0, len = array.length; i < len; i++) {
    let j = Math.floor(Math.random() * len);
    [array[i], array[j]] = [array[j], array[i]];
  }
}

function isSorted(array) {
  for (let i = 1; i < array.length; i++) {
    if (array[i-1] >= array[i]) {
      return false;
    }
  }
  return true;
}

var array = [0, 3, 2, 4, 10, 1, 7, 9];
while (!isSorted(array)) {
  shuffle(array);
}
console.log(array)
