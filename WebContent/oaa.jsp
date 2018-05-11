<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>账户</title>
</head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<body>
 
<h1 style="text-align: center;" class="text-info">我的信息</h1>

<table  class="table">
 <thead>
<tr class="table-warning"> 
<th style="text-align: center;">卡号</th>
<th style="text-align: center;">用户名</th>
<th style="text-align: center;">年龄</th>
<th style="text-align: center;">性别</th>
<th style="text-align: center;">余额</th>
</tr>
</thead>
 <tbody>
<tr class="table-primary">
<td style="text-align: center;"><%=session.getAttribute("existUser0")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser1")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser2")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser3")%></td>
<td style="text-align: center;"><%=session.getAttribute("existUser5")%></td>
</tr>
</tbody>
</table>



</body>

</html>