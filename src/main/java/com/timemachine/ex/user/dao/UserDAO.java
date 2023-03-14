package com.timemachine.ex.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.timemachine.ex.user.model.User;

@Repository
public interface UserDAO {
	
	public int insertUser(
			@Param("name") String name
			, @Param("email") String email
			, @Param("loginId") String loginId
			, @Param("password") String password
			, @Param("university") String university);
	
	// loginId 가 일치하는 행이 몇개인지 확인, BO에서 0개인지 확인
	public int selectCountByLoginId(@Param("loginId") String loginId);
	
	public User selectUser(
			@Param("loginId") String loginId
			, @Param("password") String password);
	
	public User selectUserById(@Param("id") int id);

}