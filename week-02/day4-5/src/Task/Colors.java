package Task;

import java.util.Arrays;

public class Colors {
    public static void main(String[] args) {
        String[][] color ={{"lime", "forest green", "olive", "pale green", "spring green"},
                {"orange red", "red", "tomato"},
                {"orchid", "violet", "pink", "hot pink"}};

        System.out.println("Zöld árnyalatok =" + Arrays.toString(color[0] ) );
        System.out.println("Piros árnyalatok =" + Arrays.toString(color[1]) );
        System.out.println("Pink árnyalatok =" + Arrays.toString(color[2]) );

    }
}
