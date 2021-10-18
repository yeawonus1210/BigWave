package com.spring.bigwController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import reserveInfo.ReserveInfo;

@Controller
public class FormController {
	@RequestMapping("form/visitform_result")
	public String reserveinfo(ReserveInfo reserveInfo) {
		return "form/visitform_result";
		
	}
	

		
	}
	





