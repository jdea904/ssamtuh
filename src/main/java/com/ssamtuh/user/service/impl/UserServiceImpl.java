package com.ssamtuh.user.service.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssamtuh.user.dao.face.UserDao;
import com.ssamtuh.user.dto.Stuser;
import com.ssamtuh.user.service.face.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired private UserDao userDao;
	@Autowired private HttpSession session;
	@Autowired private HttpServletRequest req;
	
	@Override
	public Stuser getJoinedUser(Stuser stuser) {

		int count = userDao.selectCountByUserid(stuser);
		System.out.println("CountResult : " + count);
		if(count == 0) {
			return null;
		}
		
		Stuser user = userDao.selectLoggedInUser(stuser);
		System.out.println("유저 서비스 임플_로그인된 유저 정보 : " + user.toString());
		
		return user;		
	}

	@Override
	public Boolean loginCheak(Stuser stuser) {
		
		int count = userDao.selectCountByUserid(stuser);
		System.out.println("일치하는 회원 수 : " + count);
		
		if(count == 1 ) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Boolean login(Stuser stuser) {
		
		int count = userDao.selectCountByUserid(stuser);
		
		Stuser user = new Stuser();
		if(count == 1) {
			user = userDao.selectLoggedInUser(stuser);
			
			session.setAttribute("loggedInUser", user);
			
			return true;
		} else {
			System.out.println("로그인실패");
			return false;
		}
		
	}

	@Override
	public void logout() {
		session.removeAttribute("loggedInUser");
	}




}
