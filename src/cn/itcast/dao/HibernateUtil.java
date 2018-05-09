package cn.itcast.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    //将sessionFactory设为静态，可以保证其整个应用程序中的唯一性  
    private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();  
    private HibernateUtil(){};                              //将构造方法设为似有，只能使用“类名+静态方法”的方式调用  
    /** 
     * 获取Session工厂 
     * @return  SessionFactory 
     */  
    public static SessionFactory getSessionFactory(){  
        return sessionFactory;  
    }  
    /** 
     * 获取Session 
     * @return      Session 
     */  
    public static Session getSession(){  
        return sessionFactory.getCurrentSession();  
}
}