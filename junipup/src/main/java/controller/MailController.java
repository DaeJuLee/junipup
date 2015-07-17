package controller;

import model.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.EmailDao;
import service.MailService;

@Controller
public class MailController {
	@Autowired
	MailService ms;
	@Autowired
	EmailDao ed;
	@RequestMapping(value="adMail")
	public String adMail(Model model,@RequestParam("subject") String subject, @RequestParam("name") String name,
			@RequestParam("tel") String tel, @RequestParam("email") String email,
			@RequestParam("homepage") String homepage, @RequestParam("contents") String contents){
	    String content;
	      content = "<html>";
	      content += "이름 : "+name+"<br>";
	      content += "전화번호 : "+tel+"<br>";
	      content += "이메일 : " +email+"<br>";
	      content += "홈페이지 : " +homepage+"<br>";
	      content += "내용 : " +contents+"<br>";
	      content += "</html>";
		
		ms.sendMailWithAttachment("junibatnipup@gmail.com", "junibatnipup@gmail.com", subject, content);
		return "redirect:main.do";
	}
	
	@RequestMapping(value="mailSendForm")
	public String mailSendForm(Model model, @RequestParam("recever") String recever){
		model.addAttribute("recever",recever);
		return "/admin/mailSendForm";
	}

	@RequestMapping(value="mailsend")
	public String mailsend(Model model, Email email){
		ms.sendMail("junibatnipup@gmail.com", email.getRecever(), email.getTitle(), email.getContent());
		String msg = "성공적으로 메일을 보냈습니다";
		model.addAttribute("msg", msg);
		return "/admin/mailSendinComplete";
	}
	
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
