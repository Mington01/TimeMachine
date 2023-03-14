package com.timemachine.ex.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.timemachine.ex.user.bo.UserBO;
import com.timemachine.ex.user.model.User;

@RestController
@RequestMapping("/user")
public class UserRestController {
	
	@Autowired
	private UserBO userBO;
	
	@PostMapping("/signup")
	public Map<String, String> signup(
			@RequestParam("name") String name
			, @RequestParam("email") String email
			, @RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("university") String university) {
		
		Map<String, String> result = new HashMap<>();
		int count = userBO.addUser(name, email, loginId, password, university);
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	//아이디 중복 확인
	@GetMapping("/duplicate_id")
	public Map<String, Boolean> duplicateId(@RequestParam("loginId") String loginId) {
		
		boolean isDuplicate = userBO.duplicateId(loginId);
		
		Map<String, Boolean> result = new HashMap<>();
		
		result.put("is_duplicate", isDuplicate);
		
		return result;
	}
	
	//로그인 API
		@PostMapping("/signin")
		public Map<String, String> signin(
				@RequestParam("loginId") String loginId
				, @RequestParam("password") String password
				, HttpServletRequest request) {
			
			User user = userBO.getUser(loginId, password);
			
			Map<String, String> result = new HashMap<>();
			if(user != null) {
				result.put("result", "success");
				
				// 세션 객체 얻어 오기 
				HttpSession session = request.getSession();
				// 세션에 특정한 값이 저장되어 있으면 로그인 된 상태
				// 세션에 특정한 값이 저장되어 있지 않으면 로그인이 되어있지 않은 상태
				session.setAttribute("userId", user.getId());
				session.setAttribute("userName", user.getName());
				
			} else {
				result.put("result", "fail");
			}
			
			return result;
			
		}
	
	

}
