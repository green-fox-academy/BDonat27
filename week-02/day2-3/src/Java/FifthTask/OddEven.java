package FifthTask;

import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Adjon meg egy egész számot:");
        int Number = scanner.nextInt();
        if (Number % 2 == 0) {
            System.out.println("A szám páros!");
        }
        else {
            System.out.println("A szám páratlan!");
        }
    }
}
