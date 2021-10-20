package SixthTask;

import java.util.Scanner;

public class DrawTriangle {
    public static void main(String[] args) {
        Scanner Triangle = new Scanner(System.in);
        System.out.println("Adjon meg egy egész számot:");
         int lineCount;
        lineCount = Triangle.nextInt();
        int i = 1;
        int j = 1;
        while(i <= lineCount) {
            while(j <= i) {
                System.out.print("*");
                j++;
            }
            System.out.print("\n");
            i++;
            j= 1;


        }




        }



}

