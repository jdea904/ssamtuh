package com.ssamtuh.www;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssamtuh.user.dto.Stuser;
import com.ssamtuh.user.service.face.UserService;



@Controller
public class UserController {

	@Autowired UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@ResponseBody
	@RequestMapping( value="/login", method= RequestMethod.POST )
	public Boolean login(Stuser stuser, Model model) {
		System.out.println("stuser : " + stuser);
		
		
		
		
		
		boolean check = userService.login(stuser);
		
		if(check) {
			System.out.println("true가 반환되었습니다.");
			return true;
		} else {
			System.out.println("false가 반환되었습니다.");
			return false;
		}
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		session.invalidate();
		
		System.out.println("로그아웃됨");
		
		return "/home";
	}
	
	
	
}
