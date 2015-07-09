package dao;

import java.util.List;

import model.NoticeBoard;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class NoticeDaoImpl implements NoticeDao {
	@Autowired
	private SqlSession session;
	
	
	public int noticeInsert(NoticeBoard notice) {
		return session.insert("noticeInsert", notice);
	}

	
	public int total() {
		return session.selectOne("totalNotice");
	}

	
	public List<NoticeBoard> listNotice(NoticeBoard notice) {
		return session.selectList("listNotice", notice);
	}

	
	public NoticeBoard noticeDetail(int bnum) {
		return session.selectOne("noticeDetail", bnum);
	}

	
	public void noticeDelete(int bnum) {
		session.delete("noticeDelete", bnum);		
	}

	
	public void insertBoard() {
		for(int i = 1 ; i < 4000 ; i++){
			NoticeBoard board = new NoticeBoard();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);
			session.insert("noticeInsert", board);
		}
	}

	
	public int noticeUpdate(NoticeBoard notice) {
		return session.update("noticeUpdate", notice);
	}

	
	public int totalNoticeCategory(String category) {
		return session.selectOne("totalNoticeCategory", category);
	}

	
	public List<NoticeBoard> listNoticeCategory(NoticeBoard notice) {
		return session.selectList("listNoticeCategory", notice);
	}


	public List<NoticeBoard> noticeRecent(NoticeBoard notice) {
		
		return session.selectList("noticeRecent", notice);
	}
	
}
