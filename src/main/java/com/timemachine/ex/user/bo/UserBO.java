package com.timemachine.ex.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timemachine.ex.common.EncryptUtils;
import com.timemachine.ex.user.dao.UserDAO;
import com.timemachine.ex.user.model.User;

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
	
	public boolean duplicateId(String loginId) {
		
		int count = userDAO.selectCountByLoginId(loginId);
		
		return count != 0;
		
	}
	
	public User getUser(String loginId, String password) {
		// 암호화 
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encryptPassword);
	}
	
	public User getUserById(int id) {
		return userDAO.selectUserById(id);
	}

}
