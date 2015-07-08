package service;

import java.util.List;

import model.AndroidBoard;
import model.DBBoard;
import model.Html5Board;
import model.JQueryBoard;
import model.JavaBoard;
import model.JspBoard;

public interface MainService {

	List<DBBoard> DBRecent();

	List<JQueryBoard> JQueryRecent();

	List<JspBoard> JspRecent();

	List<JavaBoard> JavaRecent();

	List<AndroidBoard> AndroidRecent();

	List<Html5Board> Html5Recent();


}
