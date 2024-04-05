package menu;

public class BeverageVo {
	private String bevNo;
	private String bevName;
	private String bevPrice;
	private String icedHot;
	private String bevDelYn;
	private String bevExpoYn;
	private String bevCode;
	private String bevStock;
	
	// Constructor
	public BeverageVo() {
	}
	public BeverageVo(String bevNo, String bevName, String bevPrice, String icedHot, String bevDelYn, String bevExpoYn,
			String bevCode, String bevStock) {
		this.bevNo = bevNo;
		this.bevName = bevName;
		this.bevPrice = bevPrice;
		this.icedHot = icedHot;
		this.bevDelYn = bevDelYn;
		this.bevExpoYn = bevExpoYn;
		this.bevCode = bevCode;
		this.bevStock = bevStock;
	}
	
	@Override
	public String toString() {
		return "BevVo [bevNo=" + bevNo + ", bevName=" + bevName + ", bevPrice=" + bevPrice + ", icedHot=" + icedHot
				+ ", bevDelYn=" + bevDelYn + ", bevExpoYn=" + bevExpoYn + ", bevCode=" + bevCode + ", bevStock="
				+ bevStock + "]";
	}
	
	// Getter, Setter
	public String getBevNo() {
		return bevNo;
	}
	public void setBevNo(String bevNo) {
		this.bevNo = bevNo;
	}
	public String getBevName() {
		return bevName;
	}
	public void setBevName(String bevName) {
		this.bevName = bevName;
	}
	public String getBevPrice() {
		return bevPrice;
	}
	public void setBevPrice(String bevPrice) {
		this.bevPrice = bevPrice;
	}
	public String getIcedHot() {
		return icedHot;
	}
	public void setIcedHot(String icedHot) {
		this.icedHot = icedHot;
	}
	public String getBevDelYn() {
		return bevDelYn;
	}
	public void setBevDelYn(String bevDelYn) {
		this.bevDelYn = bevDelYn;
	}
	public String getBevExpoYn() {
		return bevExpoYn;
	}
	public void setBevExpoYn(String bevExpoYn) {
		this.bevExpoYn = bevExpoYn;
	}
	public String getBevCode() {
		return bevCode;
	}
	public void setBevCode(String bevCode) {
		this.bevCode = bevCode;
	}
	public String getBevStock() {
		return bevStock;
	}
	public void setBevStock(String bevStock) {
		this.bevStock = bevStock;
	}
} // class
