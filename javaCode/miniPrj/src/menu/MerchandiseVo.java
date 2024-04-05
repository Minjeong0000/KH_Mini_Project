package menu;

public class MerchandiseVo {
	private String mdNo;
	private String mdCode;
	private String mdName;
	private String mdPrice;
	private String capacity;
	private String mdDelYn;
	private String mdExpoYn;
	private String mdStock;
	
	// Constructor
	public MerchandiseVo() {
	}
	public MerchandiseVo(String mdNo, String mdCode, String mdName, String mdPrice, String capacity, String mdDelYn,
			String mdExpoYn, String mdStock) {
		this.mdNo = mdNo;
		this.mdCode = mdCode;
		this.mdName = mdName;
		this.mdPrice = mdPrice;
		this.capacity = capacity;
		this.mdDelYn = mdDelYn;
		this.mdExpoYn = mdExpoYn;
		this.mdStock = mdStock;
	}

	@Override
	public String toString() {
		return "MdVo [mdNo=" + mdNo + ", mdCode=" + mdCode + ", mdName=" + mdName + ", mdPrice=" + mdPrice
				+ ", capacity=" + capacity + ", mdDelYn=" + mdDelYn + ", mdExpoYn=" + mdExpoYn + ", mdStock=" + mdStock
				+ "]";
	}
	
	// Getter, Setter
	public String getMdNo() {
		return mdNo;
	}
	public void setMdNo(String mdNo) {
		this.mdNo = mdNo;
	}
	public String getMdCode() {
		return mdCode;
	}
	public void setMdCode(String mdCode) {
		this.mdCode = mdCode;
	}
	public String getMdName() {
		return mdName;
	}
	public void setMdName(String mdName) {
		this.mdName = mdName;
	}
	public String getMdPrice() {
		return mdPrice;
	}
	public void setMdPrice(String mdPrice) {
		this.mdPrice = mdPrice;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getMdDelYn() {
		return mdDelYn;
	}
	public void setMdDelYn(String mdDelYn) {
		this.mdDelYn = mdDelYn;
	}
	public String getMdExpoYn() {
		return mdExpoYn;
	}
	public void setMdExpoYn(String mdExpoYn) {
		this.mdExpoYn = mdExpoYn;
	}
	public String getMdStock() {
		return mdStock;
	}
	public void setMdStock(String mdStock) {
		this.mdStock = mdStock;
	}
} // class
