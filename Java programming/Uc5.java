import java.util.Random;

class Uc5 {

    public static void main(String args[]){
        int isPresent=1;
        int wage=20*8;
        int sum=0;
        for(int i=0;i<20;i++){
            int check=(int)Math.round(Math.random()) % 2;
            if(check==isPresent){
                sum+=160;
                
            }
        }
        System.out.println("Total wage for present in a month: "+ sum);

    }
    
}