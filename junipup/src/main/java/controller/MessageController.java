package controller;


import java.util.ArrayList;
import java.util.List;

import model.Member;
import model.Messaging;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.JspService;
import service.MemberService;
import service.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService ms;
	@Autowired
	JspService js;
	@Autowired
	MemberService mems;
	
	@RequestMapping(value="messageInsertForm")
	public String messageInsertForm(Model model, String receiver, String sender){
		model.addAttribute("receiver", receiver);
		model.addAttribute("sender", sender);
	
		return "message/messageInsertForm";
	}
	
	@RequestMapping(value="jspPop")
	public String selectNickname(String receiver, String sender, Model model){
		Member mem = mems.selectNickname(receiver);
		model.addAttribute("receiver", mem);
		model.addAttribute("sender", sender);
		return"/jsp/jspPop";	
	}
	
	@RequestMapping(value="insertMessage")
	public String insertMessage(Model model, Messaging messaging){
		System.out.println("보낸사람 : " + messaging.getNickname());
		System.out.println("받는사람 : " + messaging.getReceiver());
		System.out.println("제목 : " + messaging.getTitle());
		Member mem = mems.selectNickname(messaging.getReceiver());
		model.addAttribute("receiver", mem);
		model.addAttribute("sender", messaging.getNickname());
		int result = ms.insertMessage(messaging);
		if(result > 0){
			return "/jsp/jspPop";
		}else{
			return "/message/messageInsertForm";
		}	
	}
	@RequestMapping(value="messageCheck")
	public String messageCheck(Model model, String nickname){
		List<Messaging> list = new ArrayList<Messaging>();
		list = ms.listMessageNick(nickname);
		System.out.println("닉네임 : " + list.get(0).getNickname());
		System.out.println("받은사람 : " + list.get(0).getReceiver());
		model.addAttribute("message", list);
		return "/message/messageCheck";
	}
}

