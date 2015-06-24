package controller;

import java.util.List;

import model.AndroidBoard;
import model.Emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.AndroidService;
import service.Paging;

@Controller
public class AndroidController {

	@Autowired
	AndroidService service;
	
	@RequestMapping(value="androidMain")
	public String androidMain(AndroidBoard android, String currentPage, Model model){
//		service.insertBoard();
		int total = service.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		android.setStart(pg.getStart());
		android.setEnd(pg.getEnd());
		List<AndroidBoard> list = service.listAndroid(android);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "/android/androidMain";
	}
	
	@RequestMapping(value="androidInsertForm")
	public String androidInsertForm(Model model){
		return "/android/androidInsertForm";
	}
	
	@RequestMapping(value = "androidInsert", method=RequestMethod.POST)
	public String androidInsert(AndroidBoard android, Model model){
		int result = service.androidInsert(android);
		if(result > 0){
			return "redirect:androidMain.do";
		}else{
			return "/android/androidInsertForm";
		}
	}
	
	@RequestMapping(value = "androidDetail")
	public String androidDetail(String title, Model model){
		AndroidBoard android = service.androidDetail(title);
		model.addAttribute("androidDetail", android);
		return "/android/androidDetail";
	}
	
	@RequestMapping(value = "androidUpdateForm")
	public String androidUpdateForm(String title, Model model){
		AndroidBoard android = service.androidDetail(title);
		model.addAttribute("androidDetail", android);
		return "/android/androidUpdateForm";
	}
	
	@RequestMapping(value = "androidUpdate")
	public String androidUpdate(AndroidBoard android, Model model){
		int result = service.androidUpdate(android);
		if(result > 0){
			return "redirect:androidMain.do";
		}else{
			return "forward:androidUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "androidDelete")
	public String androidDelete(String title, Model model){
		service.androidDelete(title);
		return "redirect:androidMain.do";
	}
	
	@RequestMapping(value="androidDeleteCheck")
	public String androidDeleteCheck(String title, Model model){
		AndroidBoard board = new AndroidBoard();
		board.setTitle(title);
		model.addAttribute("title", board);
		return "/android/androidDeleteCheck";
	}
}
