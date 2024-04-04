package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCTemplate {
	public static Connection getConn() throws Exception {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String id = "C##KH";
		String pwd = "1234";
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, id, pwd);
		
		conn.setAutoCommit(false);
		
		return conn;
	} // getConn
} // class
