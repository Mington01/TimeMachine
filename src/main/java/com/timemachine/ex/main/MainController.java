package com.timemachine.ex.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class MainController {
	
	@GetMapping("/view")
	public String home() {
		return "main/home";
	}

}
