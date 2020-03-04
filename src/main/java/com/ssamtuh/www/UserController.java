package com.ssamtuh.www;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssamtuh.user.dto.Stuser;
import com.ssamtuh.user.service.face.UserService;



@Controller
public class UserController {

	@Autowired UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Stuser stuser, HttpServletRequest req) {
		//세션 생성
		HttpSession session = req.getSession();
		
		Boolean loginCheck = userService.loginCheak(stuser);
		
		if(loginCheck) {
			Stuser user = userService.getJoinedUser(stuser);
			
			session.setAttribute("user_no", user.getStuser_no());
			session.setAttribute("user_nick", user.getStuser_nick());
			System.out.println(session.getAttribute("user_no"));
			System.out.println(session.getAttribute("user_nick"));
			
			return "/home";
			
		} else {
			System.out.println("일치하는 유저 정보를 찾지못해 로그인 실패");
			
			return "statics/loginFail";
			
		}
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		session.invalidate();
		
		System.out.println("로그아웃됨");

		System.out.println(req.getRequestURI());
		
				return "redirect:/";
		
	}
	
	
	
}
