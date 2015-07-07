package controller;

import java.util.List;

import model.AdminBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AdminService;
import service.Paging;

@Controller
public class AdminController {
	@Autowired
	AdminService as;
	
	@RequestMapping(value="adminMain")
	public String adminMain(Model model, AdminBoard adminboard, String currentPage) {
		//as.insertBoard();
		int total = as.adminTotal();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		adminboard.setStart(pg.getStart());
		adminboard.setEnd(pg.getEnd());
		List<AdminBoard> list = as.adminMain(adminboard);
		model.addAttribute("adminMain", list);
		model.addAttribute("pg", pg);
		return "/admin/adminMain";
	}
	
	@RequestMapping(value="ScrollTest")
	public String ScrollTest(Model model) {
	return "/admin/ScrollTest";
	}
	
	@RequestMapping(value="memberDeleteCheck")
	public String adminDelete(Model model, String nickname) {
		model.addAttribute("nickname", nickname);
		return "/admin/memberDeleteCheck";
	}
	
	@RequestMapping(value="completeDelete")
	public String completeDelete(Model model, String nickname) {
		as.adminDelete(nickname);
		return "redirect:adminMain.do";
	}
}
