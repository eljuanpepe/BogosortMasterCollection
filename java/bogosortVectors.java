import java.util.Collections;
import java.util.List;
import java.util.Vector;

class BogoSort {
  public static void main(String[] args) {
    Vector<Integer> vector = new Vector<Integer>(List.of(0, 3, 2, 4, 10, 1, 7, 9));
    BogoSort bogo = new BogoSort();
    bogo.bogoSort(vector);
    for (Integer elem : vector) {
      System.out.print(elem + " ");
    }
  }

  private boolean isSorted(Vector<Integer> vector) {
    for (int i = 1; i < vector.size(); i++) {
      if (vector.get(i-1) >= vector.get(i)) {
        return false;
      }
    }
    return true;
  }

  public void bogoSort(Vector<Integer> vector) {
    while (!isSorted(vector)) {
      Collections.shuffle(vector);
    }
  }
}
