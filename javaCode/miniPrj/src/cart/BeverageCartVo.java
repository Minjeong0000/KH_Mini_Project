package cart;

public class BeverageCartVo {
	private String beverageCartNo;
	private String memberNo;
	private String bevNo;
	private String bevCount;
	private String bevSum;
	private String bevRequest;
	
	// Constructor
	public BeverageCartVo() {
	}
	public BeverageCartVo(String beverageCartNo, String memberNo, String bevNo, String bevCount, String bevSum,
			String bevRequest) {
		this.beverageCartNo = beverageCartNo;
		this.memberNo = memberNo;
		this.bevNo = bevNo;
		this.bevCount = bevCount;
		this.bevSum = bevSum;
		this.bevRequest = bevRequest;
	}

	@Override
	public String toString() {
		return "BeverageCart [beverageCartNo=" + beverageCartNo + ", memberNo=" + memberNo + ", bevNo=" + bevNo
				+ ", bevCount=" + bevCount + ", bevSum=" + bevSum + ", bevRequest=" + bevRequest + "]";
	}
	
	// Getter, Setter
	public String getBeverageCartNo() {
		return beverageCartNo;
	}
	public void setBeverageCartNo(String beverageCartNo) {
		this.beverageCartNo = beverageCartNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getBevNo() {
		return bevNo;
	}
	public void setBevNo(String bevNo) {
		this.bevNo = bevNo;
	}
	public String getBevCount() {
		return bevCount;
	}
	public void setBevCount(String bevCount) {
		this.bevCount = bevCount;
	}
	public String getBevSum() {
		return bevSum;
	}
	public void setBevSum(String bevSum) {
		this.bevSum = bevSum;
	}
	public String getBevRequest() {
		return bevRequest;
	}
	public void setBevRequest(String bevRequest) {
		this.bevRequest = bevRequest;
	}
} // class
