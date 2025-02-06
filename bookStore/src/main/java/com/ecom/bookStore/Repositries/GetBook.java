package com.ecom.bookStore.Repositries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ecom.bookStore.Entity.Books;


//repositries for book table for performing crud functions
@Repository
public interface GetBook extends JpaRepository<Books, Long>{

}
