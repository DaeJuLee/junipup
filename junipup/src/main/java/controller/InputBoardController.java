package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AndroidDao;
import dao.DBDao;
import dao.Html5Dao;
import dao.JQueryDao;
import dao.JavaDao;
import dao.JspDao;

@Controller
public class InputBoardController {

	@Autowired
	AndroidDao ad;
	@Autowired 
	DBDao db;
	@Autowired
	Html5Dao hd;
	@Autowired
	JavaDao jd;
	@Autowired
	JQueryDao jqd;
	@Autowired
	JspDao jsp;
	
	
	@RequestMapping(value="inputBoard")
	public String inputBoard(Model model){
		ad.insertBoard();
		db.insertBoard();
		hd.insertBoard();
		//jd.insertBoard();
		jqd.insertBoard();
		jsp.insertBoard();
		return "inputBoard";
	}
	
}
