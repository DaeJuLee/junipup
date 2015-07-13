package dao;

import java.util.List;

import model.Html5Board;


public interface Html5Dao {
	List<Html5Board> listHtml5(Html5Board html5board);
	public void insertBoard();
	int html5Insert(Html5Board html5);
	int html5Update(Html5Board html5);
	Html5Board html5Detail(int bnum);
	int html5Delete(int num);
	int html5Total();
	public int totalHtml5Category(String category);
	List<Html5Board> listHtml5Category(Html5Board html5);
	void htmlPointUp5(String nickname);
}
