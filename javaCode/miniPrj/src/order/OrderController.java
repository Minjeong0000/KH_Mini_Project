package order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cart.CartController;
import main.Main;
import util.JDBCTemplate;

public class OrderController {
	public void orderCart() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();

		// sql
		String sql = "INSERT INTO ORDER_SHOW (ORDER_NO, MEMBER_NO, LOCATION_NO) VALUES (SEQ_ORDER_SHOW_NO.NEXTVAL, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Main.loginMember.getMemberNo());
		pstmt.setString(2, Main.selectLocation.getLocationNo());
		int rowsAffected = pstmt.executeUpdate();
		
		if (rowsAffected > 0) {
			try {
			} catch(Exception e) {
				System.out.println("ORDER_SHOW 예외 발생");
		    	e.printStackTrace();
		    	return ;
		    }
		}
				
		// 주문 트랜잭션 커밋
		conn.commit();
	} // orderCart
	
	public void orderList() throws Exception {
		CartController cc = new CartController();
		OrderController oc = new OrderController();
		
		Connection conn = JDBCTemplate.getConn();
		
		// SQL
		String sql = "SELECT O.ORDER_NO \"주문번호\" , B.BEV_NAME \"상품명\" , C.BEV_COUNT \"수량\" , C.BEV_SUM \"가격\" , C.BEV_REQUEST \"요청사항\" FROM BEVERAGE_CART C JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO) JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO) UNION SELECT O.ORDER_NO \"주문번호\" , F.FOOD_NAME \"상품명\" , C.FOOD_COUNT \"수량\" , C.FOOD_SUM \"가격\" , C.FOOD_REQUEST \"요청사항\" FROM FOOD_CART C JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO) JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO) UNION SELECT O.ORDER_NO \"주문번호\" , M.MD_NAME \"상품명\" , C.MD_COUNT \"수량\" , C.MD_SUM \"가격\" , C.MD_REQUEST \"요청사항\" FROM MERCHANDISE_CART C JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO) JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		System.out.println("====================");
		System.out.println(Main.loginMember.getNick() + "님의 영수증");
		System.out.println("--------------------");		
		int allSum = 0;
		System.out.print("주문번호");
		System.out.print(" | ");
		System.out.print("상품명");
		System.out.print(" | ");
		System.out.print("수량");
		System.out.print(" | ");
		System.out.print("가격");
		System.out.print(" | ");
		System.out.print("요청사항");
		System.out.println();
		System.out.println("--------------------");		
		while(rs.next()) {
			int orderNo = rs.getInt("주문번호");
			String name = rs.getString("상품명");
			int count = rs.getInt("수량");
			int sum = rs.getInt("가격");
			String request = rs.getString("요청사항");
			allSum += sum;
			
			System.out.print(orderNo);
			System.out.print(" | ");
			System.out.print(name);
			System.out.print(" | ");
			System.out.print(count);
			System.out.print(" | ");
			System.out.print(sum);
			System.out.print(" | ");
			System.out.println(request);
		}
		System.out.println("--------------------");
		System.out.println("합계: " + allSum);
		System.out.println("주문자 전화번호: " + Main.loginMember.getPhone());
		System.out.println("배송지: " + Main.loginMember.getMemberAddress());
		System.out.println("주문한 지점번호: " + Main.selectLocation.getLocationNo());
		System.out.println("주문한 지점명: " + Main.selectLocation.getBranchName());
		System.out.println("주문한 지점주소: " + Main.selectLocation.getLocationAddress());
		System.out.println("====================");
		
		// 주문 지점 초기화
		Main.selectLocation = null;
	} // orderList
} // class
