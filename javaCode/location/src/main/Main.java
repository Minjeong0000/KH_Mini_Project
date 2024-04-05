package main;

import java.util.Scanner;

import location.LocationControl;

public class Main {
	
	public static final Scanner SC = new Scanner(System.in);

	public static void main(String[] args) throws Exception {
		
		LocationControl lc =new LocationControl();
		lc.printMenu();
		
	}

}
