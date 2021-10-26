package Lista;

import java.util.ArrayList;

public class ListIntroduction1 {
    public static void main(String[] args) {
        ArrayList<String> name = new ArrayList<>();
        System.out.println(name);
        name.add("William");
        System.out.println(name.isEmpty());
        name.add("John");
        name.add("Amanda");
        System.out.println(name);
        System.out.println(name.size());
        System.out.println(name.get(2));
        for (String List : name) {
            System.out.println(List);

        }
        name.remove(1);
        for (int i = name.size() - 1; i >= 0; i--) {
            System.out.println(name.get(i));
        }
        name.clear();
        System.out.println(name);

    }
}
