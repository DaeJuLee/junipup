package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public @ResponseBody String tt(Model model, @RequestParam("nickname") String nickname,  
			HttpServletResponse rep, HttpServletRequest req) throws IOException {
		
		Member member = ms.selectNickname(nickname);
		String str = "{ \"nickname\": \""
				+ member.getNickname()
				+ "\", "
				+ "\"mrank\": \""
				+ member.getMrank()
				+ "\", "
				+ "\"maxPoint\": \""
				+ member.getMaxPoint()
				+ "\" }";
		rep.setContentType("text/html;charset=utf-8");
		PrintWriter out = rep.getWriter();
		out.print(str);	
		
		return null;
	}
}
