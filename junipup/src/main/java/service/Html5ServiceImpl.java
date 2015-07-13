package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Html5Dao;
import model.Html5Board;
import model.Member;
@Service
public class Html5ServiceImpl implements Html5Service {
	@Autowired
	Html5Dao hd;

	public List<Html5Board> listHtml5(Html5Board html5board) {
		return hd.listHtml5(html5board); 
	}
	
	public void insertBoard() {
		hd.insertBoard();
	}

	public Html5Board html5Detail(int bnum) {
		return hd.html5Detail(bnum);
	}

	public int html5Insert(Html5Board html5) {
		return hd.html5Insert(html5);
	}

	public int html5Update(Html5Board html5) {
		return hd.html5Update(html5);
	}

	public int html5Delete(int bnum) {
		return hd.html5Delete(bnum);
	}

	public int html5Total() {
		return hd.html5Total();
	}

	@Override
	public int totalHtml5Category(String category) {
		return hd.totalHtml5Category(category);
	}

	@Override
	public List<Html5Board> listHtml5Category(Html5Board html5) {
		return hd.listHtml5Category(html5);
	}

	@Override
	public void htmlPointUp5(Member member) {
		hd.htmlPointUp5(member);
	}
}
