package com.akatsuki.members;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.akatsuki.members.MembersController;
import com.akatsuki.members.dao.*;

@Controller(value = "membersController")
public class MembersController {
	private static final Logger logger = LoggerFactory.getLogger(MembersController.class);
	
	@Resource(name = "membersDao")
	private MembersDao membersDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String dispLoginPage(Model model) {
		logger.info("display view Login Page");
		
		model.addAttribute("data", "환영합니다.");
		
		return "./login/login.page";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String dispLoginSignUp(@RequestParam(value="member_id", defaultValue="0") String member_id, Model model) {
		
		logger.info("display view SignUp Page");
		
		return "./login/login.signup";
	}
	
	@RequestMapping(value = "/signup_ok", method = RequestMethod.POST)
	public String dispLoginSignUp(@ModelAttribute("membersVo") MembersVo membersVo, RedirectAttributes redirectAttributes) {
		String member_id = membersVo.getMember_id();
		
		this.membersDao.insert(membersVo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String dispLoginPwSearch(Model model) {
		logger.info("display view Password Search Page");
		
		return "./login/login.pw_search";
	}
}
