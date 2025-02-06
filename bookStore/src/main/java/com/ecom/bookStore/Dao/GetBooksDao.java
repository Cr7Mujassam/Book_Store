package com.ecom.bookStore.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ecom.bookStore.Entity.Books;
import com.ecom.bookStore.Repositries.GetBook;

@Component
public class GetBooksDao {
	
	//repo for book
	@Autowired
	GetBook getbook;
	
	//getting the books
	public List<Books> getBooks(){
		List<Books> book = getbook.findAll();
		return book ;
	}
}
