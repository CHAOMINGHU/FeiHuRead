<%@page import="cn.itcast.service.UserService" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@page import="com.opensymphony.xwork2.ActionContext" %>
<%@page import="org.apache.struts2.ServletActionContext" %>
<%@page import="org.springframework.context.ApplicationContext" %>

<%@ page language="java" import="cn.itcast.test.*" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>修改用户</title>
</head>
<script type="text/javascript" src="js/qukuan.js"></script>
<body>
	<form id="goForm" name="goForm"
		action="${pageContext.request.contextPath }/userAction_adm_g"
		method="post">
		<table border="1" width="60%" height="100px" align="center" 
			cellspacing="0" cellpadding="0"/>
			<caption>超级管理员，修改用户</caption>

			<tr>
				<th>ID</th>
				<th>用户名</th>
				<th>密码</th>
				<th>性别</th>
				<th>年龄</th>
				<th>余额</th>

			</tr>
	<%
	
	String xmlPath="applicationContext.xml";
	
	@SuppressWarnings("resource")
	ApplicationContext applicationContext=new ClassPathXmlApplicationContext(xmlPath);
	UserService userService=applicationContext.getBean("userService",UserService.class );
	for(int i = 0;i<userService.findAllUser().size();i++) {
		System.out.println( userService.findAllUser().get(i).getId());
		System.out.println( userService.findAllUser().get(i).getUsername());
	
	%>	
			<tr>
		
			<td style="text-align: center;"><%=userService.findAllUser().get(i).getId()%></td>
			<td style="text-align: center;"><%=userService.findAllUser().get(i).getUsername()%></td>
			<td style="text-align: center;"><%=userService.findAllUser().get(i).getPassword()%></td>
		    <td style="text-align: center;"><%=userService.findAllUser().get(i).getSex()%></td>
			<td style="text-align: center;"> <%=userService.findAllUser().get(i).getAge()%></td>
			<td style="text-align: center;"><%=userService.findAllUser().get(i).getMoney()%></td>
			
			</tr>
			<%} %>
			<tr>

				<td><input type="text" id="id" name="id" placeholder="输入账号"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
				<td><input type="text" id="username" name="username"
					placeholder="修改用户名"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>

				<td><input type="text" id="password" name="password"
					placeholder="修改密码"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>

				<td><input type="text" id="sex" name="sex"
					placeholder="修改性别"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
			
				<td><input type="text" id="age" name="age"
					placeholder="修改年龄"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
						<td><input type="text" id="money" name="money"
					placeholder="修改余额"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
			</tr>



		</table>
		<center>

			<input type="submit" value="确认" 
				style="width: 100px; height: 50px; font-size: 70%; text-align: center;">

		</center>
	</form>
</body>
</html>