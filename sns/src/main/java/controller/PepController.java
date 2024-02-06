package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Pep;
import entity.Product;
import entity.User;
import service.PepDao;
import service.UserDao;

@Controller
@RequestMapping("/pep")
public class PepController {
	final private PepDao pepDao;
	final private UserDao userDao;
	
	@Autowired
	public PepController(PepDao pepDao, UserDao userDao) {
		this.pepDao = pepDao;
		this.userDao = userDao;
	}
	
	@GetMapping("/list")
	public String getAll(Model model) {
		try {
			List<Pep> pepList = pepDao.getAll();
			model.addAttribute("pepList", pepList);
			return "pepList";
		}catch(DataAccessException e) {
			e.printStackTrace();
			model.addAttribute("errorMessage", "Retrieve record failed");
			return "errorPage";
		}
	}
	
	@GetMapping("/new")
	public String newPep(Model model) {
		Pep pep = new Pep();
		model.addAttribute("pep", pep);
		return "pepNew";
	}
	
	@PostMapping("/add")
	public String addPep(@ModelAttribute("pep") Pep pep, Model model) {
		model.addAttribute("pep", pep);
		int numofRowAffected = pepDao.createPep(pep);
		return "redirect:/pep/list";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		Pep pep = pepDao.getPepById(id);
		model.addAttribute("pep", pep);
		return "pepUpdate";
	}
	
	@PostMapping("/update")
	public String updatePep(@ModelAttribute("pep") Pep pep, Model model) {
		int rowAffected = pepDao.updatePep(pep);
		return "redirect:/pep/list";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		int rowAffected = pepDao.deletePep(id);
		return "redirect:/pep/list";
	}
	
	@GetMapping("/search")
	public String searchUsers(@RequestParam(name = "keyword", required = false) String keyword, Model model) {
	    if (keyword != null && !keyword.isEmpty()) {
	        List<User> searchResults = userDao.searchUsers(keyword);
	        model.addAttribute("searchResults", searchResults);
	        model.addAttribute("keyword", keyword); 
	    }
	    return "searchresult";
	}
}
