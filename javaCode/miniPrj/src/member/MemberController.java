package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cart.CartController;
import main.Main;
import util.JDBCTemplate;

public class MemberController {
	public void printMenu() throws Exception {
		System.out.println("==============MEMBER=============");
		System.out.println("0.이전 메뉴로 돌아가기");
		System.out.println("1. 로그인");
		System.out.println("2. 회원가입");
		System.out.print("메뉴 번호 입력 : ");
		String num = util.JDBCTemplate.SC.nextLine();
		switch (num) {
		case "1":
			login();
			break;
		case "2":
			join();
			break;
		case "0":
			System.out.println("이전 메뉴로 돌아갑니다.");
			return;
		default:
			System.out.println("잘못 입력하셨습니다.");
		}
	} // printMenu method

	private void join() throws Exception {
		// conn
		Connection conn = JDBCTemplate.getConn();
		System.out.print("아이디 : ");
		String id = util.JDBCTemplate.SC.nextLine();
		System.out.print("비밀번호 : ");
		String pwd = util.JDBCTemplate.SC.nextLine();
		System.out.print("닉네임 : ");
		String nick = util.JDBCTemplate.SC.nextLine();
		System.out.print("전화번호 : ");
		String phone = util.JDBCTemplate.SC.nextLine();
		System.out.print("주소 : ");
		String memberAddress = util.JDBCTemplate.SC.nextLine();

		MemberVo inputVo = new MemberVo();
		inputVo.setId(id);
		inputVo.setPwd(pwd);
		inputVo.setNick(nick);
		inputVo.setPhone(phone);
		inputVo.setMemberAddress(memberAddress);

		// sql
		String sql = "INSERT INTO MEMBER(MEMBER_NO,ID,PWD,NICK,PHONE,MEMBER_ADDRESS) VALUES(SEQ_MEMBER_NO.NEXTVAL,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, nick);
		pstmt.setString(4, phone);
		pstmt.setString(5, memberAddress);
		int result = pstmt.executeUpdate();
		if (result != 1) {
			System.out.println("회원가입 실패..");
			return;
		}
		conn.commit();
		System.out.println(nick + "님 회원가입을 축하합니다");
	}

	private void login() throws Exception {
		Connection conn = JDBCTemplate.getConn();
		System.out.print("아이디 : ");
		String id = util.JDBCTemplate.SC.nextLine();
		System.out.print("비밀번호 :  ");
		String pwd = util.JDBCTemplate.SC.nextLine();

		// sql
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_DEL_YN = 'N' AND ID =? AND PWD =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();

		// rs
		MemberVo vo = null;
		if (rs.next()) {// id,pwd 생략한 이유: 로그인 성공하면 위에서 입력한 값이랑 똑같으니까
			String memberNo = rs.getString("MEMBER_NO");
			String nick = rs.getString("NICK");
			String phone = rs.getString("PHONE");
			String memberAddress = rs.getString("MEMBER_ADDRESS");
			String memberDelYn = rs.getString("MEMBER_DEL_YN");

			vo = new MemberVo(memberNo, id, pwd, nick, phone, memberAddress, memberDelYn);
		}
		if (vo == null) {
			System.out.println("로그인 실패");
			return;
		}
		System.out.println(vo.getNick() + "님 환영합니다.");
		Main.loginMember = vo;
	}

	public void printMenuAfterLogin() throws Exception {
		System.out.println("0. 뒤로가기");
		System.out.println("1. 비밀번호 변경");
		System.out.println("2. 주소 변경");
		System.out.println("3. 전화번호 변경");
		System.out.println("4. 장바구니");
		System.out.println("5. 로그아웃");
		System.out.println("6. 회원탈퇴");

		System.out.println("메뉴 번호 선택: ");
		String num = util.JDBCTemplate.SC.nextLine();
		switch (num) {
		case "0":
			return ;
		case "1":
			changePwd();
			break;
		case "2":
			changeMemberAddress();
			break;
		case "3":
			changePhone();
			break;
		case "4":
			showCart();
			 break;
		case "5":
			logout();
			break;
		case "6":
			quit();
			break;
		default:
			System.out.println("잘못 입력하셨습니다");
		}
	}
	
	private void showCart() throws Exception {
		CartController cc = new CartController();
		
		System.out.println(Main.loginMember.getNick() + "님의 장바구니");
		
		Connection conn = JDBCTemplate.getConn();
		
		String sql = "SELECT B.BEV_NAME NAME , C.BEV_COUNT COUNT , C.BEV_SUM SUM , C.BEV_REQUEST REQUEST FROM BEVERAGE_CART C JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO) UNION SELECT F.FOOD_NAME NAME , C.FOOD_COUNT COUNT , C.FOOD_SUM SUM , C.FOOD_REQUEST REQUEST FROM FOOD_CART C JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO) UNION SELECT M.MD_NAME NAME , C.MD_COUNT COUNT , C.MD_SUM SUM , C.MD_REQUEST REQUEST FROM MERCHANDISE_CART C JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String name = rs.getString("NAME");
			int count = rs.getInt("COUNT");
			int sum = rs.getInt("SUM");
			String request = rs.getString("REQUEST");
			
			System.out.println("상품명 : " + name);
			System.out.println("수량 : " + count);
			System.out.println("가격 : " + sum);
			System.out.println("요청사항 : " + request);
		}
		System.out.println("===== 장바구니 메뉴 =====");
		System.out.println("0. 뒤로가기");
		System.out.println("1. 주문하기");
		System.out.println("2. 비우기");
	
		System.out.print("메뉴 번호 입력: ");
		String num = JDBCTemplate.SC.nextLine();
		switch(num) {
		case "0": return ;
		case "1": System.out.println("주문했다."); break;
		case "2": cc.emptyCart(); break;
		default: System.out.println("잘못된 입력입니다. 뒤로갑니다."); return ;
		}
	} // showCart

	private void changePwd() throws Exception {
		Connection conn = JDBCTemplate.getConn();
		System.out.print("바꿀 비밀번호 입력 :");
		String pwd = util.JDBCTemplate.SC.nextLine();

		// sql
		String sql = "UPDATE MEMBER SET PWD = ? WHERE MEMBER_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pwd);
		pstmt.setString(2, Main.loginMember.getMemberNo());
		int result = pstmt.executeUpdate();

		if (result != 1) {
			System.out.println("비밀번호 변경 실패");
			return;
		}
		System.out.println("비밀번호 변경 성공");
		conn.commit();
	}
	
	// 주소변경 메서드
	private void changeMemberAddress() throws Exception{
		Connection conn = JDBCTemplate.getConn();
		System.out.print("바꿀 주소 입력 : ");
		String address = util.JDBCTemplate.SC.nextLine();
		// sql
		String sql = "UPDATE MEMBER SET MEMBER_ADDRESS = ? WHERE MEMBER_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, address);
		pstmt.setString(2, Main.loginMember.getMemberNo());
		int result = pstmt.executeUpdate();
				
		if(result != 1) {
		System.out.println("주소 변경 실패");
		return;
		}
		System.out.println("주소 변경 성공");
		conn.commit();
	}
	
	// 전화번호 변경 메서드
	private void changePhone() throws Exception{
		Connection conn = JDBCTemplate.getConn();
		System.out.print("바꿀 전화번호 입력 : ");
		String phone = util.JDBCTemplate.SC.nextLine();
		
		String sql = "UPDATE MEMBER SET PHONE = ? WHERE MEMBER_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, phone);
		pstmt.setString(2, Main.loginMember.getMemberNo());
		
		int result = pstmt.executeUpdate();
		
		if(result != 1) {
			System.out.println("전화번호 변경 실패");
			return;
		}
		System.out.println("전화번호 변경 성공");
		conn.commit();
	}

	private void logout() {
		Main.loginMember = null;
		System.out.println("로그아웃 완료");
	}

	private void quit() throws Exception {
		// CONN
		Connection conn = JDBCTemplate.getConn();
		System.out.println("탈퇴하시겠습니까? (Y/N)");
		String answer = util.JDBCTemplate.SC.nextLine();
		if (answer.equals("N")) {
			return;
		} else if (answer.equals("Y")) {
			//SQL
			String sql = "UPDATE MEMBER SET MEMBER_DEL_YN = 'Y' WHERE MEMBER_NO = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Main.loginMember.getMemberNo());
			int result = pstmt.executeUpdate();
			if (result != 1) {
				System.out.println("회원탈퇴 실패");
				return;
			}
			System.out.println("회원탈퇴 성공");
			conn.commit();

		} else {
			System.out.println("잘못된 입력입니다");
		}
	}
} // class
