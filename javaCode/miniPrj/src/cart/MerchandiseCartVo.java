package cart;

public class MerchandiseCartVo {
	private String merchandiseCartNo;
	private String memberNo;
	private String mdNo;
	private String mdCount;
	private String mdSum;
	private String mdRequest;
	
	// Constructor
	public MerchandiseCartVo() {
	}
	public MerchandiseCartVo(String merchandiseCartNo, String memberNo, String mdNo, String mdCount, String mdSum,
			String mdRequest) {
		super();
		this.merchandiseCartNo = merchandiseCartNo;
		this.memberNo = memberNo;
		this.mdNo = mdNo;
		this.mdCount = mdCount;
		this.mdSum = mdSum;
		this.mdRequest = mdRequest;
	}

	@Override
	public String toString() {
		return "MerchandiseCart [merchandiseCartNo=" + merchandiseCartNo + ", memberNo=" + memberNo + ", mdNo=" + mdNo
				+ ", mdCount=" + mdCount + ", mdSum=" + mdSum + ", mdRequest=" + mdRequest + "]";
	}
	
	// Getter, Setter
	public String getMerchandiseCartNo() {
		return merchandiseCartNo;
	}
	public void setMerchandiseCartNo(String merchandiseCartNo) {
		this.merchandiseCartNo = merchandiseCartNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMdNo() {
		return mdNo;
	}
	public void setMdNo(String mdNo) {
		this.mdNo = mdNo;
	}
	public String getMdCount() {
		return mdCount;
	}
	public void setMdCount(String mdCount) {
		this.mdCount = mdCount;
	}
	public String getMdSum() {
		return mdSum;
	}
	public void setMdSum(String mdSum) {
		this.mdSum = mdSum;
	}
	public String getMdRequest() {
		return mdRequest;
	}
	public void setMdRequest(String mdRequest) {
		this.mdRequest = mdRequest;
	}
} // class
