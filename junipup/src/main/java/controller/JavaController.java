package controller;

import java.util.List;

import model.JavaBoard;
import model.Member;
import model.NoticeBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.NoticeDao;
import service.JavaService;
import service.MemberService;
import service.Paging;

@Controller
public class JavaController {
	@Autowired
	JavaService service;
	@Autowired
	NoticeDao nd;
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="javaMain")
	public String javaMain(JavaBoard java, String currentPage, Model model , String category, NoticeBoard notice){
//		service.insertBoard();

		if(category == null || category.equals("")){
			int total = service.total();
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			java.setStart(pg.getStart());
			java.setEnd(pg.getEnd());
			List<JavaBoard> list = service.listJava(java);
			List<NoticeBoard> noticeRecent = nd.noticeRecent(notice);	
			model.addAttribute("list", list);
			model.addAttribute("noticeRecent", noticeRecent);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "true");
			return "/java/javaMain";
		
		}else{
			int total = service.totalJavaCategory(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			java.setStart(pg.getStart());
			java.setEnd(pg.getEnd());
			java.setCategory(category);
			System.out.println("category : " + java.getCategory());
			List<JavaBoard> list = service.listJavaCategory(java);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "false");
			model.addAttribute("category", category);
			return "/java/javaMain";
		}
	}
	
	@RequestMapping(value="javaInsertForm")
	public String javaInsertForm(Model model){
		return "/java/javaInsertForm";
	}
	
	@RequestMapping(value = "javaInsert", method=RequestMethod.POST)
	public String javaInsert(JavaBoard java, Model model,String nickname){
		int result = service.javaInsert(java);
		Member member = new Member();
		member = ms.selectNickname(nickname);
		member.setMaxPoint(member.getMaxPoint()+5);
		member.setUsePoint(member.getUsePoint()+5);		
		service.javaPointUp5(member);
		if(result > 0){
			return "redirect:javaMain.do";
		}else{
			return "/java/javaInsertForm";
		}
	}
	
	@RequestMapping(value = "javaDetail")
	public String javaDetail(int bnum, Model model){
		JavaBoard java = service.javaDetail(bnum);
		service.HitsUpdate(bnum);
		model.addAttribute("javaDetail", java);
		model.addAttribute("modify", "true");
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
		model.addAttribute("java", java);
		return "/java/javaDeleteCheck";
	}
	@RequestMapping(value="javaPop")
	public String selectNickname(String nickname, Model model){
		Member mem = ms.selectNickname(nickname);
		model.addAttribute("nick", mem);
		return"/java/javaPop";	
	}
}
