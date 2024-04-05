package order;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
	
		 if (rowsAffected <= 0) {
             try {
             } catch(Exception e) {
            	 e.printStackTrace();
            	 return ;
             }
         }
	} // orderCart

	public void orderShow() throws Exception {
		OrderShowVo os = new OrderShowVo();
		
		// conn
		Connection conn = JDBCTemplate.getConn();
		OrderListVo vo = new OrderListVo();
		vo.setOrderListNo("1");

		// sql
		String sql = "INSERT INTO ORDER_SHOW ( ORDER_NO , MEMBER_NO , LOCATION_NO ) VALUES ( SEQ_ORDER_SHOW_NO.NEXTVAL , ? , ? )";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getOrderNo());
		int result = pstmt.executeUpdate();
		if (result != 1) {
			System.out.println("주문 실패 ...");
			return ;
		}
		conn.commit();
		System.out.println("주문 완료 !!!");
	} // orderShow
} // class
