package cart;

import java.sql.Connection;
import java.sql.PreparedStatement;

import main.Main;
import util.JDBCTemplate;

public class CartController {

	public void foodCart(String num) throws Exception {
		Connection conn = JDBCTemplate.getConn();

		String sql = "INSERT INTO FOOD_CART ( FOOD_CART_NO , MEMBER_NO , FOOD_NO , FOOD_COUNT , FOOD_SUM , FOOD_REQUEST)VALUES (SEQ_FOOD_CART_NO.NEXTVAL, ? , ? , ? , ? , ?)";

		System.out.print("메뉴 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();
		
		// 회원번호
		String no = Main.loginMember.getMemberNo();
		// 상품 한 개 가격
		String price = Main.selectFood.getFoodPrice();
		// 상품 총 가격: price * count
		int sumInt = Integer.parseInt(count) * Integer.parseInt(price);
		String sum = Integer.toString(sumInt);

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no); // 첫번째 물음표 유저 No 넘겨야함(로그인 한 유저
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, sum); // Sum 넘겨야함 price * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		Main.selectFood = null;
		conn.commit();
	} // food
	
	public void beverageCart(String num) throws Exception {
		Connection conn = JDBCTemplate.getConn();

		String sql = "INSERT INTO BEVERAGE_CART ( BEVERAGE_CART_NO , MEMBER_NO , BEV_NO , BEV_COUNT , BEV_SUM , BEV_REQUEST ) VALUES ( SEQ_BEVERAGE_CART_NO.NEXTVAL , ? , ? , ? , ? , ? )";

		System.out.print("메뉴 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("메뉴 요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();

		// 회원번호
		String no = Main.loginMember.getMemberNo();
		// 상품 한 개 가격
		String price = Main.selectBeverage.getBevPrice();
		// 상품 총 가격: price * count
		int sumInt = Integer.parseInt(count) * Integer.parseInt(price);
		String sum = Integer.toString(sumInt);

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no); // 유저 No 넘겨야함
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, sum); // Sum 넘겨야함 Num * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		Main.selectBeverage = null;
		conn.commit();
	} // beverage
	
	public void mdCart(String num) throws Exception {
		Connection conn = JDBCTemplate.getConn();

		String sql = "INSERT INTO MERCHANDISE_CART ( MERCHANDISE_CART_NO , MEMBER_NO , MD_NO , MD_COUNT , MD_SUM , MD_REQUEST ) VALUES ( SEQ_MERCHANDISE_CART_NO.NEXTVAL , ? , ? , ? , ? , ? )";

		System.out.print("상품 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("상품 요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();
		
		// 회원번호
		String no = Main.loginMember.getMemberNo();
		// 상품 한 개 가격
		String price = Main.selectMerchandise.getMdPrice();
		// 상품 총 가격: price * count
		int sumInt = Integer.parseInt(count) * Integer.parseInt(price);
		String sum = Integer.toString(sumInt);

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no); // 유저 No 넘겨야함
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, sum); // Sum 넘겨야함 Num * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		Main.selectMerchandise = null;
		conn.commit();
	} // md
	
	public void emptyCart() throws Exception {
		Connection conn = JDBCTemplate.getConn();
		
		// Bev 카트 비우기
		try {
			if(Main.selectBeverage != null) {
				String sql1 = "DELETE FROM BEVERAGE_CART";
				PreparedStatement pstmt1 = conn.prepareStatement(sql1);
				pstmt1.execute();
				
				// 시퀀스 삭제
				String sql2 = "DROP SEQUENCE SEQ_BEVERAGE_CART_NO";
				PreparedStatement  pstmt2 = conn.prepareStatement(sql2);
				pstmt2.execute();
				
				// 시퀀스 생성
				String sql3 = "CREATE SEQUENCE SEQ_BEVERAGE_CART_NO NOCACHE NOCYCLE";
				PreparedStatement pstmt3 = conn.prepareStatement(sql3);
				pstmt3.execute();
			}
		} catch (Exception e) {
			System.out.println("음료 장바구니 비우기 실패");
		}
		
		// Food 카트 비우기
		try {
			if(Main.selectFood != null) {
				String sql1 = "DELETE FROM FOOD_CART";
				PreparedStatement pstmt1 = conn.prepareStatement(sql1);
				pstmt1.executeUpdate();
				
				// 시퀀스 삭제
				String sql2 = "DROP SEQUENCE SEQ_FOOD_CART_NO";
				PreparedStatement  pstmt2 = conn.prepareStatement(sql2);
				pstmt2.executeUpdate();
				
				// 시퀀스 생성
				String sql3 = "CREATE SEQUENCE SEQ_FOOD_CART_NO NOCACHE NOCYCLE";
				PreparedStatement pstmt3 = conn.prepareStatement(sql3);
				pstmt3.executeUpdate();
			}
		}catch (Exception e) {
			System.out.println("푸드 장바구니 비우기 실패");
		}
		
		// MD 카트 비우기
		try {
			if(Main.selectMerchandise != null) {
				String sql1 = "DELETE FROM MERCHANDISE_CART";
				PreparedStatement pstmt1 = conn.prepareStatement(sql1);
				pstmt1.executeUpdate();
				
				// 시퀀스 삭제
				String sql2 = "DROP SEQUENCE SEQ_MERCHANDISE_CART_NO";
				PreparedStatement  pstmt2 = conn.prepareStatement(sql2);
				pstmt2.executeUpdate();
				
				// 시퀀스 생성
				String sql3 = "CREATE SEQUENCE SEQ_MERCHANDISE_CART_NO NOCACHE NOCYCLE";
				PreparedStatement pstmt3 = conn.prepareStatement(sql3);
				pstmt3.executeUpdate();
			}
		}catch (Exception e) {
			System.out.println("MD 장바구니 비우기 실패");
		}
		
		// 트랜잭션 커밋
		conn.commit();
	} // emptyCart
} // class
