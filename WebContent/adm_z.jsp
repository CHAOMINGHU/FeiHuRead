<%@page import="cn.itcast.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>增加用户</title>
</head>

<body>
	<form id="goForm" name="goForm"
		action="${pageContext.request.contextPath }/userAction_adm_z"
		method="post">
		<table border="1" width="60%" height="100px" align="center"
			cellspacing="0" cellpadding="0">
			<caption>超级管理员，请添加用户</caption>

			<tr>
				<th>ID</th>
				<th>用户名</th>
				<th>密码</th>
				<th>性别</th>
				<th>年龄</th>
				<th>权限</th>
				<th>余额</th>

			</tr>
			<tr>

				<td><input type="text" id="id" name="id" placeholder="创建账号"
					style="width: 99.5%; height: 100%;color:yellow; font-size: 70%; text-align: center;"></td>
				<td><input type="text" id="username" name="username"
					placeholder="创建用户名"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>

				<td><input type="text" id="password" name="password"
					placeholder="创建密码"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>

				<td><input type="text" id="sex" name="sex"
					placeholder="输入性别"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
			
				<td><input type="text" id="age" name="age"
					placeholder="输入年龄"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
					<td><input type="text" id="q" name="q"
					placeholder="输入权限"
					style="width: 99.5%; height: 100%; font-size: 70%; text-align: center;"></td>
						<td><input type="text" id="money" name="money"
					placeholder="输入余额"
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