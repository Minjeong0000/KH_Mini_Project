package member;

public class MemberVo {
	private String memberNo;
	private String id;
	private String pwd;
	private String nick;
	private String phone;
	private String memberAddress;
	private String memberDelYn;
	
	
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MemberVo(String memberNo, String id, String pwd, String nick, String phone, String memberAddress,
			String memberDelYn) {
		super();
		this.memberNo = memberNo;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.phone = phone;
		this.memberAddress = memberAddress;
		this.memberDelYn = memberDelYn;
	}
	
	public String getMemberNo() {
		return memberNo;
	}
	
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getMemberDelYn() {
		return memberDelYn;
	}
	public void setMemberDelYn(String memberDelYn) {
		this.memberDelYn = memberDelYn;
	}
	@Override
	public String toString() {
		return "MemberVo [memberNo=" + memberNo + ", id=" + id + ", pwd=" + pwd + ", nick=" + nick + ", phone=" + phone
				+ ", memberAddress=" + memberAddress + ", memberDelYn=" + memberDelYn + "]";
	}
	
	
}
