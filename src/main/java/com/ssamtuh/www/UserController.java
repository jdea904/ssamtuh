package com.ssamtuh.www;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssamtuh.user.dto.Stuser;
import com.ssamtuh.user.service.face.UserService;



@Controller
public class UserController {

	@Autowired UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(Stuser stuser) {
		System.out.println("stuser : " + stuser);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("home");
		
		System.out.println(stuser.toString());
		boolean check = userService.login(stuser);
		
		if(check) {
			mav.addObject("loginCheck" , "성공");
		} else {
			mav.addObject("loginCheck" , "실패");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		session.invalidate();
		
		System.out.println("로그아웃됨");
		
		return "home";
	}
	
	
	
}
