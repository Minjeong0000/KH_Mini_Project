package location;

public class LocationVo {
	private String locationNo;
	private String branchName;
	private String locationAddress;
	private String distance;
	private String telephone;
	private String locationDelYn;
	private String locationExpoYn;
	
	// Constructor
	public LocationVo() {
	}
	public LocationVo(String locationNo, String branchName, String locationAddress, String distance, String telephone,
			String locationDelYn, String locationExpoYn) {
		this.locationNo = locationNo;
		this.branchName = branchName;
		this.locationAddress = locationAddress;
		this.distance = distance;
		this.telephone = telephone;
		this.locationDelYn = locationDelYn;
		this.locationExpoYn = locationExpoYn;
	}

	@Override
	public String toString() {
		return "LocationVo [locationNo=" + locationNo + ", branchName=" + branchName + ", locationAddress="
				+ locationAddress + ", distance=" + distance + ", telephone=" + telephone + ", locationDelYn="
				+ locationDelYn + ", locationExpoYn=" + locationExpoYn + "]";
	}
	
	// Getter, Setter
	public String getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(String locationNo) {
		this.locationNo = locationNo;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getLocationAddress() {
		return locationAddress;
	}
	public void setLocationAddress(String locationAddress) {
		this.locationAddress = locationAddress;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getLocationDelYn() {
		return locationDelYn;
	}
	public void setLocationDelYn(String locationDelYn) {
		this.locationDelYn = locationDelYn;
	}
	public String getLocationExpoYn() {
		return locationExpoYn;
	}
	public void setLocationExpoYn(String locationExpoYn) {
		this.locationExpoYn = locationExpoYn;
	}
} // class
