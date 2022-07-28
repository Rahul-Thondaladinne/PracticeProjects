package emailvalidation;
import java.util.ArrayList;
import java.util.Scanner;
public class EmailValidation {
	public static void main(String[] args) {
		
		// STring name = null;
		ArrayList<String> emailids = new ArrayList<String>();
		emailids.add("rahulrahul6557@gmail.com");
		emailids.add("rahul@gmail.com");
		emailids.add("6557@gmail.com");
		emailids.add("thondaladinne@gmail.com");
		emailids.add("billa@gmail.com");
		
		Scanner sc = new Scanner(System.in);
		System.out.println("enter your email id");
		String ids = sc.nextLine();
		if (emailids.contains(ids)) {
			System.out.println("your email id is successfully " + ids + " found");
			//break;
			} 
		else {
			System.out.println("your email id " +ids+" not found");
			//break;
			}
		}
	}