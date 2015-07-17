package dao;




import java.util.List;

import model.Messaging;

public interface MessageDao {
	
	// 받은메세지 불러오기
	public List<Messaging> listMessageNick(String nickname);
	// 보낸메세지 불러오기
	public List<Messaging> listMessagereceiver(String nickname);
	
	// 신규 메세지 생성
	public int insertMessage(Messaging message);
	// 메세지 디테일을 위한 불러오기
	public Messaging selectMessageNick(int mnum);
	// 메세지 삭제
	public int deleteMessaging(int mnum);
	// 메세지 컨펌 업데이트
	public int upDateMessagingConfirm(int mnum);

}
