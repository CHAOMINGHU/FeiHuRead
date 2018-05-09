<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>存款</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/userAction_deposit" method="post">
<table border="1" width="60%" height="100px" align="center" cellspacing="0" cellpadding="0">
<caption>安全存款，便捷生活</caption>

<tr>
<th>请输入存款账号和金额</th>

</tr>
<tr>

<td><input type="number" id="id" name="id" placeholder="请输入账号" style="width:99.5%;height:100%;font-size:70%;text-align: center; " ></td>

</tr>
<tr>

<td><input type="number" id="money" name="money" placeholder="请输入金额" style="width:99.5%;height:100%;font-size:70%;text-align: center; " ></td>

</tr>




</table>
<center>

<input type="submit"  value="确认存款" style="width:100px;height:50px;font-size:70%;text-align: center; " >

</center>
</form>
</body>
</html>