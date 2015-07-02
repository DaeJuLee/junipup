package controller;

import java.util.List;

import model.Html5Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.Html5Service;
import service.Paging;

@Controller
public class Html5Controller {
	@Autowired
	private Html5Service hs;
	
	@RequestMapping(value="html5Main")
	public String listHtml5(Model model, Html5Board html5board, String currentPage, String category) {
		//hs.insertBoard();
		if(category == null || category.equals("")){
		int total = hs.html5Total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		html5board.setStart(pg.getStart());
		html5board.setEnd(pg.getEnd());
		List<Html5Board> list = hs.listHtml5(html5board);
		model.addAttribute("html5Main", list);
		model.addAttribute("pg", pg);
		model.addAttribute("all", "true");
		return "/html5/html5Main";
		
		}else{
			int total = hs.totalHtml5Category(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			html5board.setStart(pg.getStart());
			html5board.setEnd(pg.getEnd());
			html5board.setCategory(category);
			System.out.println("category : " + html5board.getCategory());
			List<Html5Board> list = hs.listHtml5Category(html5board);
			model.addAttribute("html5Main", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "false");
			model.addAttribute("category", category);
			return "/html5/html5Main";
		}
	}
	
	@RequestMapping(value="html5InsertForm")
	public String html5Insert(Model model) {
		return "/html5/html5InsertForm";
	}
	
	@RequestMapping(value="html5Insert", method=RequestMethod.POST)	
	public String html5Insert(Model model, Html5Board html5) {
		html5.setContent(html5.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result =  hs.html5Insert(html5);
		if(result > 0){
			return "redirect:html5Main.do";
		}else{
			return "/html5/html5InsertForm";
		}	
	}
	
	@RequestMapping(value="html5Detail")
	public String html5Detail(Model model, int bnum) {
		Html5Board html5 = hs.html5Detail(bnum);
		model.addAttribute("html5Detail", html5);
		return "/html5/html5Detail";
	}
	
	@RequestMapping(value="html5UpdateForm")
	public String androidUpdateForm(int bnum, Model model){
		Html5Board html5 = hs.html5Detail(bnum);
		model.addAttribute("html5UpdateForm", html5);
		return "html5/html5UpdateForm";	
	}
	
	@RequestMapping(value="html5Update", method=RequestMethod.POST)
	public String html5Update(Model model, Html5Board html5) {
		int result = hs.html5Update(html5);
		if(result > 0){
			return "redirect:html5Main.do";
		}else{
			return "forward:html5UpdateForm.do";
		}
	}
	
	@RequestMapping(value="html5DeleteCheck")
	public String html5DeleteCheck(int bnum, Model model){
		Html5Board board = new Html5Board();
		board.setBnum(bnum);
		model.addAttribute("board", board);
		return "/html5/html5DeleteCheck";
	}
	
	@RequestMapping(value="html5Delete")
	public String html5Delete(int bnum, Model model){
		hs.html5Delete(bnum);
		return "redirect:html5Main.do";
	}
	
	@RequestMapping(value="html5UpdateCheck" ,method=RequestMethod.POST)
	public String html5UpdateCheck(Html5Board board , Model model){
		model.addAttribute("board", board);
		return "/html5/html5UpdateCheck";
	}
}
