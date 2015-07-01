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
	public String androidMain(DBBoard db, String currentPage, Model model, String category){
//		service.insertBoard();
		if(category == null || category.equals("")){
			int total = service.total();
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			db.setStart(pg.getStart());
			db.setEnd(pg.getEnd());
			System.out.println("category : " + db.getCategory());
			List<DBBoard> list = service.listDB(db);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			return "/database/DBMain";
		}else{
			int total = service.totalDBCategory(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			db.setStart(pg.getStart());
			db.setEnd(pg.getEnd());
			db.setCategory(category);
			System.out.println("category : " + db.getCategory());
			List<DBBoard> list = service.listDBCategory(db);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			return "/database/DBMain";
		}
		
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
	public String DBDetail(int bnum, Model model){
		DBBoard db = service.DBDetail(bnum);
		model.addAttribute("DBDetail", db);
		model.addAttribute("modify", "true");
		return "/database/DBDetail";
	}
	
	@RequestMapping(value = "DBUpdateForm", method = RequestMethod.POST)
	public String DBUpdateForm(int bnum, Model model){
		DBBoard db = service.DBDetail(bnum);
		model.addAttribute("DBDetail", db);
		model.addAttribute("modify", "true");
		return "/database/DBUpdateForm";
	}
	
	@RequestMapping(value = "DBUpdate")
	public String DBUpdate(DBBoard db, Model model){	
		db.setContent(db.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.DBUpdate(db);
		if(result > 0){
			return "redirect:DBMain.do";
		}else{
			return "forward:DBUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "DBDelete")
	public String DBDelete(int bnum, Model model){
		service.DBDelete(bnum);
		return "redirect:DBMain.do";
	}
	
	@RequestMapping(value="DBDeleteCheck")
	public String DBDeleteCheck(int bnum, Model model){
		DBBoard board = new DBBoard();
		board.setBnum(bnum);
		model.addAttribute("bnum", board);
		return "/database/DBDeleteCheck";
	}
}
