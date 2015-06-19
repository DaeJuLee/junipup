package controller;


import java.util.List;







import model.Dept;
import model.Emp;
import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	

	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insert(Member member,Model model) {
		int result = ms.insertMember(member);
		if (result > 0) return "redirect:main.do";
		else {
			model.addAttribute("msg","입력 실패 확인해 보세요");
			return "forward:joinForm.do";
		}
	}
}
