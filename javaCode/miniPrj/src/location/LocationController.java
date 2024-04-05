package location;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.JDBCTemplate;

public class LocationController {
	private List<LocationVo> locationList = new ArrayList<>();

	public void printMenu() throws Exception {
		System.out.println("----매장조회----");
		System.out.println("0.뒤로가기");
		System.out.println("1.전체 매장 조회");
		System.out.println("2.근처 매장 조회");

		System.out.print("메뉴 번호 입력 : ");
		String num = util.JDBCTemplate.SC.nextLine();

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
	} // pm

	private void showLocation() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();

		String sql = "SELECT * FROM LOCATION WHERE LOCATION_DEL_YN = 'N' AND  LOCATION_EXPO_YN = 'Y'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		locationList = new ArrayList<>();

		while (rs.next()) {
			LocationVo lv = new LocationVo();

			String locationNo = rs.getString("LOCATION_NO");
			String branchName = rs.getString("BRANCH_NAME");
			String distance = rs.getString("DISTANCE");
			String locationAddress = rs.getString("LOCATION_ADDRESS");
			String telephone = rs.getString("TELEPHONE");
			String locationDelYn = rs.getString("LOCATION_DEL_YN");
			String locationExpoYn = rs.getString("LOCATION_EXPO_YN");

			lv.setLocationNo(locationNo);
			lv.setBranchName(branchName);
			lv.setDistance(distance);
			lv.setLocationAddress(locationAddress);
			lv.setTelephone(telephone);
			lv.setLocationDelYn(locationDelYn);
			lv.setLocationExpoYn(locationExpoYn);

			locationList.add(lv); // 리스트에 추가합니다

		}
		for (LocationVo lv : locationList) {
			System.out.println("========================");
			System.out.println("번호 : " + lv.getLocationNo());
			System.out.println("매장이름 : " + lv.getLocationAddress());
			System.out.println("매장이름 : " + lv.getBranchName());
			System.out.println("주소 : " + lv.getDistance());
			System.out.println("번호 : " + lv.getTelephone());
			System.out.println("========================");
		}
	}

	private void showInitLocation() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();

		String sql = "SELECT * FROM location WHERE LOCATION_DEL_YN = 'N' AND  LOCATION_EXPO_YN = 'Y' AND TO_NUMBER(DISTANCE) <= 500 ORDER BY TO_NUMBER(DISTANCE)ASC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		locationList = new ArrayList<>();

		while (rs.next()) {
			LocationVo lv = new LocationVo();

			String locationNo = rs.getString("LOCATION_NO");
			String branchName = rs.getString("BRANCH_NAME");
			String distance = rs.getString("DISTANCE");
			String telephone = rs.getString("TELEPHONE");
			String locationDelYn = rs.getString("LOCATION_DEL_YN");
			String locationExpoYn = rs.getString("LOCATION_EXPO_YN");

			lv.setLocationNo(locationNo);
			lv.setBranchName(branchName);
			lv.setDistance(distance);
			lv.setTelephone(telephone);
			lv.setLocationDelYn(locationDelYn);
			lv.setLocationExpoYn(locationExpoYn);

			locationList.add(lv); // 리스트에 추가합니다

		}
		for (LocationVo lv : locationList) {
			System.out.println("========================");
			System.out.println("번호 : " + lv.getLocationNo());
			System.out.println("매장이름 : " + lv.getBranchName());
			System.out.println("주소 : " + lv.getDistance());
			System.out.println("번호 : " + lv.getTelephone());
			System.out.println("========================");
		}
	}
	
	private void showAllLocation() throws Exception {
		// conn
				Connection conn = JDBCTemplate.getConn();
				
				// SQL
				String sql = "SELECT LOCATION_NO , BRANCH_NAME , DISTANCE FROM LOCATION";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				// rs
				ArrayList<LocationVo> locationVoList = new ArrayList<LocationVo>();
				LocationVo vo = null;
				
				while(rs.next()) {
					String locationNo = rs.getString("LOCATION_NO");
					String branchName = rs.getString("BRANCH_NAME");
					String distance = rs.getString("DISTANCE");

					vo = new LocationVo();
					
					vo.setLocationNo(locationNo);
					vo.setBranchName(branchName);
					vo.setDistance(distance);
					
					locationVoList.add(vo);
				}
				
				System.out.println("------------------------------");
				System.out.print("지점번호");
				System.out.print(" | ");
				System.out.print("지점명");
				System.out.print(" | ");
				System.out.print("거리");
				System.out.println();
				for (LocationVo x: locationVoList) {
					System.out.print(x.getLocationNo());
					System.out.print(" | ");
					System.out.print(x.getBranchName());
					System.out.print(" | ");
					System.out.print(x.getDistance());
					System.out.println();
				}
				System.out.println("------------------------------");
	} // selectLocationList
			
	public void selectLocationOne() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();
		
		showLocation();
		
		System.out.print("주문할 지점번호 입력: ");
		String num = util.JDBCTemplate.SC.nextLine();
		
		// SQL
		String sql = "SELECT BRANCH_NAME , TELEPHONE , LOCATION_ADDRESS FROM LOCATION WHERE LOCATION_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		ResultSet rs = pstmt.executeQuery();
		
		// rs
		LocationVo vo = null;
		if(rs.next()) {
			String branchName = rs.getString("BRANCH_NAME");
			String telephone = rs.getString("TELEPHONE");
			String locationAddress = rs.getString("LOCATION_ADDRESS");
			vo = new LocationVo();
			
			vo.setBranchName(branchName);
			vo.setTelephone(telephone);
			vo.setLocationAddress(locationAddress);
		}
		
		if(vo == null) {
			System.out.println("매장 상세조회 실패 ...");
			return ;
		}
		
		System.out.println("매장 상세조회 성공 !!!");
		System.out.println("---------------");
		System.out.println("지점명: " + vo.getBranchName());
		System.out.println("전화번호: " + vo.getTelephone());
		System.out.println("주소: " + vo.getLocationAddress());
		System.out.println("---------------");
	}
} // class
