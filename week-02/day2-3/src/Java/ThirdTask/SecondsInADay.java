package ThirdTask;

public class SecondsInADay {
    public static void main(String[] args) {
        int currentHours = 14;
        int currentMinutes = 34;
        int currentSeconds = 42;
        currentHours *= 60 *60;
        currentMinutes *= 60;
        System.out.println((60*60*24)-(currentHours + currentMinutes + currentSeconds) +"mp maradt hátra a napból.");



    }
}
