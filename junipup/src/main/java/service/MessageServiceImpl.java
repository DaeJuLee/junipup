package service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MessageDao;
import model.Messaging;
@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	MessageDao md;

	@Override
	public List<Messaging> listMessageNick(String nickname) {
		
		return md.listMessageNick(nickname);
	}

	@Override
	public int insertMessage(Messaging message) {
		
		return md.insertMessage(message);
	}

	@Override
	public Messaging selectMessageNick(int mnum) {
		
		return md.selectMessageNick(mnum);
	}

	@Override
	public int deleteMessaging(int mnum) {
		
		return md.deleteMessaging(mnum);
	}

	@Override
	public int upDateMessagingConfirm(int mnum) {
		
		return md.upDateMessagingConfirm(mnum);
	}

	@Override
	public List<Messaging> listMessagereceiver(String nickname) {
		
		return md.listMessagereceiver(nickname);
	}

}
