package LIS;

import java.util.Scanner;

public class LongestIncreasingSubsequence {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of array");
		int s = sc.nextInt();
		int arr[] = new int[s];
		System.out.println("Enter the array elements");
		for(int i = 0; i<s;i++) {
			arr[i] = sc.nextInt();
		}
		System.out.println("Enter original array");
		for(int i = 0; i<s;i++) {
			System.out.println(arr[i] + " ");
		}
		String[] paths = new String[arr.length];
		int[] size = new int[arr.length];
		for(int i = 0; i < arr.length; i++) {
			size[i] = 1;
			paths[i] = arr[i] + " ";
		}
		int maxlength = 1;
		for(int i = 1; i<s; i++) {
			for(int j = 0; j<s; j++) {
				if(arr[i]>arr[j] && size[i] < size[j] + 1) {
					size[i] = size[j] + 1;
					paths[i] = paths[j] + arr[i] +" ";
					if(maxlength < size[i]) {
						maxlength = size[i];
					}
				}
			}
			}
			for(int i = 1; i<s; i++) {
				if(size[i] == maxlength) {
					System.out.println("Longest Increasing Subsequence : ");
					System.out.println(paths[i]);
				}
			
		}
	}
}
