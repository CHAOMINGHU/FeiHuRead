package cn.itcast.test;

import java.util.Calendar;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.websocket.Session;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;

import cn.itcast.action.UserAction;
import cn.itcast.domain.User;
import cn.itcast.domain.Usert;
import cn.itcast.service.UserService;

public class TestApp {


	@Test
	public void demo01(){
		
		User user=new User();
		
	    user.setId(1);
	   
		user.setMoney(66);
		Usert usert=new Usert();
	    usert.setId(1);
		
		String xmlPath="applicationContext.xml";
		
		@SuppressWarnings("resource")
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext(xmlPath);
		UserService userService=applicationContext.getBean("userService",UserService.class );
		
//		Calendar cal = Calendar.getInstance();
//		cal.setTimeInMillis( System.currentTimeMillis());
//		int year=cal.get(Calendar.YEAR);
//		int month = cal.get(Calendar.MONTH) + 1;
//		int a=Integer.parseInt(year+""+month);
//		user.setDate(a);
//		userService.updateUser(user);
//		System.out.print(ServletActionContext.getRequest().getSession().getAttribute("existUser0"));
	
		
for(int i = 0;i<userService.findAllUser().size();i++) {
	System.out.println( userService.findAllUser().get(i).getId());
	System.out.println( userService.findAllUser().get(i).getUsername());
}
		
	}
}
