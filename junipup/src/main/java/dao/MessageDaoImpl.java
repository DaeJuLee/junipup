package dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Messaging;
@Repository
public class MessageDaoImpl implements MessageDao {
	
	@Autowired
	private SqlSession session;
	
	public int insertMessage(Messaging message) {
	
		return session.insert("insertMessage", message);
	}


	@Override
	public int deleteMessaging(int mnum) {
		
		return session.delete("deleteMessaging", mnum);
	}


	public int upDateMessagingConfirm(int mnum) {

		return session.update("upDateMessagingConfirm", mnum);
	}

	@Override
	public List<Messaging> listMessageNick(String nickname) {
		
		return session.selectList("listMessageNick", nickname);
	}

	@Override
	public Messaging selectMessageNick(int mnum) {
		return session.selectOne("selectMessageNick", mnum);
	}


	@Override
	public List<Messaging> listMessagereceiver(String nickname) {
	
		return session.selectList("listMessagereceiver", nickname);
	}




}
