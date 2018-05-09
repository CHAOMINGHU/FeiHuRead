package cn.itcast.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.domain.User;

public class UserLogin extends HibernateDaoSupport {

	public User login(User user) {
		  String hql="from User where username=? and password=?";
	        List<User> list=this.getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
	        if(list!=null&&list.size()>0){
	            return list.get(0);
	
	        }
	    	return null;
	}
	        
}
