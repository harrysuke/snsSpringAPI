package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.User;
import service.UserDao;
//import service.UserDaoHibernate;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private final UserDao userDao;
	//private final UserDaoHibernate userDaoHibernate;
	
	@Autowired
	public UserController(UserDao userDao) {
		this.userDao = userDao;
		//this.userDaoHibernate = userDaoHibernate;
	}
	@GetMapping("/login")
	public String showLoginForm(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}
	@PostMapping("/login")
	public String loginUser(@RequestParam("User_Id") String userid, @RequestParam("katalaluan") String password, Model model) {
		User loggedInUser = userDao.loginUser(userid, password);
		if(loggedInUser != null) {
			return "redirect:/home/dashboard";
		}else {
			model.addAttribute("errorMessage", "Invalid username or password");
			return "errorPage";
		}
		
	}
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user") User user, Model model) {
		try {
			userDao.registerUser(user);
			return "redirect:/user/login";
		}catch(Exception e) {
			model.addAttribute("errorMessage", "Registration failed" + e.getMessage());
			return "errorPage";
		}
	}
	@PostMapping("/adduser")
	public String addUser(@ModelAttribute("user") User user, Model model) {
		userDao.registerUser(user);
		return "redirect:/user/list";
	}
	@RequestMapping("/logout")
	public String logout() {
		return "redirect:/user/login";
	}
	
	@RequestMapping("/list")
	//@Transactional
	public String userList(Model model) {
		//Hibernate
		//List<User> users = userDaoHibernate.findAll();
		//model.addAttribute("users", users);
		//return "userList";
		//JdbcTemplate
		List<User> users = userDao.getAllUsers();
		model.addAttribute("users", users);
		return "userList";
	}
	
	@RequestMapping("/profile/{id}")
	public String profile(@PathVariable String id, Model model) {
		User user = userDao.getUserById(id);
		model.addAttribute("user", user);
		return "profile";
	}

}
