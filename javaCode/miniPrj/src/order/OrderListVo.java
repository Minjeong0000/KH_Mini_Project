package order;

public class OrderListVo {
	private String orderListNo;
	private String orderNo;
	
	// Constructor
	public OrderListVo() {
	}
	public OrderListVo(String orderListNo, String orderNo) {
		super();
		this.orderListNo = orderListNo;
		this.orderNo = orderNo;
	}
	
	@Override
	public String toString() {
		return "OrderListVo [orderListNo=" + orderListNo + ", orderNo=" + orderNo + "]";
	}
	
	// Getter, Setter
	public String getOrderListNo() {
		return orderListNo;
	}
	public void setOrderListNo(String orderListNo) {
		this.orderListNo = orderListNo;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
} // class
