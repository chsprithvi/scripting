public class EmpUC1{
private static final int IS_FULL_TIME=1;

public static void main(String [] args){
	empCheck();
}

public static void empCheck(){
double check = Math.floor(Math.random() * 10) % 2;
	if(IS_FULL_TIME == check){
	System.out.println("Emplyee is Present");
	}else{
	System.out.println("Employee Absent");
}
}
}
