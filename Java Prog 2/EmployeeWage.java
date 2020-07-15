/**
 * The Employee check class
 */
public class EmployeeWage{
private static final int IS_FULL_TIME=1;

public static void main(String [] args){
	empCheck();
}
/**
* Check employee
* @return wage and Full-Time if employee present otherwise false.
*/
public static void empCheck(){
	double check = Math.floor(Math.random() * 10 ) % 3;
		if(IS_FULL_TIME == check){
			System.out.println("FullTime");
			final double wage = cal(20, 8);
			System.out.println("Total emloyee wage is:" + wage);
}
		else{
			System.out.println("Absent : 0.0");
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
