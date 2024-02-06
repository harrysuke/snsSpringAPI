package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import entity.Pep;
import entity.Vep;

@Service
public class PepDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Pep> getAll(){
		try {
			String sql = "SELECT id, rnu, IdentityNo, Name, ContactNo, EMailAddress, HomeAddress, LocationtoVisit, PurposeofVisit, CompanyName, OfficeAddress, ContactNoOffice, VehicleNo FROM pep";
			List<Pep> pepList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Pep>(Pep.class));
			return pepList;
		}catch(DataAccessException e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	public Pep getPepById(int id) {
		String sql = "SELECT id, rnu, IdentityNo, Name, ContactNo, EMailAddress, HomeAddress, LocationtoVisit, PurposeofVisit, CompanyName, OfficeAddress, ContactNoOffice, VehicleNo FROM pep WHERE id=?";
		return jdbcTemplate.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<Pep>(Pep.class));
	}
	
	public int createPep(Pep pep) {
		String sql = "INSERT INTO pep (rnu, IdentityNo, Name, ContactNo, EmailAddress, HomeAddress, LocationtoVisit, PurposeofVisit, CompanyName, OfficeAddress, ContactNoOffice, VehicleNo) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		int rowsAffected = jdbcTemplate.update(
				sql,
				pep.getRnu(),
				pep.getIdentityNo(),
				pep.getName(),
				pep.getContactNo(),
				pep.getEMailAddress(),
				pep.getHomeAddress(),
				pep.getLocationtoVisit(),
				pep.getPurposeofVisit(),
				pep.getCompanyName(),
				pep.getOfficeAddress(),
				pep.getContactNoOffice(),
				pep.getVehicleNo()
				);
		return rowsAffected;
	}
	
	public int updatePep(Pep pep) {
		try {
			String sql = "UPDATE pep SET rnu=?, IdentityNo=?, Name=?, ContactNo=?, EMailAddress=?, " +
		            "HomeAddress=?, LocationtoVisit=?, PurposeofVisit=?, CompanyName=?, OfficeAddress=?, " +
		            "ContactNoOffice=?, VehicleNo=? WHERE id=?";
		    int rowAffected = jdbcTemplate.update(
		            sql,
		            pep.getRnu(),
		            pep.getIdentityNo(),
		            pep.getName(),
		            pep.getContactNo(),
		            pep.getEMailAddress(),
		            pep.getHomeAddress(),
		            pep.getLocationtoVisit(),
		            pep.getPurposeofVisit(),
		            pep.getCompanyName(),
		            pep.getOfficeAddress(),
		            pep.getContactNoOffice(),
		            pep.getVehicleNo(),
		            pep.getId()
		    );
		    return rowAffected;
		}catch(DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int deletePep(int id) {
		String sql = "DELETE FROM pep WHERE id=?";
		int nowAffected = jdbcTemplate.update(sql, id);
		return nowAffected;
	}

}
