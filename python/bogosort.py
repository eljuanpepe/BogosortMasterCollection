from random import randint


def shuffleArray(array):
    for i, _ in enumerate(array):
        j = randint(0, len(array)-1)
        array[i], array[j] = array[j], array[i]


def is_sorted(array) -> bool:
    return all(array[i] <= array[i+1] for i in range(len(array)-1))


array = [10, 2, 7, 4, 6, 1, 9, 0]
while not is_sorted(array):
    shuffleArray(array)
print(array)
