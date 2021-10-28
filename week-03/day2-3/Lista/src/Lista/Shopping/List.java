package Lista.Shopping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class List {
    public static void main(String[] args) {
        ArrayList<String> shopping = new ArrayList<>();
        shopping.addAll(Arrays.asList("tojás", "tej", "hal", "alma", "kenyér", "csirke"));
        System.out.println(shopping);
        System.out.print("Adj meg egy terméket:");
        Scanner list = new Scanner(System.in);
        String lista = list.nextLine();

        if (shopping.contains(lista)) {
            System.out.println("Rajta van a listán: " + lista);
                }
        else {
            System.out.println("Nincs rajta a listán : " + lista);
        }
        }
    }

