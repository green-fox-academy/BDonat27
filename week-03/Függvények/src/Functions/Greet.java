package Functions;

public class Greet {
    public static void main(String[] args) {
        String name = "Green Fox";
        greet(name);
    }
    public static void greet(String GreetToName){
        GreetToName = "Üdv, Kedves " + GreetToName;
        System.out.println(GreetToName);
    }
}

