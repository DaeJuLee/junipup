package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MainDao;
import model.AndroidBoard;
import model.DBBoard;
import model.Html5Board;
import model.JQueryBoard;
import model.JavaBoard;
import model.JspBoard;
import model.NoticeBoard;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainDao md;
	
	@Override
	public List<DBBoard> DBRecent() {
		return md.DBRecent();
	}

	@Override
	public List<JQueryBoard> JQueryRecent() {
		return md.JQueryRecent();
	}

	@Override
	public List<JspBoard> JspRecent() {
		return md.JspRecent();
	}

	@Override
	public List<JavaBoard> JavaRecent() {
		return md.JavaRecent();
	}

	@Override
	public List<AndroidBoard> AndroidRecent() {
		return md.AndroidRecent();
	}

	@Override
	public List<Html5Board> Html5Recent() {
		return md.Html5Recent();
	}

	@Override
	public List<NoticeBoard> NoticeRecent() {		
		return md.NoticeRecent();
	}

}
