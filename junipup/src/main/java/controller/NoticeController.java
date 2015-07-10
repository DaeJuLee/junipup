package controller;

import java.util.List;

import model.NoticeBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.NoticeService;
import service.Paging;
@Controller
public class NoticeController {
	@Autowired
	NoticeService service;
	
	@RequestMapping(value="noticeMain")
	public String noticeMain(NoticeBoard notice, String currentPage, Model model , String category){
//		service.insertBoard();
		if(category == null || category.equals("")){
			int total = service.total();
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			notice.setStart(pg.getStart());
			notice.setEnd(pg.getEnd());
			List<NoticeBoard> list = service.listNotice(notice);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "true");
			return "/notice/noticeMain";
		
		}else{
			int total = service.totalNoticeCategory(category);
			System.out.println("int total : " + total);
			Paging pg = new Paging(total, currentPage);
			notice.setStart(pg.getStart());
			notice.setEnd(pg.getEnd());
			notice.setCategory(category);
			System.out.println("category : " + notice.getCategory());
			List<NoticeBoard> list = service.listNoticeCategory(notice);
			model.addAttribute("list", list);
			model.addAttribute("pg", pg);
			model.addAttribute("all", "false");
			model.addAttribute("category", category);
			return "/notice/noticeMain";
		}
	}
	
	@RequestMapping(value="noticeInsertForm")
	public String noticeInsertForm(Model model){
		return "/notice/noticeInsertForm";
	}
	
	@RequestMapping(value = "noticeInsert", method=RequestMethod.POST)
	public String noticeInsert(NoticeBoard notice, Model model){
		int result = service.noticeInsert(notice);
		if(result > 0){
			return "redirect:noticeMain.do";
		}else{
			return "/notice/noticeInsertForm";
		}
	}
	
	@RequestMapping(value = "noticeDetail")
	public String noticeDetail(int bnum, Model model){
		NoticeBoard notice = service.noticeDetail(bnum);
		model.addAttribute("noticeDetail", notice);
		System.out.println(notice.getTitle() + notice.getCategory());
		return "/notice/noticeDetail";
		
	}
	
	@RequestMapping(value = "noticeUpdateForm", method = RequestMethod.POST)
	public String noticeUpdateForm(int bnum, Model model){
		NoticeBoard notice = service.noticeDetail(bnum);
		model.addAttribute("noticeDetail", notice);
		model.addAttribute("modify", "true");
		return "/notice/noticeUpdateForm";
	}
	
	@RequestMapping(value = "noticeUpdate")
	public String noticeUpdate(NoticeBoard notice, Model model){
		notice.setContent(notice.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.noticeUpdate(notice);
		if(result > 0){
			return "redirect:noticeMain.do";
		}else{
			return "forward:noticeUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "noticeDelete")
	public String noticeDelete(int bnum, Model model){
		service.noticeDelete(bnum);
		return "redirect:noticeMain.do";
	}
	
	@RequestMapping(value="noticeDeleteCheck")
	public String noticeDeleteCheck(int bnum, Model model){
		NoticeBoard notice = new NoticeBoard();
		notice.setBnum(bnum);
		model.addAttribute("notice", notice);
		return "/notice/noticeDeleteCheck";
	}
}
