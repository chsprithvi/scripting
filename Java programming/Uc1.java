import java.util.Random;

class Uc1 {

    public static void main(String args[]){
        int isPresent=1;
        int check=(int)Math.round(Math.random()) % 2;

        if (isPresent==check)
        System.out.println("Employee is Present");
        else
        System.out.println("Employee is Absent");


    }
    
}