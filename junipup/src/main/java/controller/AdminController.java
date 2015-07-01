package controller;

import java.util.List;

import model.AdminBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService as;
	
	@RequestMapping(value="adminMain")
	public String adminMain(Model model, AdminBoard adminboard, String currentPage) {
		List<AdminBoard> list = as.adminMain(adminboard);
		model.addAttribute("adminMain", list);
		return "/admin/adminMain";
	}
}
