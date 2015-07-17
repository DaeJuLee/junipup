package controller;


import java.util.ArrayList;
import java.util.List;

import model.Member;
import model.Messaging;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	

	@RequestMapping(value="adMessageForm")
	public String adMessageForm(Model model){
	
	
		return "adMessageForm";
	}
	
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
	
	@RequestMapping(value="sendingmessage")
	public String sendingmessage(Model model, Messaging messaging, @RequestParam("nickname") String nickname){
		List<Messaging> messageList = ms.listMessageNick(nickname);
		model.addAttribute("lsit", messageList);
			return "/message/sendingmessage";
	}
	@RequestMapping(value="recevingmessage")
	public String recevingmessage(Model model, Messaging messaging, @RequestParam("nickname") String nickname){
		List<Messaging> messageList = ms.listMessagereceiver(nickname);
		model.addAttribute("lsit", messageList);
			return "/message/recevingmessage";
	}	
	
	
	@RequestMapping(value="messageCheck")
	public String messageCheck(Model model, @RequestParam("nickname") String nickname){
		int index = 0;
		List<Messaging> listSend = new ArrayList<Messaging>();
		listSend = ms.listMessageNick(nickname);//보낸 메세지 함
		List<Messaging> listReceive = new ArrayList<Messaging>();
		System.out.println("messageCheck : " + nickname);
		System.out.println("메세지 크기 :" + listSend.size());
		List<Messaging> listSend1 = new ArrayList<Messaging>();
		listSend1 = ms.listMessagereceiver(nickname);
		for(int i = 0; i < listSend1.size(); i++){
			Messaging receiveMessage = new Messaging();
			
			if((listSend1.get(i).getReceiver()).equals(nickname)){
				receiveMessage.setReceiver(listSend1.get(i).getReceiver());
				receiveMessage.setNickname(listSend1.get(i).getNickname());
				receiveMessage.setMessage(listSend1.get(i).getMessage());
				receiveMessage.setTitle(listSend1.get(i).getTitle());
				receiveMessage.setRegdate(listSend1.get(i).getRegdate());
				receiveMessage.setConfirm(listSend1.get(i).getConfirm());
				listReceive.add(index, receiveMessage);;
				index++;
			}	
		}
		model.addAttribute("sendMessage", listSend);
		model.addAttribute("receiveMessage", listReceive);
		return "/message/messageCheck";
	}
}

