package FourthTask;

import java.util.Scanner;

public class MileToKmConverter {
    public static void main(String[] args) {
        Scanner convert = new Scanner(System.in);
        System.out.println("Adjon meg egy távolságot mérföldben:");
        double Miles, km;
        Miles  = convert.nextDouble();
        km = Miles * 1.609;

        System.out.println(Miles+ " " + "Mérföld"+ "=" + km + "km");



    }
}
