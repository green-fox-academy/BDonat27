package FifthTask;

import java.util.Scanner;

public class OneTwoALot {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Adjon meg egy egész számot:");
        int Number = scanner.nextInt();
        if (Number <= 0) {
            System.out.println("Nem elég");
        }
        else if (Number == 1) {
            System.out.println("Egy");
        }
        else if (Number == 2) {
            System.out.println("Kettő");
        }
        else {
            System.out.println("Túl sok");
        }
        }
}