package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PracController {

	@RequestMapping(value="pracmain")
	public String pracMain(Model model){
		return "pracmain";
	}
	
	
}
