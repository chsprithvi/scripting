interface EmpWageArray {

	public static void main(final String[] args) {
 
		final EmpWageBuilderUC11 companyObj = new EmpWageBuilderUC11();
		companyObj.addEmployee("Dmart", 20, 10, 50);
		companyObj.addEmployee("Reliance", 15, 30, 70);
        companyObj.printEmpWage();

	}

}
class EmpWageBuilderUC11 implements EmpWageArray{
	private static final int IS_PART_TIME = 1;
	private static final int IS_FULL_TIME = 2;

	private int companyCount = 0;
	private Company[] wageArray;

	public void EmpWageBuilderArray() {
        wageArray = new Company[5];
        return;
	}

	public void addEmployee(final String Name, final int Wage, final int Days, final int Hours) {
		wageArray[companyCount] = new Company(Name, Wage, Days, Hours);
		companyCount++;
    }
    
    public void printEmpWage() {
		for (int i = 0; i < companyCount; i++) {
			wageArray[i].setTotalEmpWage(EmpWageBuilderUC11.computeEmpWage(wageArray[i]));
			System.out.println(wageArray[i]);
		}
	}    

    public static int computeEmpWage(final Company company) {
		// variables
		int empHrs = 0, totalHrs = 0, totalWorkingDays = 0;

		while (totalHrs <= company.getMaxHrsInMonth() && totalWorkingDays < company.getTotalWorkingDays()) {
			totalWorkingDays++;
			final int value = (int) Math.floor(Math.random() * 10) % 3;
			switch (value) {
				case IS_PART_TIME:
					empHrs = 4;
					break;
				case IS_FULL_TIME:
					empHrs = 8;
					break;
				default:
					empHrs = 0;
					break;
			}
			totalHrs += empHrs;
			System.out.println("Day#:" + totalWorkingDays + " EmpHrs:" + empHrs + " TotalEmpHrs:" + totalHrs);
		}
        return totalHrs * company.getEmpRate();

    }
}
class Company {

	private String name;

	private int empRate;

	private int totalWorkingDays;

	private int maxHrsInMonth;

	private int totalEmpWage;

	public Company() {
	}

	public Company(final String name, final int empRate, final int totalWorkingDays, final int maxHrsInMonth) {
		this.name = name;
		this.empRate = empRate;
		this.totalWorkingDays = totalWorkingDays;
		this.maxHrsInMonth = maxHrsInMonth;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setEmpRate(final int empRate) {
		this.empRate = empRate;
	}

	public int getEmpRate() {
		return empRate;
	}

	public void setTotalWorkingDays(final int totalWorkingDays) {
		this.totalWorkingDays = totalWorkingDays;
	}

	public int getTotalWorkingDays() {
		return totalWorkingDays;
	}

	public void setMaxHrsInMonth(final int maxHrsInMonth) {
		this.maxHrsInMonth = maxHrsInMonth;
	}

	public int getMaxHrsInMonth() {
		return maxHrsInMonth;
	}

	public void setTotalEmpWage(final int totalEmpWage) {
		this.totalEmpWage = totalEmpWage;
	}

	public int getTotalEmpWage() {
		return totalEmpWage;
	}

	@Override
	public String toString() {
        return "total Employ wage for the company " + name + " is " + totalEmpWage;
         
	}
}

