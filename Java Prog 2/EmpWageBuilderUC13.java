import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

interface IEmpWageBuilderUC13{
    void addCompanyEmpWage(String company, int empRatePerHr, int numOfWorkingDays, int maxHoursPerMonth);
    void totalEmpWage();
    int getTotalWage(String company);
}

public class EmpWageBuilderUC13 implements IEmpWageBuilderUC13{
    public static final int IS_FULL_TIME = 1;
    public static final int IS_PART_TIME = 2;

    //private int numOfCompanies = 0;
    private final ArrayList<Company> listOfComp;
    private final HashMap<String, Company> mapOfComp;

    public EmpWageBuilderUC13() {
        listOfComp = new ArrayList<>();
        mapOfComp = new HashMap<>();
    }

    @Override
    public void addCompanyEmpWage(String company, int empRatePerHr, int numOfWorkingDays, int maxHoursPerMonth) {
        final Company newWage = new Company(company, empRatePerHr, numOfWorkingDays, maxHoursPerMonth);
        listOfComp.add(newWage);
        mapOfComp.put(company, newWage);
    }

    @Override
    public void totalEmpWage() {
        for (int i = 0; i < listOfComp.size(); i++) {
            final Company tempComp = listOfComp.get(i);
            tempComp.setTotalEmpWage(this.totalEmpWage(tempComp));
            System.out.println(tempComp);
        }
    }

    public int getTotalWage(String company) {
        return mapOfComp.get(company).getTotalEmpWage();
    }

    public int totalEmpWage(final Company company) {
        // VARIABLES
        int empHrs = 0;
        int totalEmpHrs = 0;
        int totalWorkingDays = 0;

        // COMPUTATION
        while (totalEmpHrs <= company.getMaxHrsInMonth() && totalWorkingDays < company.getTotalWorkingDays()) {
            totalWorkingDays++;
            final int empCheck = (int) Math.floor(Math.random() * 10) % 3;
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
        }
        return totalEmpHrs * company.getEmpRate();
        // System.out.println("Total Emp Wage for company company is " + totalEmpWage);
    }

    public static void main(final String[] args) {
        final EmpWageBuilderUC13 compObj = new EmpWageBuilderUC13();
        compObj.addCompanyEmpWage("DMart", 20, 2, 10);
        compObj.addCompanyEmpWage("Reliance", 50, 5, 15);
        compObj.totalEmpWage();
        System.out.println("Total Wage for DMart Company: "+compObj.getTotalWage("DMart"));
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

