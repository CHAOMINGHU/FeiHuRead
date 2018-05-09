package cn.itcast.dao;





import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.domain.User;

public class UserUpdate  {
	 ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:applicationContext.xml");  
	    SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");;  
	    Session session = sessionFactory.openSession();  
	    Transaction transaction = session.beginTransaction();  
	 public void update(User user){
        
		 
	         
	        transaction.commit();  
	        session.close();  
		

		 }
}
