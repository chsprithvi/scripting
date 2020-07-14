import java.util.Random;

class Uc3 {

    public static void main(String args[]){
        int isPresent=1;
        int check=(int)Math.round(Math.random()) % 2;
        int wage=20*8;

        switch (check) {
            case 0:
                System.out.println("Employee is Absent");
                break;
            case 1:
                System.out.println("Employee is Present");
                break;
        
            default:
                break;
        }
    }
    
}