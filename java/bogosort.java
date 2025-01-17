import java.util.Arrays;
import java.util.Random;

class BogoSort {
  public static void main(String[] args) {
    int[] array = {0, 3, 2, 4, 10, 1, 7, 9};
    BogoSort bogo = new BogoSort();
    bogo.bogoSort(array);
    System.out.println(Arrays.toString(array));
  }

  private void shuffle(int[] array, Random rand) {
    int i, j, temp;
    for (i = 0; i < array.length; i++) {
      j = rand.nextInt(array.length-1);
      temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    } 
  }

  private boolean isSorted(int[] array) {
    for (int i = 1; i < array.length; i++) {
      if (array[i-1] >= array[i]) {
        return false;
      }
    }
    return true;
  }

  public void bogoSort(int[] array) {
    Random rand = new Random();
    while (!isSorted(array)) {
      shuffle(array, rand);
    }
  }
}
