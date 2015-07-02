package service;

import java.util.List;

import model.Html5Board;

public interface Html5Service {
	List<Html5Board> listHtml5(Html5Board html5board);
	public void insertBoard();
	Html5Board html5Detail(int bnum);
	int html5Insert(Html5Board html5);
	int html5Update(Html5Board html5);
	int html5Delete(int bnum);
	int html5Total();
	public int totalHtml5Category(String category);
	List<Html5Board> listHtml5Category(Html5Board html5);
}
