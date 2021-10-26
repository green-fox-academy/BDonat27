package Lista;

import java.util.HashMap;

public class MapIntroduction1 {
    public static void main(String[] args) {
        HashMap<Integer,String> hmap = new HashMap<>();

        hmap.put(97,"a");
        hmap.put(98,"b");
        hmap.put(99,"c");
        hmap.put(65,"A");
        hmap.put(67,"C");
        hmap.put(96,"B");
        for( int i : hmap.keySet() )
        {
            System.out.println( i+"  "+hmap.get(i) );
        }

        System.out.println(hmap.keySet());
        System.out.println(hmap.values());
        hmap.put(68, "D");

        System.out.println(hmap.size());
        System.out.println(hmap.get(99));
        hmap.remove(97);
        System.out.println(hmap.containsValue(100));
        hmap.clear();
    }
}
