package entity;

import java.io.Serializable;

public class Vep {
	private static final long serialVersionUID = 1L;
	private int id;
	private int rnu;
	private String nRICPassportNo;
	private String name;
	private String companyName;
	private String vehicleNo;
	private String contactNo;
	private String dateofVisit;
	private String expiryDate;
	private String locationtoVisit;
	private String purposeofVisit;
	private String permitType;
	
	public Vep() {
		super();
	}

	public Vep(int id, int rnu, String nRICPassportNo, String name, String companyName, String vehicleNo,
			String contactNo, String dateofVisit, String epiryDate, String locationtoVisit, String purposeofVisit,
			String permitType) {
		this.id = id;
		this.rnu = rnu;
		this.nRICPassportNo = nRICPassportNo;
		this.name = name;
		this.companyName = companyName;
		this.vehicleNo = vehicleNo;
		this.contactNo = contactNo;
		this.dateofVisit = dateofVisit;
		this.expiryDate = expiryDate;
		this.locationtoVisit = locationtoVisit;
		this.purposeofVisit = purposeofVisit;
		this.permitType = permitType;
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

	public String getNRICPassportNo() {
		return nRICPassportNo;
	}

	public void setNRICPassportNo(String nRICPassportNo) {
		this.nRICPassportNo = nRICPassportNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getVehicleNo() {
		return vehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getDateofVisit() {
		return dateofVisit;
	}

	public void setDateofVisit(String dateofVisit) {
		this.dateofVisit = dateofVisit;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getLocationtoVisit() {
		return locationtoVisit;
	}

	public void setLocationtoVisit(String locationtoVisit) {
		this.locationtoVisit = locationtoVisit;
	}

	public String getPurposeofVisit() {
		return purposeofVisit;
	}

	public void setPurposeofVisit(String purposeofVisit) {
		this.purposeofVisit = purposeofVisit;
	}

	public String getPermitType() {
		return permitType;
	}

	public void setPermitType(String permitType) {
		this.permitType = permitType;
	}
	
	
}
