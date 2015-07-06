package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.MailService;

@Controller
public class MailController {
	@Autowired
	MailService ms;

/*	@RequestMapping(value="jspMain")
	public String jspMain(JspBoard jsp, String currentPage, Model model,String category){
//		service.insertBoard();
		if(category == null || category.equals("")){
			int total = service.total();
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			jsp.setStart(pg.getStart());
			jsp.setEnd(pg.getEnd());
			List<JspBoard> list = service.listJsp(jsp);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "true");
			return "/jsp/jspMain";
		}else{
			int total = service.totalJspCategory(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			jsp.setStart(pg.getStart());
			jsp.setEnd(pg.getEnd());
			jsp.setCategory(category);
			System.out.println("category : " + jsp.getCategory());
			List<JspBoard> list = service.listJspCategory(jsp);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "false");
			model.addAttribute("category", category);
			return "/jsp/jspMain";
		}
	}
	
	@RequestMapping(value="jspInsertForm")
	public String jspInsertForm(Model model){
		return "/jsp/jspInsertForm";
	}
	
	@RequestMapping(value = "jspInsert", method=RequestMethod.POST)
	public String jspInsert(JspBoard jsp, Model model){
		jsp.setContent(jsp.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.jspInsert(jsp);
		if(result > 0){
			return "redirect:jspMain.do";
		}else{
			return "/jsp/jspInsertForm";
		}
	}
	
	@RequestMapping(value = "jspDetail")
	public String jspDetail(int bnum, Model model){
		JspBoard jsp = service.jspDetail(bnum);
		model.addAttribute("jspDetail", jsp);
		return "/jsp/jspDetail";
	}
	
	@RequestMapping(value = "jspUpdateForm", method = RequestMethod.POST)
	public String jspUpdateForm(int bnum, Model model){
		JspBoard jsp = service.jspDetail(bnum);
		System.out.println(jsp.getContent());
		System.out.println(jsp.getTitle());
		model.addAttribute("jspDetail", jsp);
		model.addAttribute("modify", "true");
		return "/jsp/jspUpdateForm";
	}
	
	@RequestMapping(value = "jspUpdate")
	public String jspUpdate(JspBoard jsp, Model model){
		jsp.setContent(jsp.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.jspUpdate(jsp);
		if(result > 0){
			return "redirect:jspMain.do";
		}else{
			return "forward:jspUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "jspDelete")
	public String jspDelete(int bnum, Model model){
		service.jspDelete(bnum);
		return "redirect:jspMain.do";
	}
	
	@RequestMapping(value="jspDeleteCheck")
	public String jspDeleteCheck(int bnum, Model model){
		JspBoard jsp = new JspBoard();
		jsp.setBnum(bnum);
		model.addAttribute("bnum", jsp);
		return "/jsp/jspDeleteCheck";
	}*/
}
