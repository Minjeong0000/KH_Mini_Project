package main;

import location.LocationController;
import location.LocationVo;
import member.MemberController;
import member.MemberVo;
import menu.BeverageVo;
import menu.FoodVo;
import menu.MenuController;
import menu.MerchandiseVo;

public class Main {
	public static MemberVo loginMember = null;
	public static LocationVo selectLocation = null;
	public static BeverageVo selectBeverage = null;
	public static FoodVo selectFood = null;
	public static MerchandiseVo selectMerchandise = null;
	
	public static void main(String[] args) {
		MemberController mc = new MemberController();
		LocationController lc =new LocationController();
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
				case "1":
					// 로그인 전 메뉴
					if(loginMember != null) {
						mc.printMenuAfterLogin();
					} else {
						mc.printMenu();
					} break;
					
					// 로그인 후 메뉴
				case "2": lc.printMenu(); break;
				case "3":
					// 로그인 후 이용 가능하게
					if(loginMember == null) {
						System.out.println("로그인 후 주문 가능합니다.");
						break;
					}
					
					// 지역 선택했는지 확인
					if(selectLocation == null) {
						lc.showAllLocation();
					}
					fc.printMenu(); break;
				default: System.out.println("잘못된 입력입니다."); break;
				}
			}
		} catch (Exception e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		}
	} // main
} // class
