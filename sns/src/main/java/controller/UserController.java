package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserDao;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private final UserDao userDao;
	
	@Autowired
	public UserController(UserDao userDao) {
		this.userDao = userDao;
	}
	@GetMapping("/login")
	public String showLoginForm(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}
	@PostMapping("/login")
	public String loginUser(@ModelAttribute("user") User user, Model model) {
		userDao.loginUser(user.getUser_Id(), user.getKatalaluan());
		return "redirect:/vep/list";
	}
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user") User user, Model model) {
		userDao.registerUser(user);
		return "redirect:/product/list";
	}
	@RequestMapping("/logout")
	public String logout() {
		return "redirect:/user/login";
	}
	
	@RequestMapping("/list")
	public String userList(Model model) {
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
