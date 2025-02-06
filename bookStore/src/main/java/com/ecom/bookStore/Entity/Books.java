package com.ecom.bookStore.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//Storing books

@Entity
@Table(name ="Book_List")
public class Books {
	
	@Id
	@Column(name="Id" ,length = 30)
	private long book_Id;
	
	@Column(name="Image_URl", length = 100)
	private String image_Url;
	
	@Column(name="Book_Title" ,length = 400)
	private String titleOfBook;
	
	@Column(name="Book_Author", length = 50)
	private String Author;

	public long getBook_Id() {
		return book_Id;
	}

	public void setBook_Id(long book_Id) {
		this.book_Id = book_Id;
	}

	public String getImage_Url() {
		return image_Url;
	}

	public void setImage_Url(String image_Url) {
		this.image_Url = image_Url;
	}

	public String getTitleOfBook() {
		return titleOfBook;
	}

	public void setTitleOfBook(String titleOfBook) {
		this.titleOfBook = titleOfBook;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}
}
