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

	@Override
	public Boolean setUserInfo(Stuser stuser) {
		
		int count_id = userDao.selectCountByUserId(stuser);
		int count_nick = userDao.selectCountByUserNick(stuser);
		
		if(count_id >= 1 || count_nick >= 1) {
			System.out.println("중복되는 아이디 혹은 닉네임이 있어 가입이 불가능 합니다.");
			return false;
		} else {
			System.out.println("전달받은 사용자 데이터가 테이블에 입력되었습니다.");
			userDao.insertUserInfo(stuser);
			return true;
		}
	}

	@Override
	public Boolean isID(Stuser stuser) {
		int count = userDao.selectCountByUserId(stuser);
		
		if(count >= 1) {
			System.out.println("ID 중복검사 결과 가입이 불가능합니다..");
			return false;
		} else {
			System.out.println("ID 중복검사 결과 가입이 가능합니다!");
			return true;
		}
	}

	@Override
	public Boolean isNick(Stuser stuser) {
		int count = userDao.selectCountByUserNick(stuser);
		
		if(count >= 1) {
			System.out.println("닉네임 중복검사 결과 가입이 불가능합니다..");
			return false;
		} else {
			System.out.println("닉네임 중복검사 결과 가입이 가능합니다!");
			return true;
		}
	}




}
