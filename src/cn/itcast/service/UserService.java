package cn.itcast.service;

import java.util.List;

import cn.itcast.domain.Message;
import cn.itcast.domain.User;
import cn.itcast.domain.Usert;

public interface UserService {
public void saveUser(User user);
public void updateUser(User user);
public void deleteUser(User user);
public User findUserById(Integer id);
public List<User>findAllUser(); 
public User login(User user);

public void saveUser(Usert usert);
public void updateUser(Usert usert);
public void deleteUser(Usert usert);
public Usert findUserByIdt(Integer id);
public List<Usert>findAllUsert(); 

public void saveUser(Message msg);
public void updateUser(Message msg);
public void deleteUser(Message msg);
public Message findUserByIdm(Integer id);
public List<Message>findAllUserm(); 

}
