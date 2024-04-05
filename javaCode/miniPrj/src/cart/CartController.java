package cart;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.JDBCTemplate;

public class CartController {

	public void foodCart() throws Exception {

		Connection conn = JDBCTemplate.getConn();

		String sql = "INSERT INTO FOOD_CART ( FOOD_CART_NO , MEMBER_NO , FOOD_NO , FOOD_COUNT , FOOD_SUM , FOOD_REQUEST)VALUES (SEQ_FOOD_CART_NO.NEXTVAL, ? , ? , ? , ? , ?)";

		System.out.print("메뉴 번호 : ");
		String num = JDBCTemplate.SC.nextLine();
		System.out.print("메뉴 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("메뉴 요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "1"); // 첫번째 물음표 유저 No 넘겨야함(로그인 한 유저
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, "10000"); // Sum 넘겨야함 price * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		conn.commit();

	}//food
	
	public void beverageCart() throws Exception {

		Connection conn = JDBCTemplate.getConn();

		String sql = "";

		System.out.print("메뉴 번호 : ");
		String num = JDBCTemplate.SC.nextLine();
		System.out.print("메뉴 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("메뉴 요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "1"); // 유저 No 넘겨야함
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, "10000"); // Sum 넘겨야함 Num * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		conn.commit();

	}//beverage
	
	public void mdCart() throws Exception {

		Connection conn = JDBCTemplate.getConn();

		String sql = "";

		System.out.print("상품 번호 : ");
		String num = JDBCTemplate.SC.nextLine();
		System.out.print("상품 수량 : ");
		String count = JDBCTemplate.SC.nextLine();
		System.out.print("상품 요청사항 : ");
		String request = JDBCTemplate.SC.nextLine();

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "1"); // 유저 No 넘겨야함
		pstmt.setString(2, num);
		pstmt.setString(3, count);
		pstmt.setString(4, "10000"); // Sum 넘겨야함 Num * Count
		pstmt.setString(5, request);
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("장바구니 추가 실패...");
		}
		System.out.println("상품이 장바구니에 담겼습니다.");
		conn.commit();

	}//md
	
	
	
	
} // class
