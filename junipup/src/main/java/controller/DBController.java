package controller;

import java.util.List;

import model.DBBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.DBService;
import service.Paging;
@Controller
public class DBController {
	@Autowired
	DBService service;
	
	@RequestMapping(value="DBMain")
	public String androidMain(DBBoard db, String currentPage, Model model){
//		service.insertBoard();
		int total = service.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		db.setStart(pg.getStart());
		db.setEnd(pg.getEnd());
		List<DBBoard> list = service.listDB(db);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "/database/DBMain";
	}
	
	@RequestMapping(value="DBInsertForm")
	public String DBInsertForm(Model model){
		return "/database/DBInsertForm";
	}
	
	@RequestMapping(value = "DBInsert", method=RequestMethod.POST)
	public String DBInsert(DBBoard db, Model model){
		int result = service.DBInsert(db);
		if(result > 0){
			return "redirect:DBMain.do";
		}else{
			return "/database/DBInsertForm";
		}
	}
	
	@RequestMapping(value = "DBDetail")
	public String DBDetail(String title, Model model){
		DBBoard db = service.DBDetail(title);
		model.addAttribute("DBDetail", db);
		return "/database/DBDetail";
	}
	
	@RequestMapping(value = "DBUpdateForm")
	public String DBUpdateForm(String title, Model model){
		DBBoard db = service.DBDetail(title);
		model.addAttribute("DBDetail", db);
		return "/database/DBUpdateForm";
	}
	
	@RequestMapping(value = "DBUpdate")
	public String DBUpdate(DBBoard db, Model model){
		int result = service.DBUpdate(db);
		if(result > 0){
			return "redirect:DBMain.do";
		}else{
			return "forward:DBUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "DBDelete")
	public String DBDelete(String title, Model model){
		service.DBDelete(title);
		return "redirect:DBMain.do";
	}
	
	@RequestMapping(value="DBDeleteCheck")
	public String DBDeleteCheck(String title, Model model){
		DBBoard board = new DBBoard();
		board.setTitle(title);
		model.addAttribute("title", board);
		return "/database/DBDeleteCheck";
	}
}