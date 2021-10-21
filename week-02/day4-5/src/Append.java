import java.util.Arrays;

public class Append {
    public static void main(String[] args) {
        String[] animals = {"koal", "pand", "zebr"};
        animals[0] = "koala";
        animals[1] = "panda";
        animals[2] = "zebra";
        System.out.println(Arrays.toString(animals));
    }
}
