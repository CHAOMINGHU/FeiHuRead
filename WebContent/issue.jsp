<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>公告</title>
</head>
<script type="text/javascript" src="js/issue.js"></script>
<body>
<center>
<h1>发布公告</h1>
 <form action="<%=request.getContextPath()%>/bulletin.jsp">
   
        发布内容：<br><textarea rows="10" cols="100" id="input1" maxlength='1000' placeholder="限制字数100" onpropertychange="check()" oninput="check()"></textarea><br><br>       
        <input id="input2" type="text"/>
        
    
   
        <input type="submit" value="查看公告" onclick="check()">
    </form>
</center>
</body>
</html>