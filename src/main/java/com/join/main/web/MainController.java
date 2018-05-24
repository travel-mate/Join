package com.join.main.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.join.main.service.MainService;

@Controller
public class MainController {

	private MainService mainService;
	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}
	
	@RequestMapping("/main")
	public String viewMain(HttpSession session) {
		return "main/main";
	}

	
	@RequestMapping("/yourStatus")
	public String viewStartPage() {
		return "main/startPage";
	}
	
	@RequestMapping(value="/main1", method=RequestMethod.GET)
	public String viewMain() {

		return "main/main1";
	}
	

	
}
