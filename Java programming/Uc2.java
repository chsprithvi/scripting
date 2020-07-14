import java.util.Random;

class Uc2 {

    public static void main(String args[]){
        int isPresent=1;
        int check=(int)Math.round(Math.random()) % 2;
        int wage=20*8;

        if (isPresent==check){
        System.out.println("Employee is Present");
        System.out.println("Daily Wage : "+ wage);
        }
        else
        System.out.println("Employee is Absent");



    }
    
}