package controller;

import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.MemberService;

@Controller
public class PracController {
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="pracmain")
	public String pracMain(Model model){
		return "pracmain";
	}
	
	@RequestMapping(value = "findMember")
	public String tt(Model model, String nickname) {
		
		Member member = ms.selectNickname(nickname);
		model.addAttribute("String", member);
		return "/member/findMember";
	}
}
