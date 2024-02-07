package service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import entity.User; 

@Service
public class UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Autowired
    private HttpSession httpSession;

    public List<User> getAllUsers() {
        String sql = "SELECT Role_Id, User_Id, Staff_Name, Username, Email, katalaluan, Access_Level FROM admuser";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    public User getUserById(String id) {
        String sql = "SELECT * FROM  admuser WHERE User_Id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(User.class));
    }

    public int deleteUser(int id) {
        String sql = "UPDATE admuser SET Active=0 WHERE User_Id=?";
        return jdbcTemplate.update(sql, id);
    }

    public User loginUser(String User_Id, String katalaluan) {
    	String hashedPassword = md5(katalaluan);
        String sql = "SELECT * FROM admuser user WHERE User_Id=? AND katalaluan=?";
        try {
            User user = jdbcTemplate.queryForObject(sql, new Object[]{User_Id, hashedPassword}, new BeanPropertyRowMapper<>(User.class));
            if(user != null) {
            	httpSession.setAttribute("user", user);
            }
            return user;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    private String md5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger no = new BigInteger(1, messageDigest);
            String hashText = no.toString(16);
            while (hashText.length() < 32) {
                hashText = "0" + hashText;
            }
            return hashText;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public void registerUser(User user) {
    	try {
    		String sql = "INSERT INTO admuser (User_Id, Staff_Name, Username, katalaluan, Email) VALUES (?,?,?,?,?)";
        	jdbcTemplate.update(
                    sql,
                    user.getUser_Id(),
                    user.getStaff_Name(),
                    user.getUsername(),
                    user.getKatalaluan(),
                    user.getEmail()
            );
    	}catch(DataAccessException e) {
    		throw new RuntimeException(e.getMessage(), e);
    	}
    }

    public int updateUser(User user) {
        String sql = "UPDATE admuser SET Staff_Name=?, Username=?, katalaluan=?, Email=? WHERE User_Id=?";
        return jdbcTemplate.update(
                sql,
                user.getStaff_Name(),
                user.getUsername(),
                user.getKatalaluan(),
                user.getEmail(),
                user.getUser_Id()
        );
    }

    public List<User> searchUsers(String keyword) {
        String sql = "SELECT * FROM admuser WHERE Username LIKE ? OR Email LIKE ? OR User_Id LIKE ?";
        String searchKeyword = "%" + keyword + "%";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), searchKeyword, searchKeyword, searchKeyword);
    }
}
