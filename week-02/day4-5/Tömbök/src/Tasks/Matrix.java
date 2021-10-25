package Task;

import java.util.Arrays;

public class Matrix {
    public static void main(String[] args) {
        int Matrix[][] = new int[4][4];
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {

                if (i == j) {
                    Matrix[i][j] = 1;
                } else {
                    Matrix[i][j] = 0;
                }

                System.out.print(Matrix[i][j] + " ");



            }

            System.out.println("");
        }


    }


}






