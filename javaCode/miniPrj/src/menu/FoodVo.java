package menu;

public class FoodVo {
	private String foodNo;
	private String foodName;
	private String foodPrice;
	private String heatYn;
	private String foodDelYn;
	private String foodExpoYn;
	private String foodCode;
	private String foodStock;
	
	// Constructor
	public FoodVo() {
	}
	public FoodVo(String foodNo, String foodName, String foodPrice, String heatYn, String foodDelYn, String foodExpoYn,
			String foodCode, String foodStock) {
		super();
		this.foodNo = foodNo;
		this.foodName = foodName;
		this.foodPrice = foodPrice;
		this.heatYn = heatYn;
		this.foodDelYn = foodDelYn;
		this.foodExpoYn = foodExpoYn;
		this.foodCode = foodCode;
		this.foodStock = foodStock;
	}
	
	@Override
	public String toString() {
		return "FoodVo [foodNo=" + foodNo + ", foodName=" + foodName + ", foodPrice=" + foodPrice + ", heatYn=" + heatYn
				+ ", foodDelYn=" + foodDelYn + ", foodExpoYn=" + foodExpoYn + ", foodCode=" + foodCode + ", foodStock="
				+ foodStock + "]";
	}
	
	// Getter, Setter
	public String getFoodNo() {
		return foodNo;
	}
	public void setFoodNo(String foodNo) {
		this.foodNo = foodNo;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getFoodPrice() {
		return foodPrice;
	}
	public void setFoodPrice(String foodPrice) {
		this.foodPrice = foodPrice;
	}
	public String getHeatYn() {
		return heatYn;
	}
	public void setHeatYn(String heatYn) {
		this.heatYn = heatYn;
	}
	public String getFoodDelYn() {
		return foodDelYn;
	}
	public void setFoodDelYn(String foodDelYn) {
		this.foodDelYn = foodDelYn;
	}
	public String getFoodExpoYn() {
		return foodExpoYn;
	}
	public void setFoodExpoYn(String foodExpoYn) {
		this.foodExpoYn = foodExpoYn;
	}
	public String getFoodCode() {
		return foodCode;
	}
	public void setFoodCode(String foodCode) {
		this.foodCode = foodCode;
	}
	public String getFoodStock() {
		return foodStock;
	}
	public void setFoodStock(String foodStock) {
		this.foodStock = foodStock;
	}
} // class
