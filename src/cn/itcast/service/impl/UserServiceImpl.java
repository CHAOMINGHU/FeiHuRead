package cn.itcast.service.impl;

import java.util.List;

import cn.itcast.dao.UserDao;
import cn.itcast.dao.UserLogin;
import cn.itcast.dao.UserUpdate;
import cn.itcast.domain.Message;
import cn.itcast.domain.User;
import cn.itcast.domain.Usert;
import cn.itcast.service.UserService;

public class UserServiceImpl implements UserService{

	private UserDao userDao;
	private UserLogin userLogin;
	private UserUpdate userUpdate;
	public void setUserLogin(UserLogin userLogin) {
		this.userLogin=userLogin;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao=userDao;
	}
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.save(user);
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
		this.userDao.update(user);
	}

	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.delete(user);
	}

	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return this.userDao.findById(id);
	}

	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return this.userDao.finAll();
	}
	public User login(User user) {
		// TODO Auto-generated method stub
		return userLogin.login(user);
	}
	public void saveUser(Usert usert) {
		// TODO Auto-generated method stub
		this.userDao.save(usert);
	}
	public void updateUser(Usert usert) {
		// TODO Auto-generated method stub
		
		this.userDao.update(usert);
	}
	public void deleteUser(Usert usert) {
		// TODO Auto-generated method stub
		this.userDao.delete(usert);
	}
	public Usert findUserByIdt(Integer id) {
		// TODO Auto-generated method stub
		return this.userDao.findByIdt(id);
	}
	public List<Usert> findAllUsert() {
		// TODO Auto-generated method stub
		return this.userDao.finAllt();
	}
	@Override
	public void saveUser(Message msg) {
		// TODO Auto-generated method stub
		this.userDao.save(msg);
	}
	@Override
	public void updateUser(Message msg) {
		// TODO Auto-generated method stub
		this.userDao.update(msg);
	}
	@Override
	public void deleteUser(Message msg) {
		// TODO Auto-generated method stub
		this.userDao.delete(msg);
	}
	@Override
	public Message findUserByIdm(Integer id) {
		// TODO Auto-generated method stub
		return this.userDao.findByIdm(id);
	}
	@Override
	public List<Message> findAllUserm() {
		// TODO Auto-generated method stub
		return this.userDao.finAllm();
	}
	
	


}
