package Lista;

import java.util.HashMap;
import java.util.Map;

public class MapIntroduction2 {
    public static void main(String[] args) {
        HashMap<String,String> hmap = new HashMap<>();
        hmap.put("978-1-60309-452-8","A Letter to Jo");
        hmap.put("978-1-60309-459-7","Lupus");
        hmap.put("978-1-60309-444-3","Red Panda and Moon Bear");
        hmap.put("978-1-60309-461-0","The Lab");

        for (Map.Entry<String, String> entry: hmap.entrySet()
        ) {
            System.out.println(entry.getValue() + " (ISBN: " + entry.getKey()+")");
        }
        hmap.remove("978-1-60309-444-3");
        hmap.values().remove("The Lab");
        hmap.put("978-1-60309-450-4", "They Called Us Enemy");
        hmap.put("978-1-60309-453-5", "Why Did We Trust Him?");
        System.out.println(hmap.containsValue("478-0-61159-424-8"));
        System.out.println(hmap.get("978-1-60309-453-5"));
    }
}
