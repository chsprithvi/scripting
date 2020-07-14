import java.util.Random;

class Uc6 {

    public static void main(String args[]){
        int isPresent=1;
        int wage=20*8;
        int sum=0;
        int day=0;
        int hour=0;
        
        while(day<20&&hour<100){
            int check=(int)Math.round(Math.random()) % 2;
            if(check==isPresent){
                sum+=160;
                day+=1;
                hour+=8;
            }
                        
        }
        if(hour>100){
            hour=hour-100;
            sum=sum-(hour*20);
        }
        System.out.println("Total wage for present in a month: "+ sum);

    }
    
}