package controller;


import java.util.HashMap;

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
	@RequestMapping(value="memupdateForm")
	public String updateForm() {
		return "/member/updateForm";
	}

	@RequestMapping(value="memjoin", method=RequestMethod.POST)
	public String meminsert(Member member, Tel tel, Model model) {
		member.setPhoneNumber(tel.getTel1()+tel.getTel2()+tel.getTel3());
		int result = ms.insertMember(member);
		System.out.println(member.getPhoneNumber());
		if (result > 0) return "redirect:main.do";
		else {
			model.addAttribute("msg","�엯�젰 �떎�뙣 �솗�씤�빐 蹂댁꽭�슂");
			return "forward:/member/joinForm.do";
		}
	}
	@RequestMapping(value="memlogin", method=RequestMethod.GET)
	public String memlogin(Member member, Model model, HttpSession session) {
		Member selectmem = ms.selectIdPass(member.getId(), member.getPassword());	
		if(selectmem == null){
			model.addAttribute("message", "ID�삉�뒗 �븫�샇媛� �떎由낅땲�떎");
			return "member/login";
		}else if(selectmem.getId().matches("admin")){
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

	@RequestMapping(value= "idchk", method=RequestMethod.POST)	
	public @ResponseBody String idchk(@RequestParam("id") String id, Model model)  {
		System.out.println("id넣으면?? : "+id);
	    String result = "2";
		if(ms.selectId(id) == null){
			result = "0";
		}else{
			result = "1";
		}
		System.out.println(result);
		model.addAttribute("id", id);
	    return result;
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
