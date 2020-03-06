package com.ssamtuh.user.service.face;

import com.ssamtuh.user.dto.Stuser;

public interface UserService {

	/*
	 * 로그인
	 * 
	 * @param userid, userpw
	 * @return id,pw가 중복되는 컬럼수 리턴
	 */
	Stuser getJoinedUser(Stuser stuser);
	
	/*
	 * 아이디, 비밀번호가 일치하는 회원정보가 있는지 확인
	 * 
	 * @param userid,userpw
	 * @return 일치하는 회원이 있는지 여부
	 */
	public Boolean loginCheak(Stuser stuser);
	
	public Boolean login(Stuser stuser);
	
}
