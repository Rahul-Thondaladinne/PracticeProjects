package arithmetic;
import java.util.Scanner;
public class arithmeticcalculator {
	public static void main(String[] args) {
		
		double ele1,ele2,res;
		char oper;
		//enter the user input elements
		Scanner sc = new Scanner(System.in);
		//enter the first element
		System.out.println("Enter the First element : ");
		ele1 = sc.nextDouble();
		//enter the operand for doing operation
		System.out.println("\n+:Addition. \n:Subtraction. \n*:Multiplication. \n/:Division. \n%:Remainder.");
		System.out.println("Enter the operand : ");
		oper = sc.next().charAt(0);
		//enter the second element
		System.out.println("Enter the Second elements : ");
		ele2 = sc.nextDouble();
		
		switch(oper) {
		case '+':
			res = ele1 + ele2;
			System.out.println(ele1 + "+" + ele2 + "=" + res);
			break;
		case '-':
			res = ele1 - ele2;
			System.out.println(ele1 + "-" + ele2 + "=" + res);
			break;
		case '*':
			res = ele1 * ele2;
			System.out.println(ele1 + "*" + ele2 + "=" + res);
			break;
		case '/':
			res = ele1 / ele2;
			System.out.println(ele1 + "/" + ele2 + "=" + res);
			break;
		case '%':
			res = ele1 % ele2;
			System.out.println(ele1 + "%" + ele2 + "=" + res);
			break;
		default :
			System.out.println("You Entered invalid operator");
			break;
				
		}
		
		sc.close();
		
	}

}
