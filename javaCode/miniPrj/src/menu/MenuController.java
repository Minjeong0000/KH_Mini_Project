package menu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Scanner;

import util.JDBCTemplate;

public class MenuController {
	public void printMenu() throws Exception {
		System.out.println("===== 메뉴판 =====");
		System.out.println("0. 뒤로가기");
		System.out.println("1. 음료");
		System.out.println("2. 음식");
		System.out.println("3. 상품");
		
		System.out.print("메뉴 번호 입력: ");
		String num = util.JDBCTemplate.SC.nextLine();
		
		switch(num) {
		case "0": System.out.println("뒤로가기"); return ;
		case "1": beverageShow(); break;
		case "2": foodShow(); break;
		case "3": merchandiseShow(); break;
		default: System.out.println("잘못된 입력입니다."); break;
		}
	} // printMenu
	
	private void beverageShow() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();
		
		// SQL
		String sql = "SELECT B.BEV_NO , B.BEV_NAME , B.BEV_PRICE , C.BEV_CATEGORY , B.BEV_STOCK FROM BEVERAGE B JOIN BEV_CATEGORY C ON B.BEV_CODE = C.BEV_CODE";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		// rs
		ArrayList<BeverageVo> voList = new ArrayList<BeverageVo>();
		BeverageVo vo = null;
		
		while(rs.next()) {
			String bevNo = rs.getString("BEV_NO");
			String bevName = rs.getString("BEV_NAME");
			String bevPrice = rs.getString("BEV_PRICE");
			String bevCategory = rs.getString("BEV_CATEGORY");
			String bevStock = rs.getString("BEV_STOCK");

			vo = new BeverageVo();
			
			vo.setBevNo(bevNo);
			vo.setBevName(bevName);
			vo.setBevPrice(bevPrice);
			// Category 값을 Code 멤버에 할당해줌 -> 임시로.....
			vo.setBevCode(bevCategory);
			vo.setBevStock(bevStock);
			
			voList.add(vo);
		}
		
		System.out.println("------------------------------");
		System.out.print("메뉴번호");
		System.out.print(" | ");
		System.out.print("메뉴명");
		System.out.print(" | ");
		System.out.print("가격");
		System.out.print(" | ");
		System.out.print("카테고리");
		System.out.print(" | ");
		System.out.print("재고");
		System.out.println();
		for (BeverageVo x: voList) {
			System.out.print(x.getBevNo());
			System.out.print(" | ");
			System.out.print(x.getBevName());
			System.out.print(" | ");
			System.out.print(x.getBevPrice());
			System.out.print(" | ");
			System.out.print(x.getBevCode());
			System.out.print(" | ");
			System.out.print(x.getBevStock());
			System.out.println();
		}
		System.out.println("------------------------------");
	} // beverageShow
	
	private void foodShow() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();
		
		// SQL
		String sql = "SELECT F.FOOD_NO , F.FOOD_NAME , F.FOOD_PRICE , C.FOOD_CATEGORY , F.FOOD_STOCK FROM FOOD F JOIN FOOD_CATEGORY C ON F.FOOD_CODE = C.FOOD_CODE";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		// rs
		ArrayList<FoodVo> voList = new ArrayList<FoodVo>();
		FoodVo vo = null;
		
		while(rs.next()) {
			String foodNo = rs.getString("FOOD_NO");
			String foodName = rs.getString("FOOD_NAME");
			String foodPrice = rs.getString("FOOD_PRICE");
			String foodCategory = rs.getString("FOOD_CATEGORY");
			String foodStock = rs.getString("FOOD_STOCK");

			vo = new FoodVo();
			
			vo.setFoodNo(foodNo);
			vo.setFoodName(foodName);
			vo.setFoodPrice(foodPrice);
			// Category 값을 Code 멤버에 할당해줌 -> 임시로.....
			vo.setFoodCode(foodCategory);
			vo.setFoodStock(foodStock);
			
			voList.add(vo);
		}
		
		System.out.println("------------------------------");
		System.out.print("메뉴번호");
		System.out.print(" | ");
		System.out.print("메뉴명");
		System.out.print(" | ");
		System.out.print("가격");
		System.out.print(" | ");
		System.out.print("카테고리");
		System.out.print(" | ");
		System.out.print("재고");
		System.out.println();
		for (FoodVo x: voList) {
			System.out.print(x.getFoodNo());
			System.out.print(" | ");
			System.out.print(x.getFoodName());
			System.out.print(" | ");
			System.out.print(x.getFoodPrice());
			System.out.print(" | ");
			System.out.print(x.getFoodCode());
			System.out.print(" | ");
			System.out.print(x.getFoodStock());
			System.out.println();
		}
		System.out.println("------------------------------");
	} // foodShow
	
	private void merchandiseShow() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();
		
		// SQL
		String sql = "SELECT M.MD_NO , M.MD_NAME , M.MD_PRICE , C.MD_CATEGORY , M.MD_STOCK FROM MERCHANDISE M JOIN MD_CATEGORY C ON M.MD_CODE = C.MD_CODE";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		// rs
		ArrayList<MerchandiseVo> voList = new ArrayList<MerchandiseVo>();
		MerchandiseVo vo = null;
		
		while(rs.next()) {
			String MdNo = rs.getString("MD_NO");
			String MdName = rs.getString("MD_NAME");
			String MdPrice = rs.getString("MD_PRICE");
			String MdCategory = rs.getString("MD_CATEGORY");
			String MdStock = rs.getString("MD_STOCK");

			vo = new MerchandiseVo();
			
			vo.setMdNo(MdNo);
			vo.setMdName(MdName);
			vo.setMdPrice(MdPrice);
			// Category 값을 Code 멤버에 할당해줌 -> 임시로.....
			vo.setMdCode(MdCategory);
			vo.setMdStock(MdStock);
			
			voList.add(vo);
		}
		
		System.out.println("------------------------------");
		System.out.print("메뉴번호");
		System.out.print(" | ");
		System.out.print("메뉴명");
		System.out.print(" | ");
		System.out.print("가격");
		System.out.print(" | ");
		System.out.print("카테고리");
		System.out.print(" | ");
		System.out.print("재고");
		System.out.println();
		for (MerchandiseVo x: voList) {
			System.out.print(x.getMdNo());
			System.out.print(" | ");
			System.out.print(x.getMdName());
			System.out.print(" | ");
			System.out.print(x.getMdPrice());
			System.out.print(" | ");
			System.out.print(x.getMdCode());
			System.out.print(" | ");
			System.out.print(x.getMdStock());
			System.out.println();
		}
		System.out.println("------------------------------");
	} // merchandiseShow
} // class
