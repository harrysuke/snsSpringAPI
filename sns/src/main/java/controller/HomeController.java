package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.DashboardDao;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	private DashboardDao dashboardDao;
	
	@RequestMapping("/root")
	@ResponseBody
	public String root() {
		return "root";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		long userCount = dashboardDao.countUser();
		int adminCount = dashboardDao.countAdmin();
		long pepCount = dashboardDao.countPep();
		long vepCount = dashboardDao.countVep();
		
		model.addAttribute("userCount", userCount);
		model.addAttribute("adminCOunt", adminCount);
		model.addAttribute("pepCount", pepCount);
		model.addAttribute("vepCount", vepCount);
		
		return "dashboard";
	}

}
