/**
 * The Employee check class
 */
public class EmployeeWageConditional{
    private static final int IS_FULL_TIME=1;
    private static final int IS_PART_TIME=2;
    private static final int days=20;
    private static int hour=0;
    public static double wageTotal=0;
    public static double wage=0;
    
    public static void main(String [] args){
       empCheck();
       System.out.println("Total Employee Wage :" + wageTotal);
    }
    /**
	 * Check employee
	 * @return true if employee present otherwise false.
     * @return wage for employee working 20days and 100hours as bar.
	 */
    
    public static void empCheck(){
    
       for (int i=1; i <= days && hour <= 100; i++){
       int check =(int) (Math.floor(Math.random() * 10 ) % 3);
    
          switch (check){
          case 1:
             System.out.println("FullTime");
             wage = cal(20, 8);
             hour=hour+8;
             wageTotal = wageTotal + wage ;
             break;
          case 2:
             System.out.println("PartTime");
             wage = cal(20, 4);
             hour=hour+4;
             wageTotal = wageTotal + wage ;
             break;
             default:
             System.out.println("Absent");
             break;
    
    }
    }
    }
    /**
	 * Calculate employee wage based on params.
	 * @param ratePerHrs the employee rate per hours.
	 * @param totalHrs total employee hours.
	 * @return total employee wage.
	 */
    public static double cal(final double ratePerHrs, final double totalHrs){
       final double cal= ratePerHrs*totalHrs;
       return cal;
    }
    }
