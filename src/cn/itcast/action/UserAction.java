package cn.itcast.action;

import cn.itcast.domain.Message;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.websocket.Session;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{

	private User user=new User();
	private User user2=new User();
	private Message msg=new Message();
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}

	private UserService userService;
	public void setUserService(UserService userService){
		this.userService=userService;
	}
	public String add(){
		this.userService.saveUser(user);
		return "add";
		
	}
	
	@SuppressWarnings("unused")
	public String login() {
		User existUser=userService.login(user);
		Message exitMsg=userService.findUserByIdm(existUser.getId());
		if(existUser==null) {
			//��½ʧ��
			this.addActionError("��½ʧ�ܣ��û����������!");
			return ERROR;
		} else {
			//��½�ɹ�
            //���û�����Ϣ����session��
			ServletActionContext.getRequest().getSession().setAttribute("existUser0", existUser.getId());
            ServletActionContext.getRequest().getSession().setAttribute("existUser1", existUser.getUsername());
            ServletActionContext.getRequest().getSession().setAttribute("existUser2", existUser.getAge());
            ServletActionContext.getRequest().getSession().setAttribute("existUser3", existUser.getSex());
            ServletActionContext.getRequest().getSession().setAttribute("existUser4", existUser.getQ());
            ServletActionContext.getRequest().getSession().setAttribute("existUser5", existUser.getMoney());
            ServletActionContext.getRequest().getSession().setAttribute("liuyan", exitMsg.getLiuYan());
            ServletActionContext.getRequest().getSession().setAttribute("allTower", exitMsg.getId());
            //ҳ����ת
            return "login";
		}
		
		
	}
	          
	public String regist() {
		this.userService.saveUser(user);
		return "regist";
	}
	public String deposit() {
	
	System.out.println(user.getIdz());
	user.setId(user.getId());
	user.setAge(userService.findUserById(user.getId()).getAge());
	user.setUsername(userService.findUserById(user.getId()).getUsername());
	user.setPassword(userService.findUserById(user.getId()).getPassword());
	user.setQ(userService.findUserById(user.getId()).getQ());
	user.setSex(userService.findUserById(user.getId()).getSex());
	user.setMoney(user.getMoney()+userService.findUserById(user.getId()).getMoney());
		this.userService.updateUser(user);
		return "deposit";
		
	}
	public String zhuanzhang() {
		//�ҵ��˺�
		
		System.out.println(user.getMoney());
		System.out.print(ServletActionContext.getRequest().getSession().getAttribute("existUser0"));
		int k=user.getMoney();
		user.getId();
	
		user.setAge(userService.findUserById(user.getId()).getAge());
		user.setUsername(userService.findUserById(user.getId()).getUsername());
		user.setPassword(userService.findUserById(user.getId()).getPassword());
		user.setQ(userService.findUserById(user.getId()).getQ());
		user.setSex(userService.findUserById(user.getId()).getSex());
		user.setMoney(userService.findUserById(user.getId()).getMoney()-k);
		
		this.userService.updateUser(user);	
		
		//ת���˺�
		System.out.println(user.getMoney());
		user.setId(user.getIdz());
		user.setAge(userService.findUserById(user.getId()).getAge());
		user.setUsername(userService.findUserById(user.getId()).getUsername());
		user.setPassword(userService.findUserById(user.getId()).getPassword());
		user.setQ(userService.findUserById(user.getId()).getQ()); 
		user.setSex(userService.findUserById(user.getId()).getSex());
		user.setMoney(userService.findUserById(user.getId()).getMoney()+k);
		
		this.userService.updateUser(user);
		return "zhuanzhang";
		
	}
	
	public String qukuan() {
		
		user.getId();
		
		user.setAge(userService.findUserById(user.getId()).getAge());
		user.setUsername(userService.findUserById(user.getId()).getUsername());
		user.setPassword(userService.findUserById(user.getId()).getPassword());
		user.setQ(userService.findUserById(user.getId()).getQ());
		user.setSex(userService.findUserById(user.getId()).getSex());
		if(userService.findUserById(user.getId()).getMoney()-user.getMoney()>=0)
		{
			user.setMoney(userService.findUserById(user.getId()).getMoney()-user.getMoney());
			this.userService.updateUser(user);
			return "qukuan";
		}else {
			return "error";
		}

	}
	public String adm_z(){
		user.setId(user.getId());
		user.setAge(user.getAge());
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setSex(user.getSex());
		user.setMoney(user.getMoney());
		user.setQ(user.getQ());
		this.userService.saveUser(user);
		return "adm_z";
		
	}
	public String adm_g(){
		user.getId();
		user.setAge(user.getAge());
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setSex(user.getSex());
		user.setMoney(user.getMoney());
		user.setQ(userService.findUserById(user.getId()).getQ());
		this.userService.updateUser(user);
		return "adm_g";
		
	}
	
	public String adm_x(){
		user.getId();
		
		this.userService.deleteUser(user);
		return "adm_x";
		
	}
	public String messages() {
		return "messages";
	}
	public String msgpane() {
		return "msgpane";
	}
	public String liuyan() {
		msg.setId(2);
		msg.setUserName("狂浪三刀");
		msg.setLiuYan(msg.getLiuYan());
		msg.setDataTime("1994-9-4");
		msg.setCurrentTower(18);
		msg.setAllTower(90);
		this.userService.saveUser(msg);
		return "liuyan";
	}
}
