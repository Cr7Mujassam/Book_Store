package com.ecom.bookStore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//This is home page without sending data 
@Controller
public class BookHomeController {
	
	//book store homePage this will add the home page
	@RequestMapping(value = "/store/homepage")
	public String storeHomepage() {
		return "home";
	}
	
	
	//book store homePage this will add the home page
		@RequestMapping(value = "/store/fictionpage")
		public String storeFictionpage() {
			return "fiction";
		}

}
