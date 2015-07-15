package controller;

import java.util.List;

import model.NoticeBoard;
import model.QnABoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.Paging;
import service.QnAService;

@Controller
public class QnAController {
	@Autowired
	QnAService qs;
	
	@RequestMapping(value="qnaMain")
	public String qnaMain(Model model, String currentPage, QnABoard board){
		int total = qs.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<QnABoard> list = qs.listQnA(board);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		model.addAttribute("all", "true");
		return "qnaMain";
	}
	
	@RequestMapping(value="qnaInsertForm")
	public String qnaInsertForm(Model model){
		return null;
	}
	
	@RequestMapping(value="qnaDetail")
	public String qnaDetail(Model model){
		return null;
	}
	
	@RequestMapping(value="qnaUpdateForm")
	public String qnaUpdateForm(Model model){
		return null;
	}
	
	@RequestMapping(value="qnaDeleteCheck")
	public String qnaDeleteCheck(Model model){
		return null;
	}
	
}
