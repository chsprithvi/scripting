import java.util.ArrayList;

public class EmpWageBuilderUC12 {
    public static final int IS_FULL_TIME = 1;
    public static final int IS_PART_TIME = 2;

    private final String company;
    private final int empRatePerHr;
    private final int numOfWorkDays;
    private final int maxHrsPerMonth;
    private int totalEmpWage;
    private ArrayList<String> dailyWage;

    public EmpWageBuilderUC12(String company, int empRatePerHr, int numOfWorkDays, int maxHrsPerMonth){
        this.company = company;
        this.empRatePerHr = empRatePerHr;
        this.numOfWorkDays = numOfWorkDays;
        this.maxHrsPerMonth = maxHrsPerMonth;
        dailyWage = new ArrayList<>();
    }

    public void totalEmpWage() {
        //VARIABLES
        int empHrs = 0;
        int totalEmpHrs = 0;
        int totalWorkingDays = 0;

        //COMPUTATION
        while (totalEmpHrs <= maxHrsPerMonth && totalWorkingDays < numOfWorkDays) {
            totalWorkingDays++;
            int empCheck = (int) Math.floor(Math.random() * 10) % 3;
            switch (empCheck) {
                case IS_FULL_TIME:
                    empHrs = 8;
                    break;
                case IS_PART_TIME:
                    empHrs = 4;
                    break;
                default:
                    empHrs = 0;
                    break;
            }
            totalEmpHrs += empHrs;
            System.out.println("Days: " + totalWorkingDays + " Emp Hours: " + empHrs);
            dailyWage.add("Emp Wage for Day"+totalWorkingDays+": "+empRatePerHr*empHrs);
        }
        totalEmpWage = totalEmpHrs * empRatePerHr;
        //System.out.println("Total Emp Wage for company company is " + totalEmpWage);
    }
    @Override
    public String toString(){
        return "Total employee wage for company "+company+" is "+totalEmpWage;
    }

    public static void main(String args[]) {
        EmpWageBuilderUC12 dMart = new EmpWageBuilderUC12("DMart", 20, 10, 100);
        dMart.totalEmpWage();
        System.out.println(dMart);
        System.out.println(dMart.dailyWage);
    }
}