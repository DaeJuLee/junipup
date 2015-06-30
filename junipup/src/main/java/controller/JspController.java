package controller;

import java.util.List;

import model.JspBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.JspService;
import service.Paging;

@Controller
public class JspController {
	@Autowired
	JspService service;
	@RequestMapping(value="jspMain")
	public String jspMain(JspBoard jsp, String currentPage, Model model){
//		service.insertBoard();
		int total = service.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		jsp.setStart(pg.getStart());
		jsp.setEnd(pg.getEnd());
		List<JspBoard> list = service.listJsp(jsp);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "/jsp/jspMain";
	}
	
	@RequestMapping(value="jspInsertForm")
	public String jspInsertForm(Model model){
		return "/jsp/jspInsertForm";
	}
	
	@RequestMapping(value = "jspInsert", method=RequestMethod.POST)
	public String jspInsert(JspBoard jsp, Model model){
		int result = service.jspInsert(jsp);
		if(result > 0){
			return "redirect:jspMain.do";
		}else{
			return "/jsp/jspInsertForm";
		}
	}
	
	@RequestMapping(value = "jspDetail")
	public String jspDetail(String title, Model model){
		JspBoard jsp = service.jspDetail(title);
		model.addAttribute("jspDetail", jsp);
		return "/jsp/jspDetail";
	}
	
	@RequestMapping(value = "jspUpdateForm")
	public String jspUpdateForm(String title, Model model){
		JspBoard jsp = service.jspDetail(title);
		model.addAttribute("jspDetail", jsp);
		return "/jsp/jspUpdateForm";
	}
	
	@RequestMapping(value = "jspUpdate")
	public String jspUpdate(JspBoard jsp, Model model){
		int result = service.jspUpdate(jsp);
		if(result > 0){
			return "redirect:jspMain.do";
		}else{
			return "forward:jspUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "jspDelete")
	public String jspDelete(String title, Model model){
		service.jspDelete(title);
		return "redirect:jspMain.do";
	}
	
	@RequestMapping(value="jspDeleteCheck")
	public String jspDeleteCheck(String title, Model model){
		JspBoard jsp = new JspBoard();
		jsp.setTitle(title);
		model.addAttribute("title", jsp);
		return "/jsp/jspDeleteCheck";
	}
}
