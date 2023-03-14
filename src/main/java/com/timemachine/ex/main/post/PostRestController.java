package com.timemachine.ex.main.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.timemachine.ex.main.post.bo.PostBO;

@RestController
public class PostRestController {
	
	@Autowired
	private PostBO postBO;
	

}
