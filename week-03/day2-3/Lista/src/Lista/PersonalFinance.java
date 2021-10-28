package Lista;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PersonalFinance {
    public static void main(String[] args) {
        ArrayList<Integer> Calculat = new ArrayList<>();
        Calculat.add(500);
        Calculat.add(1000);
        Calculat.add(1250);
        Calculat.add(175);
        Calculat.add(800);
        Calculat.add(120);
        System.out.println(Calculat);
        System.out.println("A költség összege: " +sum(Calculat));
        System.out.println("A legnagyobb kiadás: " +Collections.max(Calculat));
        System.out.println("A legkisseb kiadás: " +Collections.min(Calculat));
        System.out.println("Az átlag kiadás: " +sum(Calculat) / Calculat.size());


    }
        public static int  sum (List<Integer> List) {
            int sum = 0;
            for (int i : List){
                sum = sum +i;
            }
            return sum;
        }


}
