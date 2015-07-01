package service;

import java.util.List;
import model.JQueryBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.JQueryDao;

@Service
public class JQueryServiceImpl implements JQueryService {
	@Autowired
	JQueryDao jd;

	public List<JQueryBoard> listJQuery(JQueryBoard jQueryboard) {
		return jd.listJQuery(jQueryboard);
	}

	public int JQueryInsert(JQueryBoard jquery) {
		return jd.JQueryInsert(jquery);
	}

	public JQueryBoard JQueryDetail(int bnum) {
		return jd.JQueryDetail(bnum);
	}

	public int JQueryUpdate(JQueryBoard jquery) {
		return jd.jQueryUpdate(jquery);
	}

	public int JQueryDelete(int bnum) {
		return jd.JQueryDelete(bnum);
	}
	
	public int JQueryTotal() {
		return jd.JQueryTotal();
	}

	public void insertBoard() {
		jd.insertBoard();
		
	}
}
