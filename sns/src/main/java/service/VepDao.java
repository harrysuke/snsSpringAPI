package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import entity.Vep;

@Service
public class VepDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Vep> getAll(){
		String sql="SELECT id, rnu, NRICPassportNo, Name, CompanyName, VehicleNo, ContactNo, DateofVisit, ExpiryDate, LocationtoVisit, PurposeofVisit, PermitType FROM vep";
		List<Vep> vepList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Vep>(Vep.class));
		return vepList;
	}
	
	public Vep getVepById(int id) {
		String sql="SELECT id, rnu, NRICPassportNo, Name, CompanyName, VehicleNo, ContactNo, DateofVisit, ExpiryDate, LocationtoVisit, PurposeofVisit, PermitType FROM vep WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<Vep>(Vep.class));
	}
	
	public int createVep(Vep vep) {
		try {
			String sql="INSERT INTO vep (rnu, Name, CompanyName, VehicleNo, ContactNo, DateofVisit, ExpiryDate, LocationtoVisit, PurposeofVisit, PermitType) VALUES (?,?,?,?,?,?,?,?,?,?)";
			int rowsAffected = jdbcTemplate.update(
					sql, 
					vep.getRnu(), 
					vep.getName(), 
					vep.getCompanyName(), 
					vep.getVehicleNo(), 
					vep.getContactNo(), 
					vep.getDateofVisit(), 
					vep.getExpiryDate(), 
					vep.getLocationtoVisit(), 
					vep.getPurposeofVisit(), 
					vep.getPermitType()
					);
			return rowsAffected;
		}catch(DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int updateVep(Vep vep) {
		String sql="UPDATE vep SET rnu=?, Name=?, CompanyName=?, VehicleNo=?, ContactNo=?, DateofVisit=?, ExpiryDate=?, LocationtoVisit=?, PurposeofVisit=?, PermitType=? WHERE id=?";
		int rowAffected = jdbcTemplate.update(
				sql,
				vep.getRnu(), 
				vep.getName(), 
				vep.getCompanyName(), 
				vep.getVehicleNo(), 
				vep.getContactNo(), 
				vep.getDateofVisit(), 
				vep.getExpiryDate(), 
				vep.getLocationtoVisit(), 
				vep.getPurposeofVisit(), 
				vep.getPermitType(),
				vep.getId()
		);
		return rowAffected;
	}
	
	public int deleteVep(int id) {
		String sql="DELETE FROM vep WHERE id=?";
		int nowAffected = jdbcTemplate.update(sql, id);
		return nowAffected;
	}
}
