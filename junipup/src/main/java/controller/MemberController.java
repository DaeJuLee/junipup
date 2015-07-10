package controller;

import javax.servlet.http.HttpSession;

import model.Member;
import model.Tel;

import org.apache.catalina.Context;
import org.apache.taglibs.standard.extra.spath.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;







import service.MailService;
import service.MemberService;
import utils.WebConstants;

@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	@Autowired
	MailService mail;
	
	@RequestMapping(value="memjoinForm")
	public String memjoinForm() {
		return "/member/joinForm";
	}
	@RequestMapping(value="updateForm")
	public String updateForm(@RequestParam("email") String email, Model model) {
		Member member = ms.selectEmail(email);
		model.addAttribute("member", member);
		return "/member/updateForm";
	}

	@RequestMapping(value="memjoin", method=RequestMethod.POST)
	public String meminsert(Member member, Tel tel, Model model) {
		member.setPhoneNumber(tel.getTel1()+tel.getTel2()+tel.getTel3());
		String html = "<img src='http://211.183.2.57:8181/junipup/images/welcome.jpg'>";
				
		
		int result = ms.insertMember(member);
		if (result > 0){
			model.addAttribute("msg","zzz");
			mail.sendMailWithAttachment("junibatnipup@gmail.com", member.getEmail(), "가입을 환영합니다.", html);
			return "redirect:main.do";
		}
		else {
			return "forward:/member/joinForm.do";
		} 
		
	}
	@RequestMapping(value="memupdate", method=RequestMethod.POST)
	public String memupdate(Member member, Tel tel, Model model) {
		member.setPhoneNumber(tel.getTel1()+tel.getTel2()+tel.getTel3());
		String html = "회원정보가 수정되었습니다";

		System.out.println(member.getNickname());
		System.out.println(member.getPhoneNumber());
		System.out.println(member.getPassword());
		System.out.println(member.getEmail());
		System.out.println(member.getPhoto());
		
		
		int result = ms.updateMember(member);
		if (result > 0){
			model.addAttribute("msg","zzz");
			mail.sendMailWithAttachment("junibatnipup@gmail.com", member.getEmail(), "회원정보 수정.", html);
			return "redirect:main.do";
		}
		else {
			return "forward:/member/memupdate.do";
		} 
		
	}
	@RequestMapping(value="memlogin")
	public String memlogin(Member member, Model model, HttpSession session) {
		System.out.println(member.getEmail());
		System.out.println(member.getPassword());
		Member selectmem = ms.selectIdPass(member.getEmail(), member.getPassword());
		if(selectmem == null){
			String msg = "ID�� �н����尡 Ʋ�Ƚ��ϴ�.";
			model.addAttribute("message", msg);
			return "member/login";
		}else if(selectmem.getEmail().matches("admin")){
			session.setAttribute(WebConstants.USER_KEY, selectmem);
			model.addAttribute("loginUser", selectmem);
			model.addAttribute("member", selectmem);
			return "admin/adminMain";

		}else{
			session.setAttribute(WebConstants.USER_KEY, selectmem);
			model.addAttribute("loginUser", selectmem);
			model.addAttribute("member", selectmem);
			return "main";
		}
	}

	@RequestMapping(value= "emailchk", method=RequestMethod.POST)	
	public @ResponseBody String idchk(@RequestParam("email") String email, Model model)  {
		
	    String result = "2";

		if(ms.selectEmail(email) == null){
			result = "0";
		}else{
			result = "1";
		}
		return result;
	}
	
	@RequestMapping(value= "nicknamechk", method=RequestMethod.POST)	
	public @ResponseBody String nicknamechk(@RequestParam("nickname") String nickname, Model model)  {
		
	    String result = "2";
	    
		if(ms.selectNickname(nickname) == null){
			result = "0";
		}else{
			result = "1";
		}
		return result;
	}
	@RequestMapping(value= "findmember")	
	public @ResponseBody String findmember(@RequestParam("nickname") String nickname, Model model)  {
		Member member = ms.selectNickname(nickname);
	    model.addAttribute("member", member);
	    return null;
	}
 
	@RequestMapping(value = "logout")
	public String logout(Member member, Model model, HttpSession session) {
		session.removeAttribute(WebConstants.USER_KEY);
		return "main";
	}
//	@ResponseBody
//	@RequestMapping(value= "idchk", method=RequestMethod.POST)
//	public HashMap<String, Object> checkId(@RequestParam HashMap<String, Object> idParam)  {
//		System.out.println("hashMap�� ����ִ� ���� : " + idParam);
//	    System.out.println("id is "+idParam.get("id"));
//	 
//	    HashMap<String, Object> hashmap = new HashMap<String, Object>();
//	    hashmap.put("KEY", "YES");
//	    return hashmap;
//	}
	
}
