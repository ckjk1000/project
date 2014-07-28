package com.project.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ViewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ViewController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String dispLoginPage(Model model) {
		logger.info("display view Login Page");
		return "login.page";
	}
}
