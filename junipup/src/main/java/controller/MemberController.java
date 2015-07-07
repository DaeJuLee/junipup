package controller;




import javax.servlet.http.HttpSession;

import model.Member;
import model.Tel;

import org.springframework.beans.factory.annotation.Autowired;
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
		int result = ms.insertMember(member);
		if (result > 0){
			model.addAttribute("msg","회원가입을 환영합니다");
			mail.sendMail("junibatnipup@gmail.com", member.getEmail(), "회원가입을 환영합니다", "<약관>");
			return "redirect:main.do";
		}
		else {
			return "forward:/member/joinForm.do";
		} 
		
	}
	@RequestMapping(value="memlogin")
	public String memlogin(Member member, Model model, HttpSession session) {
		System.out.println(member.getEmail());
		System.out.println(member.getPassword());
		Member selectmem = ms.selectIdPass(member.getEmail(), member.getPassword());
		if(selectmem == null){
			String msg = "ID나 패스워드가 틀렸습니다.";
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
		
		model.addAttribute("email", email);
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
		
		model.addAttribute("nickname", nickname);
	    return result;
	}
	@RequestMapping(value= "findmember")	
	public @ResponseBody String findmember(@RequestParam("nickname") String nickname, Model model)  {
		Member member = ms.selectNickname(nickname);
	    model.addAttribute("member", member);
	    return null;
	}
	
//	@ResponseBody
//	@RequestMapping(value= "idchk", method=RequestMethod.POST)
//	public HashMap<String, Object> checkId(@RequestParam HashMap<String, Object> idParam)  {
//		System.out.println("hashMap에 들어있는 정보 : " + idParam);
//	    System.out.println("id is "+idParam.get("id"));
//	 
//	    HashMap<String, Object> hashmap = new HashMap<String, Object>();
//	    hashmap.put("KEY", "YES");
//	    return hashmap;
//	}
	
}
