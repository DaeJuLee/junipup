package controller;


import model.Messaging;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.JspService;
import service.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService ms;
	@Autowired
	JspService js;
	
	@RequestMapping(value="messageInsertForm")
	public String messageInsertForm(Model model, @RequestParam("nickname") String nickname
					){
		model.addAttribute("nickname", nickname);
	
		return "message/messageInsertForm";
	}
	
	@RequestMapping(value="insertMessage")
	public String insertMessage(Model model, Messaging messaging){
		
		int result = ms.insertMessage(messaging);
		if(result > 0){
			return "redirect:jspMain.do";
		}else{
			return "/message/messageInsertForm";
		}	
	}
}

