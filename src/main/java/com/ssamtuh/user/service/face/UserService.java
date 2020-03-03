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
	
}
