package location;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.JDBCTemplate;
import main.Main;

public class LocationControl {

	private List<LocationVo> locationList = new ArrayList<>();

	public void printMenu() throws Exception {
		System.out.println("----매장조회----");
		System.out.println("1.전체 매장 조회");
		System.out.println("2.근처 매장 조회");
		System.out.println("0.뒤로가기");

		System.out.print("메뉴 번호 입력 : ");
		String num = Main.SC.nextLine();

		switch (num) {
		case "1":
			showLocation();
			break;
		case "2":
			showInitLocation();
			break;
		case "0":
			System.out.println("돌아가기");
			return;

		default:
			System.out.println("잘 못 입력했습니다.");

		}

	}// pm

	public void showLocation() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();

		String sql = "SELECT * FROM LOCATION WHERE LOCATION_DEL_YN = 'N' AND  LOCATION_EXPO_YN = 'Y'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		locationList = new ArrayList<>();

		while (rs.next()) {
			LocationVo lv = new LocationVo();

			String locationNO = rs.getString("LOCATION_NO");
			String branchName = rs.getString("BRANCH_NAME");
			String distance = rs.getString("DISTANCE");
			String telephone = rs.getString("TELEPHONE");
			String locationDel = rs.getString("LOCATION_DEL_YN");
			String locationExpo = rs.getString("LOCATION_EXPO_YN");

			lv.setLocationNO(locationNO);
			lv.setBranchName(branchName);
			lv.setDistance(distance);
			lv.setTelephone(telephone);
			lv.setLocationDel(locationDel);
			lv.setLocationExpo(locationExpo);

			locationList.add(lv); // 리스트에 추가합니다

		}
		for (LocationVo lv : locationList) {
			System.out.println("========================");
			System.out.println("번호 : " + lv.getLocationNO());
			System.out.println("매장이름 : " + lv.getBranchName());
			System.out.println("주소 : " + lv.getDistance());
			System.out.println("번호 : " + lv.getTelephone());
			System.out.println("========================");
		}
		
		 printMenu();

	}

	public void showInitLocation() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();

		String sql = "SELECT * FROM location WHERE LOCATION_DEL_YN = 'N' AND  LOCATION_EXPO_YN = 'Y' AND TO_NUMBER(DISTANCE) <= 500 ORDER BY TO_NUMBER(DISTANCE)ASC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		locationList = new ArrayList<>();

		while (rs.next()) {
			LocationVo lv = new LocationVo();

			String locationNO = rs.getString("LOCATION_NO");
			String branchName = rs.getString("BRANCH_NAME");
			String distance = rs.getString("DISTANCE");
			String telephone = rs.getString("TELEPHONE");
			String locationDel = rs.getString("LOCATION_DEL_YN");
			String locationExpo = rs.getString("LOCATION_EXPO_YN");

			lv.setLocationNO(locationNO);
			lv.setBranchName(branchName);
			lv.setDistance(distance);
			lv.setTelephone(telephone);
			lv.setLocationDel(locationDel);
			lv.setLocationExpo(locationExpo);

			locationList.add(lv); // 리스트에 추가합니다

		}
		for (LocationVo lv : locationList) {
			System.out.println("========================");
			System.out.println("번호 : " + lv.getLocationNO());
			System.out.println("매장이름 : " + lv.getBranchName());
			System.out.println("주소 : " + lv.getDistance());
			System.out.println("번호 : " + lv.getTelephone());
			System.out.println("========================");

		}
		printMenu();
	}

}// c

//LOCATION_NO         NUMBER            
//, BRANCH_NAME       VARCHAR2(2000)      
//, LOCATION_ADDRESS  VARCHAR2(2000)     
//, DISTANCE          CHAR(10)           
//, TELEPHONE         CHAR(11)            
//, LOCATION_DEL_YN   CHAR(1)             
//, LOCATION_EXPO_YN  CHAR(1) 