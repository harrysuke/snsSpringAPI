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

import entity.Vep;
import service.VepDao;

@Controller
@RequestMapping("/vep")
public class VepController {
	final private VepDao vepDao;
	
	@Autowired
	public VepController(VepDao vepDao) {
		this.vepDao = vepDao;
	}
	
	@GetMapping("/list")
	public String getAll(Model model) {
		List<Vep> vepList = vepDao.getAll();
		model.addAttribute("vepList", vepList);
		return "vepList";
	}
	
	@GetMapping("/detail/{id}")
	public String getId(@PathVariable int id, Model model) {
		Vep vep = vepDao.getVepById(id);
		model.addAttribute("vep", vep);
		return "vepDetail";
	}
	
	@GetMapping("/new")
	public String addForm(Model model) {
		Vep vep = new Vep();
		model.addAttribute("vep", vep);
		return "vepNew";
	}
	
	@PostMapping("/add")
	public String add(@ModelAttribute("vep") Vep vep, Model model) {
		model.addAttribute("vep", vep);
		int numofRowAffected = vepDao.createVep(vep);
		return "redirect:/vep/list";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		Vep vep = vepDao.getVepById(id);
		model.addAttribute("vep", vep);
		return "vepUpdate";
	}

}
