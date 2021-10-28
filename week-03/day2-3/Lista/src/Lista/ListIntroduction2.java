package Lista;

import java.util.ArrayList;
import java.util.Arrays;

public class ListIntroduction2 {
    public static void main(String[] args) {
        ArrayList<String> listA = new ArrayList<>();
        listA.add("Apple");
        listA.add("Avocado");
        listA.add("Blueberries");
        listA.add("Durian");
        listA.add("Lychee");
        ArrayList<String>listB = new ArrayList<>(listA);
        listB.remove("Durian");
        listA.add(4,"Kivifruit");
        System.out.println(listA);
        System.out.println(listA.size() == listB.size());
        System.out.println(listA.indexOf("Avocado"));
        System.out.println(listB.indexOf("Durian"));
        listB.addAll(Arrays.asList("Passion Fruit", "Pomelo"));
        System.out.println(listB);
        System.out.println(listA.get(3));



    }
}
