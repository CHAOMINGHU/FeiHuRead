<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>

</head>
<link type="text/css" rel="stylesheet" href="css/regist.css"/>
<body>
<form action="${pageContext.request.contextPath }/userAction_regist" method="post">
<center>

<input type="text" name="sex" placeholder="性别">
<input type="text" name="age" placeholder="年龄">
<input type="text" name="username" placeholder="用户名"/><br/>
<input type="password" name="password" placeholder="密码"/><br/>


<input type="submit"  value="Regist" class="btn">
<input type="button" value="Back" onclick="javascript:history.go(-1);" class="btn">
</center>
</form>
</body>
</html>