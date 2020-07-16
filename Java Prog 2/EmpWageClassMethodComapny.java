public class EmpWageClassMethodCompany {
	
	private static final int IS_PART_TIME = 1;
	private static final int IS_FULL_TIME = 2;

	public static void computeEmpWage(String company, int empRatePerHour, int numOfWorkingDays, int maxHrsInMonth) {
		//variables
		int empHrs = 0, totalEmpHrs = 0, totalWorkingDays = 0;

		while(totalEmpHrs <= maxHrsInMonth && totalWorkingDays < numOfWorkingDays) {
			totalWorkingDays++;
			final int value = (int) Math.floor(Math.random() * 10) % 3;
			switch(value) {
				case 1:
					empHrs = 4;
					break;
				case 2:
					empHrs = 8;
					break;
				default: 
					empHrs = 0;
					break;
			}
			totalEmpHrs+=empHrs;
			System.out.println("Day#: "+totalWorkingDays +" Emp Hrs: "+  empHrs);
        }
        int totalEmpWage = totalEmpHrs * empRatePerHour;
        System.out.println("Total Emp wage for company: "+company+"is: "+totalEmpWage);
    }
    public static void main(String[] args) {
        computeEmpWage("Apple", 20, 2, 10);
        computeEmpWage("Samsung", 10, 4, 20);        
    }

}