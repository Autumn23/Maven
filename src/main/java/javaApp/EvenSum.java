package javaApp;

public class EvenSum {

    public static void main(String[] args) {
        int num = Integer.parseInt(args[0]);
        int even[] = new int[num];
        int sum = 0,j = 0;
        String evennums = "";
        //Insert your code here
        for (int i = 1; i <= num; i++) {
        	   if (i % 2 == 0) {
        	       evennums = evennums + i + " ";
        	       sum = sum + i;
        	   }
        	}



        System.out.println(evennums);
        System.out.println(sum);
    }
}  
