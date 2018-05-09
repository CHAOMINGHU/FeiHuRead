<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>账户</title>
</head>
<body>
 
<h1 style="text-align: center;">我的信息</h1>
<center>
<table width="30%" height="100" border="1" cellspacing="0" cellpadding="0">
<tr>
<th>卡号</th>
<th>用户名</th>
<th>年龄</th>
<th>性别</th>
<th>余额</th>
</tr>
<tr>
<td style="text-align: center;"><%=session.getAttribute("existUser0")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser1")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser2")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser3")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser5")%></td>
</tr>
</table>

</center>
</body>

</html>