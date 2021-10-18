package com.spring.bigwController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {

	@RequestMapping("/")
	public void main() {}

	@RequestMapping("main")
	public String MainPage() {
		return "main";
	}
	
	@RequestMapping("price_and_open")
	public String Price_and_OpenPage() {
		return "price_and_open";
	}
	
	@RequestMapping("plan_a_visit")
	public String Plan_a_VisitPage() {
		return "plan_a_visit";
	}
	
//	@RequestMapping("board/writeView")	
//	public String writeView_Page() {
//		return "board/writeView";
//	}
	

	
	

	
}
