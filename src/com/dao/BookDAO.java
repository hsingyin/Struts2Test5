package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.beans.BookInfo;



public class BookDAO {
	
	
	public void add(BookInfo bookInfo) {
        List<BookInfo> result = new ArrayList();
 
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
 
        s.save(bookInfo);
 
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
	 public BookInfo get(int id) {
		 BookInfo res = null;
		 
	     SessionFactory sf = new Configuration().configure().buildSessionFactory();
	     Session s = sf.openSession();
	     s.beginTransaction();
	     
	     res = (BookInfo)s.get(BookInfo.class, id);
	     s.close();
	     sf.close();
	     return res;
		 
	 }
	 public void delete(int id) {
	        List<BookInfo> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure()
	                .buildSessionFactory();
	        Session s = sf.openSession();
	        s.beginTransaction();
	 
	        BookInfo bookInfo = (BookInfo) s.get(BookInfo.class, id);
	 
	        s.delete(bookInfo);
	 
	        s.getTransaction().commit();
	        s.close();
	        sf.close();
	    }
 
    public void update(BookInfo bookInfo) {
        List<BookInfo> result = new ArrayList();
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
 
        s.update(bookInfo);
 
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
    
	 public List<BookInfo> listBook() {
	        List<BookInfo> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure()
	                .buildSessionFactory();
	        Session s = sf.openSession();
	 
	        Query q = s.createQuery("from BookInfo book");
	 
	        result = q.list();
	 
	        s.close();
	        sf.close();
	        return result;
	    }
}
