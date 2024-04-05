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
} // class
