package controller;

import java.util.List;

import model.AdminBoard;
import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AdminService;
import service.MemberService;
import service.Paging;

@Controller
public class AdminController {
	@Autowired
	AdminService as;
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="adminMain")
	public String adminMain(Model model, Member member, String currentPage) {
		//as.insertBoard();
		int total = ms.memberTotal();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		member.setStart(pg.getStart());
		member.setEnd(pg.getEnd());
		List<Member> list = ms.memberList(member);
		model.addAttribute("adminMain", list);
		model.addAttribute("pg", pg);
		return "/admin/adminMain";
	}
		
	@RequestMapping(value="memberDeleteCheck")
	public String adminDelete(Model model, String nickname) {
		model.addAttribute("nickname", nickname);
		return "/admin/memberDeleteCheck";
	}
	
	@RequestMapping(value="completeDelete")
	public String completeDelete(Model model, String nickname) {
		ms.deleteMember(nickname);
	
		return "redirect:adminMain.do";
	}
}
