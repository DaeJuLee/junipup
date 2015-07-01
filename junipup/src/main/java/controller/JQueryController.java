package controller;

import java.util.List;

import model.JQueryBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.JQueryService;
import service.Paging;

@Controller
public class JQueryController {
	@Autowired
	JQueryService js;
	
	@RequestMapping(value="JQueryMain")
	public String listJQuery(Model model, JQueryBoard JQueryboard, String currentPage) {
//		hs.insertBoard();
		int total = js.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		JQueryboard.setStart(pg.getStart());
		JQueryboard.setEnd(pg.getEnd());
		List<JQueryBoard> list = js.listJQuery(JQueryboard);
		model.addAttribute("JQueryMain", list);
		model.addAttribute("pg", pg);
		return "/jQuery/jQueryMain";
	}
	
	@RequestMapping(value="JQueryInsertForm")
	public String JQueryInsert(Model model) {
		return "/jQuery/jQueryInsertForm";
	}
	
	@RequestMapping(value="JQueryInsert", method=RequestMethod.POST)
	public String JQueryInsert(Model model, JQueryBoard jquery) {
		int result =  js.JQueryInsert(jquery);
		if(result > 0){
			return "redirect:JQueryMain.do";
		}else{
			return "/jQuery/jQueryInsertForm";
		}	
	}
	
	@RequestMapping(value="JQueryDetail")
	public String JQueryDetail(Model model, int bnum) {
		JQueryBoard jquery = js.JQueryDetail(bnum);
		model.addAttribute("JQueryDetail", jquery);
		return "/jQuery/jQueryDetail";
	}
	
	@RequestMapping(value="JQueryUpdateForm")
	public String JQueryUpdateForm(int bnum, Model model){
		JQueryBoard jquery = js.JQueryDetail(bnum);
		model.addAttribute("JQueryUpdateForm", jquery);
		return "/jQuery/jQueryUpdateForm";	
	}
	
	@RequestMapping(value="JQueryUpdate", method=RequestMethod.POST)
	public String JQueryUpdate(Model model, JQueryBoard jquery) {
		int result = js.JQueryUpdate(jquery);
		if(result > 0){
			return "redirect:JQueryMain.do";
		}else{
			return "forward:jQueryUpdateForm.do";
		}
	}
	
	@RequestMapping(value="JQueryDeleteCheck")
	public String JQueryDeleteCheck(int bnum, Model model){
		JQueryBoard board = new JQueryBoard();
		board.setBnum(bnum);
		model.addAttribute("board", board);
		return "/jQuery/jQueryDeleteCheck";
	}
	
	@RequestMapping(value="JQueryDelete")
	public String JQueryDelete(int bnum, Model model){
		js.JQueryDelete(bnum);
		return "redirect:JQueryMain.do";
	}
	
	
}
