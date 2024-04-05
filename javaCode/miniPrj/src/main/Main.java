package main;

import java.util.Scanner;

import member.MemberController;
import member.MemberVo;

public class Main {
	
	public static final Scanner SC = new Scanner(System.in);
	public static MemberVo loginMember =null;
	
	public static void main(String[] args) {
		
		MemberController mc = new MemberController();
		System.out.println("===== MINI PROJECT =====");
		try {
			mc.printMenu();
		} catch (Exception e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		}
		
	} // main
} // class
