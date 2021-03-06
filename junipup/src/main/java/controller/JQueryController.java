package controller;

import java.util.List;

import model.JQueryBoard;
import model.Member;
import model.NoticeBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.NoticeDao;
import service.JQueryService;
import service.MemberService;
import service.Paging;

@Controller
public class JQueryController {
	@Autowired
	JQueryService js;
	@Autowired
	NoticeDao nd;
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="jQueryMain")
	public String listJQuery(Model model, JQueryBoard JQueryboard, String currentPage, String category, NoticeBoard notice) {
		//js.insertBoard();
		if(category == null || category.equals("")){
			int total = js.JQueryTotal();
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			JQueryboard.setStart(pg.getStart());
			JQueryboard.setEnd(pg.getEnd());
			System.out.println("category : " + JQueryboard.getCategory());
			List<JQueryBoard> list = js.listJQuery(JQueryboard);
			List<NoticeBoard> noticeRecent = nd.noticeRecent(notice);	
			model.addAttribute("jQueryMain", list);
			model.addAttribute("noticeRecent", noticeRecent);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "true");
			return "/jQuery/jQueryMain";
		}else{
			int total = js.totalJQueryCategory(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			JQueryboard.setStart(pg.getStart());
			JQueryboard.setEnd(pg.getEnd());
			JQueryboard.setCategory(category);
			System.out.println("category : " + JQueryboard.getCategory());
			List<JQueryBoard> list = js.listJQueryCategory(JQueryboard);
			model.addAttribute("jQueryMain", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "false");
			model.addAttribute("category", category);
			return "/jQuery/jQueryMain";
		}
	}
	
	@RequestMapping(value="jQueryInsertForm")
	public String JQueryInsert(Model model) {
		return "/jQuery/jQueryInsertForm";
	}
	
	@RequestMapping(value="jQueryInsert", method=RequestMethod.POST)
	public String JQueryInsert(Model model, JQueryBoard jquery,String nickname) {
		int result =  js.JQueryInsert(jquery);
		Member member = new Member();
		member = ms.selectNickname(nickname);
		member.setMaxPoint(member.getMaxPoint()+5);
		member.setUsePoint(member.getUsePoint()+5);		
		js.jQueryPointUp5(member);
		if(result > 0){
			return "redirect:jQueryMain.do";
		}else{
			return "/jQuery/jQueryInsertForm";
		}	
	}
	
	@RequestMapping(value="jQueryDetail")
	public String JQueryDetail(Model model, int bnum) {
		JQueryBoard jquery = js.JQueryDetail(bnum);
		js.HitsUpdate(bnum);
		model.addAttribute("jQueryDetail", jquery);
		model.addAttribute("modify", "true");
		return "/jQuery/jQueryDetail";
	}
	
	@RequestMapping(value="jQueryUpdateForm", method=RequestMethod.POST)
	public String JQueryUpdateForm(int bnum, Model model){
		JQueryBoard jquery = js.JQueryDetail(bnum);
		model.addAttribute("jQueryUpdateForm", jquery);
		return "/jQuery/jQueryUpdateForm";	
	}
	
	@RequestMapping(value="jQueryUpdate", method=RequestMethod.POST)
	public String JQueryUpdate(Model model, JQueryBoard jquery) {
		int result = js.JQueryUpdate(jquery);
		if(result > 0){
			return "redirect:jQueryMain.do";
		}else{
			return "forward:jQueryUpdateForm.do";
		}
	}
	
	@RequestMapping(value="jQueryDeleteCheck")
	public String JQueryDeleteCheck(int bnum, Model model){
		JQueryBoard board = new JQueryBoard();
		board.setBnum(bnum);
		model.addAttribute("board", board);
		return "/jQuery/jQueryDeleteCheck";
	}
	
	@RequestMapping(value="JQueryDelete")
	public String JQueryDelete(int bnum, Model model){
		js.JQueryDelete(bnum);
		return "redirect:jQueryMain.do";
	}	
	@RequestMapping(value="jQueryPop")
	public String selectNickname(String nickname, Model model){
		Member mem = ms.selectNickname(nickname);
		model.addAttribute("nick", mem);
		return"/jQuery/jQueryPop";	
	}
}
