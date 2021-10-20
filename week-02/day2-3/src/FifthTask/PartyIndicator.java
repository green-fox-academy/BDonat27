package FifthTask;

import java.util.Scanner;

public class PartyIndicator {
    public static void main(String[] args) {
        Scanner Women = new Scanner(System.in);
        System.out.println("Adja meg a lányok létszámát:");
        int W = Women.nextInt();

        Scanner Men = new Scanner(System.in);
        System.out.println("Adja meg a fiúk létszámát:");
        int M = Men.nextInt();

        int Summ = W + M;

        if (Summ > 20 && W == M) {
            System.out.println("Ez a buli kitűnő!");
        }
        else if ( W == 0) {
            System.out.println("Virsli party");
        }
        else if (Summ > 20 && W != M) {
            System.out.println("Ez a buli egész jó!");

        }
        else if (Summ < 20) {
            System.out.println("Átlagos buli...");
        }

        else {
            System.out.println("Elmaradt a buli");
        }

    }
}

