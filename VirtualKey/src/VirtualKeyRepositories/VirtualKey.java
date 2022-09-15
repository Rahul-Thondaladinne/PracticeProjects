package VirtualKeyRepositories;

import java.io.File;
import java.util.Arrays;
import java.util.Scanner;

public class VirtualKey {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = "Rahul Thondaladinne";
		String path = "C:\\PracticeProjects\\VirtualKey\\Rahul Thondaladinne";
		
		//Create a file and add to the path
		File f = new File(path);
		System.out.println("******Welcome To My World******");
		System.out.println("******Hi, This is " + s + "******");
		System.out.println("******This Application is developed by " + s + "******");
		if(!f.exists()) {
			f.mkdir();
		}
		boolean r = true;
		
		while(true) {
			System.out.println("1. Display the files in ascending order\n");
			System.out.println("2. Below this are some option uses to perform the operation\n");
			System.out.println("3. Close the Application\n");
			
			int ch = sc.nextInt();
			switch(ch) {
			case 1: 
				File a[] = f.listFiles();
				Arrays.sort(a);//It will be sort in ascending order
				for(int i = 0; i<a.length;i++)
					System.out.println(a[i]);
					break;
					
			case 2:
				Boolean t = true;
				while(t) {
					System.out.println("1. Add file to Existing directory");
					System.out.println("2. Delete file from the Existing directory");
					System.out.println("3. User search specified from the directory");
					System.out.println("4. Back to main menu");
					System.out.println("5. Terminate program");
					int ch2 = sc.nextInt();
					switch(ch2) {
					case 1:
						System.out.println("Enter file name");
						String str = sc.next();
						if(new File(f,str).exists()){
							System.out.println("File already exists");
						}
						else {
							File f1 = new File(f, str);
							f1.mkdir();
							if(new File(f, str).exists()) {
								System.out.println("File added successfully");
							}
						}
						break;
						
					case 2:
						System.out.println("Enter a file name");
						String str2 = sc.next();
						boolean f2 = new File(f, str2).exists();
						System.out.println("f2");
						if(f2 == true) {
							File f3 = new File(f, str2);
							f3.delete();
							System.out.println("File successfully deleted");
						}
						else {
							
							System.out.println("File does not exists");
						}
						break;
						
					case 3:
						System.out.println("Enter a Key to search");
						String str3 = sc.next();
						File a1[] = f.listFiles();
						for(int i = 0; i<a1.length;i++) {
							if(a1[i].getName().startsWith(str3)) {
								System.out.println(a1[i]);
							}
							else {
								System.out.println("No file found");
							}
						}
						break;
						
					case 4:
						t = false;
						break;
						
					case 5:
						System.out.println("Program Terminated");
						System.exit(0);
						
					default :
						System.out.println("Input correct value and exists ");
						break;
							
					}
				}
				break;
				
			case 3:
				System.out.println("Program Terminated");
				System.exit(0);
			}
		}
	}

}
