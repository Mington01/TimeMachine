package com.timemachine.ex.main.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.timemachine.ex.main.post.bo.PostBO;
import com.timemachine.ex.main.post.model.Post;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;
	
	@GetMapping("/gallery/view")
	public String listView(
			HttpServletRequest request
			, Model model) {
		
//		HttpSession session = request.getSession();
//		int userId = (Integer)session.getAttribute("userId");
//		
//		List<Post> postList = postBO.getPostList(userId);
//		model.addAttribute("postList", postList);
		
		return "post/gallery";
	}
	
	@GetMapping("/create/view")
	public String createView() {
		return "post/create";
	}
//	
//	@GetMapping("/detail/view")
//	public String detailView(
//			@RequestParam("postId") int postId
//			, Model model) {
//		
//		Post post = postBO.getPost(postId);
//		
//		model.addAttribute("post", post);
//		
//		return "post/detail";
//	}

}
