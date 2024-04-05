package location;

public class LocationVo {

	private String locationNO;
	private String branchName;
	private String distance;
	private String telephone;
	private String locationDel;
	private String locationExpo;
	
	
	public String getLocationNO() {
		return locationNO;
	}
	public void setLocationNO(String locationNO) {
		this.locationNO = locationNO;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
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
	public String getLocationDel() {
		return locationDel;
	}
	public void setLocationDel(String locationDel) {
		this.locationDel = locationDel;
	}
	public String getLocationExpo() {
		return locationExpo;
	}
	public void setLocationExpo(String locationExpo) {
		this.locationExpo = locationExpo;
	}
	@Override
	public String toString() {
		return "LocationControl [locationNO=" + locationNO + ", branchName=" + branchName + ", distance=" + distance
				+ ", telephone=" + telephone + ", locationDel=" + locationDel + ", locationExpo=" + locationExpo + "]";
	}
	public LocationVo(String locationNO, String branchName, String distance, String telephone, String locationDel,
			String locationExpo) {
		super();
		this.locationNO = locationNO;
		this.branchName = branchName;
		this.distance = distance;
		this.telephone = telephone;
		this.locationDel = locationDel;
		this.locationExpo = locationExpo;
	}
	public LocationVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}

//LOCATION_NO         NUMBER            
//    , BRANCH_NAME       VARCHAR2(2000)      
//    , LOCATION_ADDRESS  VARCHAR2(2000)     
//    , DISTANCE          CHAR(10)           
//    , TELEPHONE         CHAR(11)            
//    , LOCATION_DEL_YN   CHAR(1)             
//    , LOCATION_EXPO_YN  CHAR(1) 


