package cn.itcast.dao;

import java.util.List;

import cn.itcast.domain.Message;
import cn.itcast.domain.User;
import cn.itcast.domain.Usert;

public interface UserDao{
	//注册管理员
	public void save(User user);
	public void update(User user);
	public void delete(User user);
	public User findById(int id);
	public List<User>finAll();
	//用户
	public void save(Usert usert);
	public void update(Usert usert);
	public void delete(Usert usert);
	public Usert findByIdt(Integer id);
	public List<Usert>finAllt();
	//留言
	public void save(Message msg);
	public void update(Message msg);
	public void delete(Message msg);
	public Message findByIdm(Integer id);
	public List<Message> finAllm();

}
