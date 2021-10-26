package Lista;

public class TakesLonger {
    public static void main(String[] args) {
        String quote = "Hofstadter's Law: It you expect, even when you take into account Hofstadter's Law.";
        String Frist =quote.substring(0,20);
        String Second=" always takes longer than";
        String Thrird =quote.substring(20);
        quote=Frist + Second + Thrird;
        System.out.println(quote);
    }
}
