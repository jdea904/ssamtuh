package com.ssamtuh.user.dao.face;

import com.ssamtuh.user.dto.Stuser;

public interface UserDao {

	public int selectCountByUserid(Stuser stuser);
	
	public Stuser selectLoggedInUser(Stuser stuser);
}
