<%@page import="cn.itcast.domain.User"%>
<%@page import="cn.itcast.dao.UserDao"%>
<%@page import="cn.itcast.service.UserService" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@page import="com.opensymphony.xwork2.ActionContext" %>
<%@page import="org.apache.struts2.ServletActionContext" %>
<%@page import="org.springframework.context.ApplicationContext" %>
<%@ page language="java"  contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>删除用户</title>
</head>
<script type="text/javascript" src="js/adm_x.js"></script>

<body>
<form  id="goForm" name="goForm" action="${pageContext.request.contextPath }/userAction_adm_x" method="post">
<table border="1" width="60%" height="100px" align="center" cellspacing="0" cellpadding="0">
<caption>超级管理员，便捷管理业务</caption>

<tr>
<th>请输入ID账号</th>

</tr>

<tr>

<td><input type="text" id="id" name="id" value="" placeholder="账号" style="width:99.5%;height:100%;font-size:70%;text-align: center; " ></td>

</tr>
<tr>


</tr>




</table>
<center>

<input type="submit"  value="确认删除" style="width:100px;height:50px;font-size:70%;text-align: center; " >

</center>
</form>
</body>
</html>