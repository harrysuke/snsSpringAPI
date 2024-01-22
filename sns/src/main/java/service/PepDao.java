package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import entity.Pep;

@Service
public class PepDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Pep> getAll(){
		String sql = "SELECT * FROM pep";
		List<Pep> pepList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Pep>(Pep.class));
		return pepList;
	}
	
	public List<Pep> getPepById(int id) {
		String sql = "SELECT * FROM pep WHERE id=?";
		return jdbcTemplate.query(sql, new Object[] {id}, new BeanPropertyRowMapper<Pep>(Pep.class));
	}
	
	public int createPep(Pep pep) {
		String sql = "INSERT INTO pep (IdentityNo, Name, ContactNo, EmailAddress, VehicleNo) VALUES (?,?,?,?,?)";
		int rowsAffected = jdbcTemplate.update(
				sql,
				pep.getIdentityNo(),
				pep.getName(),
				pep.getContactNo(),
				pep.getEMailAddress(),
				pep.getVehicleNo()
				);
		return rowsAffected;
	}
	
	public int UpdatePep(Pep pep) {
		String sql = "Update pep SET IdentityNo=?, Name=?, ContactNo=?, EmailAddress=?, VehicleNo=? WHERE id=?";
		int rowAffected = jdbcTemplate.update(
				sql,
				pep.getIdentityNo(),
				pep.getName(),
				pep.getContactNo(),
				pep.getEMailAddress(),
				pep.getVehicleNo(),
				pep.getId()
				);
		return rowAffected;
	}
	
	public int deletePep(int id) {
		String sql = "DELETE FROM pep WHERE id=?";
		int nowAffected = jdbcTemplate.update(sql, id);
		return nowAffected;
	}

}
