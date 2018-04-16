package com.dao;

import com.beans.User;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
 
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UserDAO {
	
	 public void add(User user) {
	        List<User> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure().buildSessionFactory();
	        Session s = sf.openSession();
	        s.beginTransaction();
	 
	        s.save(user);
	 
	        s.getTransaction().commit();
	        s.close();
	        sf.close();
	    }
	 public User get(int id) {
		 User res = null;
		 
	     SessionFactory sf = new Configuration().configure().buildSessionFactory();
	     Session s = sf.openSession();
	     s.beginTransaction();
	     
	     res = (User)s.get(User.class, id);
	     s.close();
	     sf.close();
	     return res;
		 
	 }
	 public void delete(int id) {
	        List<User> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure()
	                .buildSessionFactory();
	        Session s = sf.openSession();
	        s.beginTransaction();
	 
	        User user = (User) s.get(User.class, id);
	 
	        s.delete(user);
	 
	        s.getTransaction().commit();
	        s.close();
	        sf.close();
	    }
	 
	    public void update(User user) {
	        List<User> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure()
	                .buildSessionFactory();
	        Session s = sf.openSession();
	        s.beginTransaction();
	 
	        s.update(user);
	 
	        s.getTransaction().commit();
	        s.close();
	        sf.close();
	    }
	 
	    public List<User> listUser() {
	        List<User> result = new ArrayList();
	 
	        SessionFactory sf = new Configuration().configure()
	                .buildSessionFactory();
	        Session s = sf.openSession();
	 
	        Query q = s.createQuery("from User user");
	 
	        result = q.list();
	 
	        s.close();
	        sf.close();
	        return result;
	    }
}
