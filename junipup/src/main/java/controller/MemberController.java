package controller;


import java.util.List;











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

@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="memjoinForm")
	public String memjoinForm() {
		return "/member/joinForm";
	}
	
	@RequestMapping(value="memjoin", method=RequestMethod.GET)
	public String insert(Member member, Tel tel, Model model) {
		member.setPhoneNumber(tel.getTel1()+tel.getTel2()+tel.getTel3());
		int result = ms.insertMember(member);
		System.out.println(member.getPhoneNumber());
		if (result > 0) return "redirect:main.do";
		else {
			model.addAttribute("msg","입력 실패 확인해 보세요");
			return "forward:/member/joinForm.do";
		}
	}
}
