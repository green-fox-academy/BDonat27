package Task;

import java.util.Arrays;

public class DoubleItems {
    public static void main(String[] args) {
        int[] numList = {3, 4, 5, 6, 7};
        numList[0] *=2;
        numList[1] *=2;
        numList[2] *=2;
        numList[3] *=2;
        numList[4] *=2;
        System.out.println(Arrays.toString(numList));
    }
}
