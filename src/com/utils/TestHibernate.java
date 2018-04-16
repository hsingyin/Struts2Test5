package com.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.beans.User;

public class TestHibernate {

	public static void main(String[] args) {
		 
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
 
        Session s = sf.openSession();
        s.beginTransaction();
 
        User user = new User();
        user.setId(002);
        user.setName("mg2");
        user.setPasswd("123");
        s.save(user);
         
        s.getTransaction().commit();
        s.close();
        sf.close();
    }

}
	