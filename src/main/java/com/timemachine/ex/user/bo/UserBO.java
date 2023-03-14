package com.timemachine.ex.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timemachine.ex.common.EncryptUtils;
import com.timemachine.ex.user.dao.UserDAO;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	public int addUser(
			String name
			, String email
			, String loginId
			, String password
			, String university) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(name, email, loginId, encryptPassword, university);
		
	}

}
