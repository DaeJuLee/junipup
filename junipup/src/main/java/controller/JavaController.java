package controller;

import java.util.List;

import model.JavaBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.JavaService;
import service.Paging;

@Controller
public class JavaController {
	@Autowired
	JavaService service;
	
	@RequestMapping(value="javaMain")
	public String javaMain(JavaBoard java, String currentPage, Model model){
//		service.insertBoard();
		int total = service.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		java.setStart(pg.getStart());
		java.setEnd(pg.getEnd());
		List<JavaBoard> list = service.listJava(java);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "/java/javaMain";
	}
	
	@RequestMapping(value="javaInsertForm")
	public String javaInsertForm(Model model){
		return "/java/javaInsertForm";
	}
	
	@RequestMapping(value = "javaInsert", method=RequestMethod.POST)
	public String javaInsert(JavaBoard java, Model model){
		int result = service.javaInsert(java);
		if(result > 0){
			return "redirect:javaMain.do";
		}else{
			return "/java/javaInsertForm";
		}
	}
	
	@RequestMapping(value = "javaDetail")
	public String javaDetail(int bnum, Model model){
		JavaBoard java = service.javaDetail(bnum);
		model.addAttribute("javaDetail", java);
		return "/java/javaDetail";
	}
	
	@RequestMapping(value = "javaUpdateForm", method = RequestMethod.POST)
	public String javaUpdateForm(int bnum, Model model){
		JavaBoard java = service.javaDetail(bnum);
		model.addAttribute("javaDetail", java);
		model.addAttribute("modify", "true");
		return "/java/javaUpdateForm";
	}
	
	@RequestMapping(value = "javaUpdate")
	public String javaUpdate(JavaBoard java, Model model){
		java.setContent(java.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.javaUpdate(java);
		if(result > 0){
			return "redirect:javaMain.do";
		}else{
			return "forward:javaUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "javaDelete")
	public String javaDelete(int bnum, Model model){
		service.javaDelete(bnum);
		return "redirect:javaMain.do";
	}
	
	@RequestMapping(value="javaDeleteCheck")
	public String javaDeleteCheck(int bnum, Model model){
		JavaBoard java = new JavaBoard();
		java.setBnum(bnum);
		model.addAttribute("title", java);
		return "/java/javaDeleteCheck";
	}
}