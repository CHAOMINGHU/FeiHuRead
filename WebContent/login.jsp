
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>
 <link type="text/css" rel="stylesheet" href="css/login.css"/>
 <script type="text/javascript" src="js/login.js"></script>
</head>
<body>

<form  id="baseForm" name="baseForm"  action="${pageContext.request.contextPath }/userAction_login" method="post"   onkeydown="javascript: if (event.keyCode == 13){return check();}">
<center>
<input type="text" id="username" name="username" placeholder="用户名"/><br/>
<input type="password" id="password"name="password" placeholder="密码"/><br/>

<div style="width:150px;float:left">
<input type="button"  value="登陆" class="btn"  onclick="check();">
</div>
<div style="width:150px;float:left;clear:right">
<input type="button" value="注册" onclick="window.location.href='regist.jsp'" class="btn">
</div>
</center>

</form>

</body>
</html>