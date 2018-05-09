package cn.itcast.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.Message;
import cn.itcast.domain.User;
import cn.itcast.domain.Usert;

public class UserDaoImpl  implements UserDao {

	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate=hibernateTemplate;
		
	}
	public void save(User user) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(user);
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(user);
	}

	public void delete(User user) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(user);
	}

	public User findById(int id) {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.get(User.class, id);
	}

	public List<User> finAll() {
		// TODO Auto-generated method stub
		return (List<User>) this.hibernateTemplate.find("from User");
	}
	public void save(Usert usert) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(usert);
	}
	public void update(Usert usert) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(usert);
	}
	public void delete(Usert usert) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(usert);
	}
	public Usert findByIdt(Integer id) {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.get(Usert.class, id);
	}
	public List<Usert> finAllt() {
		// TODO Auto-generated method stub
		return (List<Usert>) this.hibernateTemplate.find("from Usert");
	}
	@Override
	public void save(Message msg) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(msg);
	}
	@Override
	public void update(Message msg) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(msg);
	}
	@Override
	public void delete(Message msg) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(msg);
	}
	@Override
	public Message findByIdm(Integer id) {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.get(Message.class, id);
	}
	@Override
	public List<Message> finAllm() {
		// TODO Auto-generated method stub
		return (List<Message>) this.hibernateTemplate.find("from Message");
	}
	

}
