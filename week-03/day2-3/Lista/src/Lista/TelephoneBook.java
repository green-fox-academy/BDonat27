package Lista;

import java.util.HashMap;
import java.util.Map;

public class TelephoneBook {
    public static void main(String[] args) {
        HashMap<String, String> Book = new HashMap<>();
        Book.put("William A. Lathan", "405-709-1865");
        Book.put("John K. Miller", "402-247-8568");
        Book.put("Hortensia E. Foster", "606-481-6467");
        Book.put("Amanda D. Newland", "319-243-5613");
        Book.put("Brooke P. Askew", "307-687-2982");
        System.out.println("John K. Miller telefonszáma: " + Book.get("John K. Miller"));
        for (Map.Entry<String, String> elem : Book.entrySet()) {
            if (elem.getValue() == "307-687-2982") {
                System.out.println(elem.getKey());
            }


        }
        System.out.println(Book.containsValue("Chris E. Myer"));
    }
}