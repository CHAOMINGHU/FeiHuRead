package cn.itcast.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    //��sessionFactory��Ϊ��̬�����Ա�֤������Ӧ�ó����е�Ψһ��  
    private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();  
    private HibernateUtil(){};                              //�����췽����Ϊ���У�ֻ��ʹ�á�����+��̬�������ķ�ʽ����  
    /** 
     * ��ȡSession���� 
     * @return  SessionFactory 
     */  
    public static SessionFactory getSessionFactory(){  
        return sessionFactory;  
    }  
    /** 
     * ��ȡSession 
     * @return      Session 
     */  
    public static Session getSession(){  
        return sessionFactory.getCurrentSession();  
}
}