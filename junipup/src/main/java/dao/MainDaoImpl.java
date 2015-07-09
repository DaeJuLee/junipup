package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.AndroidBoard;
import model.DBBoard;
import model.Html5Board;
import model.JQueryBoard;
import model.JavaBoard;
import model.JspBoard;
@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	SqlSession session;
	
	public List<DBBoard> DBRecent() {
		return session.selectList("DBRecent");
	}

	@Override
	public List<JQueryBoard> JQueryRecent() {
		return session.selectList("JQueryRecent");
	}

	@Override
	public List<JspBoard> JspRecent() {
		return session.selectList("JspRecent");
	}

	@Override
	public List<JavaBoard> JavaRecent() {
		return session.selectList("JavaRecent");
	}

	@Override
	public List<AndroidBoard> AndroidRecent() {
		return session.selectList("AndroidRecent");
	}

	@Override
	public List<Html5Board> Html5Recent() {
		return session.selectList("Html5Recent");
	}

}
