package order;

public class OrderShowVo {
	private String orderNo;
	private String memberNo;
	private String locationNo;
	
	// Constructor
	public OrderShowVo() {
	}
	public OrderShowVo(String orderNo, String memberNo, String locationNo) {
		this.orderNo = orderNo;
		this.memberNo = memberNo;
		this.locationNo = locationNo;
	}
	
	@Override
	public String toString() {
		return "OrderShowVo [orderNo=" + orderNo + ", memberNo=" + memberNo + ", locationNo=" + locationNo + "]";
	}
	
	// Getter, Setter
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(String locationNo) {
		this.locationNo = locationNo;
	}
} // class
