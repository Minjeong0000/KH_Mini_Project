package main;

import location.LocationControl;
import member.MemberController;
import member.MemberVo;
import menu.MenuController;

public class Main {
	public static MemberVo loginMember = null;
	
	public static void main(String[] args) {
		MemberController mc = new MemberController();
		LocationControl lc =new LocationControl();
		MenuController fc = new MenuController();
		
		System.out.println("===== MINI PROJECT =====");
		try {
			while(true) {
				System.out.println("0. 종료");
				System.out.println("1. 회원");
				System.out.println("2. 매장");
				System.out.println("3. 주문");
				
				System.out.print("메뉴 번호 입력: ");
				String num = util.JDBCTemplate.SC.nextLine();
				
				switch(num) {
				case "0": System.out.println("프로그램 종료"); return;
				case "1": mc.printMenu(); break;
				case "2": lc.printMenu(); break;
				case "3": lc.selectLocationOne(); break;
				default: System.out.println("잘못된 입력입니다."); break;
				}
			}
		} catch (Exception e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		}
	
//		System.out.print("주문하려면 1을, 종료하려면 0을 입력하세요: ");
//		String num = util.JDBCTemplate.SC.nextLine();
//		
//		switch(num) {
//		case "0": System.out.println("프로그램 종료."); return;
//		case "1": fc.printMenu(); break;
//		default: System.out.println("잘못된 입력입니다.");
//		}
	} // main
} // class
