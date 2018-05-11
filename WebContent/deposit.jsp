<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>存款</title>
</head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<body>
<form action="${pageContext.request.contextPath }/userAction_deposit" method="post">
<table class="table table-hover">
<tr class="text-info">
<h1 class="text-info">安全存款，便捷生活</h1>
</tr>

<tr>
<th class="text-info">请输入存款账号和金额</th>

</tr>
<tr>

<td><input type="number" id="id" name="id" placeholder="请输入账号"  class="form-control"  ></td>

</tr>
<tr>

<td><input type="number" id="money" name="money" placeholder="请输入金额"  class="form-control" ></td>

</tr>




</table>
<center>

<!-- <input type="submit"  value="确认存款" style="width:100px;height:50px;font-size:70%;text-align: center; " > -->
 <button type="submit" class="btn btn-primary btn-lg btn-block">确认存款</button>
</center>
</form>
</body>
</html>