package cart;

public class FoodCartVo {
	private String foodCartNo;
	private String memberNo;
	private String foodNo;
	private String foodCount;
	private String foodSum;
	private String foodRequest;
	
	// Constructor
	public FoodCartVo() {
	}
	public FoodCartVo(String foodCartNo, String memberNo, String foodNo, String foodCount, String foodSum,
			String foodRequest) {
		this.foodCartNo = foodCartNo;
		this.memberNo = memberNo;
		this.foodNo = foodNo;
		this.foodCount = foodCount;
		this.foodSum = foodSum;
		this.foodRequest = foodRequest;
	}

	@Override
	public String toString() {
		return "FoodCart [foodCartNo=" + foodCartNo + ", memberNo=" + memberNo + ", foodNo=" + foodNo + ", foodCount="
				+ foodCount + ", foodSum=" + foodSum + ", foodRequest=" + foodRequest + "]";
	}
	
	// Getter, Setter
	public String getFoodCartNo() {
		return foodCartNo;
	}
	public void setFoodCartNo(String foodCartNo) {
		this.foodCartNo = foodCartNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getFoodNo() {
		return foodNo;
	}
	public void setFoodNo(String foodNo) {
		this.foodNo = foodNo;
	}
	public String getFoodCount() {
		return foodCount;
	}
	public void setFoodCount(String foodCount) {
		this.foodCount = foodCount;
	}
	public String getFoodSum() {
		return foodSum;
	}
	public void setFoodSum(String foodSum) {
		this.foodSum = foodSum;
	}
	public String getFoodRequest() {
		return foodRequest;
	}
	public void setFoodRequest(String foodRequest) {
		this.foodRequest = foodRequest;
	}
} // class
