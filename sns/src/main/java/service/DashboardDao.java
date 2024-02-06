package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class DashboardDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public long countUser() {
		String sql = "SELECT COUNT(*) FROM admuser";
		return jdbcTemplate.queryForObject(sql,Long.class);
	}
	
	public int countAdmin() {
		String sql="SELECT COUNT(*) FROM admuser WHERE Access_Level='Superadmin' ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public long countVep() {
		String sql="SELECT COUNT(*) FROM vep";
		return jdbcTemplate.queryForObject(sql,Long.class);
	}
	
	public long countPep() {
		String sql="SELECT COUNT(*) FROM pep";
		return jdbcTemplate.queryForObject(sql,Long.class);
	}
}
