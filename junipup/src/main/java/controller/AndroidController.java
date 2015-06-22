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
		int total = service.total();
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
		int result = service.insert(android);
		if(result > 0){
			return "redirect:androidMain.do";
		}else{
			return "/android/androidInsertForm";
		}
	}
	
	@RequestMapping(value = "androidDetail")
	public String androidDetail(String title, Model model){
		AndroidBoard android = service.selectAndroid(title);
		model.addAttribute("androidDetail", android);
		return "/android/androidDetail";
	}
}
