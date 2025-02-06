package com.ecom.bookStore.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.bookStore.Dao.GetBooksDao;
import com.ecom.bookStore.Entity.Books;

@Service
public class GetAllBooksService {
	
	@Autowired
	GetBooksDao getBooksDao;
	
	//getting books
	public List<Books> getBooks(){
		return getBooksDao.getBooks();
	}
}
