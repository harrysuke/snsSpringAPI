package entity;

public class Pep {
	private int id;
	private int rnu;
	private String IdentityNo, Name, ContactNo, EMailAddress, HomeAddress, LocationtoVisit;
	private String PurposeofVisit, CompanyName, OfficeAddress, ContactNoOffice, VehicleNo; 
	
	public Pep() {
		super();
	}

	public Pep(int id, int rnu, String identityNo, String name, String contactNo, String eMailAddress,
			String homeAddress, String locationtoVisit, String purposeofVisit, String companyName, String officeAddress,
			String contactNoOffice, String vehicleNo) {
		super();
		this.id = id;
		this.rnu = rnu;
		IdentityNo = identityNo;
		Name = name;
		ContactNo = contactNo;
		EMailAddress = eMailAddress;
		HomeAddress = homeAddress;
		LocationtoVisit = locationtoVisit;
		PurposeofVisit = purposeofVisit;
		CompanyName = companyName;
		OfficeAddress = officeAddress;
		ContactNoOffice = contactNoOffice;
		VehicleNo = vehicleNo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRnu() {
		return rnu;
	}

	public void setRnu(int rnu) {
		this.rnu = rnu;
	}

	public String getIdentityNo() {
		return IdentityNo;
	}

	public void setIdentityNo(String identityNo) {
		IdentityNo = identityNo;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getContactNo() {
		return ContactNo;
	}

	public void setContactNo(String contactNo) {
		ContactNo = contactNo;
	}

	public String getEMailAddress() {
		return EMailAddress;
	}

	public void setEMailAddress(String eMailAddress) {
		EMailAddress = eMailAddress;
	}

	public String getHomeAddress() {
		return HomeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		HomeAddress = homeAddress;
	}

	public String getLocationtoVisit() {
		return LocationtoVisit;
	}

	public void setLocationtoVisit(String locationtoVisit) {
		LocationtoVisit = locationtoVisit;
	}

	public String getPurposeofVisit() {
		return PurposeofVisit;
	}

	public void setPurposeofVisit(String purposeofVisit) {
		PurposeofVisit = purposeofVisit;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}

	public String getOfficeAddress() {
		return OfficeAddress;
	}

	public void setOfficeAddress(String officeAddress) {
		OfficeAddress = officeAddress;
	}

	public String getContactNoOffice() {
		return ContactNoOffice;
	}

	public void setContactNoOffice(String contactNoOffice) {
		ContactNoOffice = contactNoOffice;
	}

	public String getVehicleNo() {
		return VehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}
	
	
}
