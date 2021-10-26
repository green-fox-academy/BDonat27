package Functions;

import java.util.Scanner;

public class Factorio {
    public static void main(String[] args) {
        Scanner Fact = new Scanner(System.in);
        System.out.print("Irjon be egy egész számot:");
        int Num;
        Num = Fact.nextInt();

        System.out.println(factorio(Num));
    }

        public static int factorio(int number) {
            int SumFact = 1;
            for (int i = 2; i <= number ; i++) {
                SumFact *= i;

            }

            return SumFact;
        }



}