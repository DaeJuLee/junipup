package dao;

import java.util.List;

import model.NoticeBoard;

public interface NoticeDao {
	public int noticeInsert(NoticeBoard notice);
	int total();
	List<NoticeBoard> listNotice(NoticeBoard notice);
	public NoticeBoard noticeDetail(int bnum);
	public void noticeDelete(int bnum);
	public void insertBoard();
	public int noticeUpdate(NoticeBoard notice);
	public int totalNoticeCategory(String category);
	List<NoticeBoard> listNoticeCategory(NoticeBoard notice);
	List<NoticeBoard> noticeRecent(NoticeBoard notice);
}
