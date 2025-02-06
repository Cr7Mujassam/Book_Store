package com.ecom.bookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ecom.bookStore.Entity.Books;
import com.ecom.bookStore.Service.GetAllBooksService;

//It will get all the books and send to UI
@RestController
public class GetBookController {
	
	@Autowired
	GetAllBooksService getAllBooksService;
	
	//getting all the books
	@GetMapping(value = "/getBooks")
	public List<Books> getBook(){
		return getAllBooksService.getBooks();
	}
	
}
