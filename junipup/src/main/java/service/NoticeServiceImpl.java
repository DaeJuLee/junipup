package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NoticeDao;
import model.NoticeBoard;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	NoticeDao dao;
	
	
	public int noticeInsert(NoticeBoard notice) {
		return dao.noticeInsert(notice);
	}

	
	public int total() {
		return dao.total();
	}

	
	public List<NoticeBoard> listNotice(NoticeBoard notice) {
		return dao.listNotice(notice);
	}

	
	public NoticeBoard noticeDetail(int bnum) {
		return dao.noticeDetail(bnum);
	}

	
	public void noticeDelete(int bnum) {
		dao.noticeDelete(bnum);	
		
	}

	
	public void insertBoard() {
		dao.insertBoard();	
	}

	
	public int noticeUpdate(NoticeBoard notice) {
		return dao.noticeUpdate(notice);
	}

	
	public int totalNoticeCategory(String category) {
		return dao.totalNoticeCategory(category);
	}

	
	public List<NoticeBoard> listNoticeCategory(NoticeBoard notice) {
		return dao.listNoticeCategory(notice);
	}


	@Override
	public int HitsUpdate(int bnum) {
		return dao.HitsUpdate(bnum);
	}

}
