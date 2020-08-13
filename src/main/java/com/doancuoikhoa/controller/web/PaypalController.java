package com.doancuoikhoa.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaypalController {
	
	
	@RequestMapping(value = "")
	public String index() {
		return "index";
	}
}
