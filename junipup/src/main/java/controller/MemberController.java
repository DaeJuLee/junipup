package controller;


import java.util.List;













import javax.servlet.http.HttpSession;

import model.Member;
import model.Tel;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.MemberService;
import utils.WebConstants;

@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="memjoinForm")
	public String memjoinForm() {
		return "/member/joinForm";
	}
	@RequestMapping(value="memjoin", method=RequestMethod.GET)
	public String meminsert(Member member, Tel tel, Model model) {
		member.setPhoneNumber(tel.getTel1()+tel.getTel2()+tel.getTel3());
		int result = ms.insertMember(member);
		System.out.println(member.getPhoneNumber());
		if (result > 0) return "redirect:main.do";
		else {
			model.addAttribute("msg","입력 실패 확인해 보세요");
			return "forward:/member/joinForm.do";
		}
	}
	@RequestMapping(value="memlogin", method=RequestMethod.GET)
	public String memlogin(Member member, Model model, HttpSession session) {
		Member selectmem = ms.selectIdPass(member.getId(), member.getPassword());	
		if(member == null){
			model.addAttribute("message", "ID또는 암호가 다릅니다");
			return "member/login.do";
		}else if(selectmem.getId().matches("admin")){
			session.setAttribute(WebConstants.USER_KEY, selectmem);
			model.addAttribute("loginUser", selectmem);
			model.addAttribute("member", selectmem);
			return "admin/adminMain";

		}else{
			session.setAttribute(WebConstants.USER_KEY, selectmem);
			model.addAttribute("loginUser", selectmem);
			model.addAttribute("member", selectmem);
			return "main.do";
		}
	}
	
}
