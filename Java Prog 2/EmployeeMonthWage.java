/**
 * The Employee check class
 */
public class EmployeeMonthWage{
private static final int IS_FULL_TIME=1;
private static final int IS_PART_TIME=2;
private static final int days=20;
public static double wageTotal=0;

public static void main(String [] args){
	empCheck();
	System.out.println("Total Employee Wage :" + wageTotal);
}
/**
 * Check employee
 * @return wage if employee present otherwise false.
 * @return total wage for 20days.
 */
public static void empCheck(){

	for (int i=1; i <= days; i++){
	int check = (int) (Math.random() * 10 ) % 3;
System.out.println(check);
		if(IS_FULL_TIME == check){
			System.out.println("FullTime");
			final double wage = cal(20, 8);
			wageTotal = wageTotal + wage ;
}		else if(IS_PART_TIME == check){
			System.out.println("PartTime");
			final double wage = cal(20, 4);
			wageTotal = wageTotal + wage ;
}
		else{
			System.out.println("Absent");
}
}
}

/**
 * Calculate employee wage based on params.
 * @param ratePerHrs the employee rate per hours.
 * @param totalHrs total employee hours.
 * @return total employee wage.
 */	
public static double cal(final int ratePerHrs, final int totalHrs){
	final double cal= ratePerHrs*totalHrs;
	return cal;
}
}
