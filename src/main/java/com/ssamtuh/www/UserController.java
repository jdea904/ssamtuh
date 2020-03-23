package com.ssamtuh.www;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ssamtuh.user.dto.Stuser;
import com.ssamtuh.user.service.face.UserService;



@Controller
public class UserController {

	@Autowired UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@ResponseBody
	@RequestMapping( value="/login", method= RequestMethod.POST )
	public Boolean login(Stuser stuser, Model model) {
		
		Boolean loggedInUser = userService.login(stuser);
		if(loggedInUser) {
			return true;
		} else {
			return false;
		}
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest req) {
		
		userService.logout();
				
		return "redirect:/home";
		
	}
	
	@RequestMapping(value="/user/join")
	public void join(Stuser user) {
		System.out.println("회원가입 접근");
	}
	
	@ResponseBody
	@RequestMapping(value="/user/joinProc", method=RequestMethod.POST)
	public Boolean joinProc(Stuser stuser,HttpServletRequest req, RedirectAttributes redirectAttributes) {
		System.out.println("전달받은 사용자 정보 : " + stuser.toString());

		boolean login = userService.setUserInfo(stuser);
		
		
		return login;
	}
	
	@ResponseBody
	@RequestMapping(value="/user/isID", method=RequestMethod.POST)
	public Boolean isID(Stuser stuser) {
		System.out.println("전달받은 아이디 : " + stuser.getStuser_id());
		boolean check = userService.isID(stuser);
		return check;
	}
	
	@ResponseBody
	@RequestMapping(value="/user/isNick", method=RequestMethod.POST)
	public Boolean isNick(Stuser stuser) {
		System.out.println("전달받은 닉네임 : " + stuser.getStuser_nick());
		boolean check = userService.isNick(stuser);
		System.out.println(check);
		return check;
	}
	
	@ResponseBody
	@RequestMapping(value="/user/isPW", method=RequestMethod.POST)
	public Boolean isPW(Stuser stuser) {
		System.out.println("전달받은 비밀번호 : " + stuser.getStuser_pw());
		
		return true;
	}
	
	@ResponseBody
	@RequestMapping(value="/user/isPWCheck", method=RequestMethod.POST)
	public Boolean isPWCheck(Stuser stuser) {
		System.out.println("전달받은 확인용 비밀번호 : " + stuser.getStuser_pw());
		
		return true;
	}
	
	
}
