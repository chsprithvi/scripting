import java.util.Scanner;
public class EmpUC7{
    private static final int IS_FULL_TIME=1;
    private static final int IS_PART_TIME=2;
    private static int hour=0;
    public static double wageTotal=0;
    public static double wage=0;
    
    public static void main(String [] args){
        
        empCheck();
        System.out.println("Total Employee Wage :" + wageTotal);
    }
    
    public static void empCheck(){
    
        Scanner myObj = new Scanner(System.in);
        System.out.println("enter wage per hour");
        double wage = myObj.nextDouble();
        
        System.out.println("enter number of working days in a month ");
        int days = myObj.nextInt();

        System.out.println("enter number of working hours in a month ");
        int hourLimit = myObj.nextInt();

        for (int i=1; i <= days && hour < hourLimit; i++){
        int check =(int) (Math.floor(Math.random() * 10 ) % 3);
    
        switch (check){
        case 1:
            System.out.println("FullTime");
            wage = cal(days, 8);
            hour=hour+8;
            wageTotal = wageTotal + wage ;
            break;
        case 2:
            System.out.println("PartTime");
            wage = cal(days, 4);
            hour=hour+4;
            wageTotal = wageTotal + wage ;
            break;
        default:
            System.out.println("Absent");
            break;
    
    }
    }
    }
    public static double cal(final double ratePerHrs, final double totalHrs){
       final double cal= ratePerHrs*totalHrs;
       return cal;
    }
    }