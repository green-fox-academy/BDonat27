package SixthTask;

public class PrintEven {
    public static void main(String[] args) {
        int a = 1;
        while (a <= 500 ) {
            if ( a % 2 == 0) {
                System.out.println(a);
            }
            a += 1;
        }
    }
}
