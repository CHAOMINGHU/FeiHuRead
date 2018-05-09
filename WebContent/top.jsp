<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>


<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="css/homepage.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/contact.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/date.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script  type="text/javascript" src="js/easing.js"></script>

<style type="text/css">

img {
	border: 0;
}

ul, li {
	list-style-type: none;
}

a {
	color: #00007F;
	text-decoration: none;
}

a:hover {
	color: #bd0a01;
	text-decoration: underline;
}

.treebox {
	width: 200px;
	margin: 0 auto;
	background-color: #1a6cb9;
	float: left;
}

.menuq {
	overflow: hidden;
	border-color: #ddd;
	border-style: solid;
	border-width: 0 1px 1px;
}
/*第一层*/
.menuq li.level1>a {
	display: block;
	height: 45px;
	line-height: 45px;
	color: #fff;
	padding-left: 50px;
	border-bottom: 1px solid #000;
	font-size: 16px;
	position: relative;
}

.menuq li.level1 a:hover {
	text-decoration: none;
	background-color: #326ea5;
}

.menuq li.level1 a.current {
	background: #0f4679;
}

/*============修饰图标*/
.ico {
	width: 20px;
	height: 20px;
	display: block;
	position: absolute;
	left: 20px;
	top: 10px;
	background-repeat: no-repeat;
	background-image: url(image/ico1.png);
}

/*============小箭头*/
.level1 i {
	width: 20px;
	height: 10px;
	background-image: url(image/arrow.png);
	background-repeat: no-repeat;
	display: block;
	position: absolute;
	right: 20px;
	top: 20px;
}

.level1 i.down {
	background-position: 0 -10px;
}

.ico1 {
	background-position: 0 0;
}

.ico2 {
	background-position: 0 -20px;
}

.ico3 {
	background-position: 0 -40px;
}

.ico4 {
	background-position: 0 -60px;
}

.ico5 {
	background-position: 0 -80px;
}

/*第二层*/
.menuq li ul {
	overflow: hidden;
}

.menuq li ul.level2 {
	display: none;
	background: #0f4679;
}

.menuq li ul.level2 li a {
	display: block;
	height: 45px;
	line-height: 45px;
	color: #fff;
	text-indent: 60px;
	/*border-bottom: 1px solid #ddd; */
	font-size: 14px;
}
.con4{
     width: 199px;
     height: auto;
     overflow: hidden;
     margin: 0;
     color: #FFFFFF;
}
.con4 .btn{

     width: 60px;
     height: 40px;
     line-height: 40px;
     text-align: center;
    background:#00BFFF;
     display: block;
     font-size: 8px;
     border-radius: 5px;
}
.upload{
     text-align:center;
     position: relative;
     
}
.upload_pic{
     display: block;
     width: 50%;
     height: 40px;
     position: absolute;
     left: 0;
     top: 0;
     opacity: 0;
     border-radius: 5px;
}
#cvs{
	border: 1px solid #000;
	margin:20px 0 20px 50px;
}






/*导航*/



.container {
    margin:0 auto;
    width: 100%;
}

/* general styles */
.menu, .menu ul {
    list-style: none;
    padding: 0;
    margin: 0;
}
.menu {
    height: 58px;
}
.menu li {
    background: -moz-linear-gradient(#1C499A, #1C499A);
    background: -ms-linear-gradient(#1C499A, #1C499A);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #1C499A), color-stop(100%, #252525));
    background: -webkit-linear-gradient(#1C499A, #1C499A);
    background: -o-linear-gradient(#1C499A, #1C499A);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#1C499A', endColorstr='#1C499A');
    -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#1C499A', endColorstr='#1C499A')";
    background: linear-gradient(#1C499A,#1C499A);

    border-bottom: 2px solid #1C499A;
    border-top: 2px solid #1C499A;
    min-width: 160px;
}
.menu > li {
    display: block;
    float: left;
    position: relative;
}
.menu > li:first-child {
    border-radius: 5px 0 0;
}
.menu a {
    border-left: 3px solid rgba(0, 0, 0, 0);
    color: #ffffff;
    display: block;
    font-family: 'Lucida Console';
    font-size: 18px;
    line-height: 54px;
    padding: 0 25px;
    text-decoration: none;
    text-transform: uppercase;
}

/* onhover styles */
.menu li:hover {
    background-color: #ffffff;
    background: -moz-linear-gradient(#1a6cb9,#1a6cb9);
    background: -ms-linear-gradient(#1a6cb9, #1a6cb9);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #1a6cb9), color-stop(100%,#1a6cb9));
    background: -webkit-linear-gradient(#1a6cb9, #1a6cb9);
    background: -o-linear-gradient(#1a6cb9, #1a6cb9);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#1a6cb9', endColorstr='#1a6cb9');
    -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#4169E1', endColorstr='#1a6cb9')";
    background: linear-gradient(#1a6cb9, #1a6cb9);

   
}
.menu li:hover > a {
    border-radius: 5px 0 0 0;
    border-left: 3px solid #ff8000;
    color: #00ffff;
}

/* submenu styles */
.submenu {
    left: 0;
    max-height: 0;
    position: absolute;
    top: 100%;
    z-index: 0;

    -webkit-perspective: 400px;
    -moz-perspective: 400px;
    -ms-perspective: 400px;
    -o-perspective: 400px;
    perspective: 400px;
}
.submenu li {
    opacity: 0;

    -webkit-transform: rotateY(90deg);
    -moz-transform: rotateY(90deg);
    -ms-transform: rotateY(90deg);
    -o-transform: rotateY(90deg);
    transform: rotateY(90deg);

    -webkit-transition: opacity .4s, -webkit-transform .5s;
    -moz-transition: opacity .4s, -moz-transform .5s;
    -ms-transition: opacity .4s, -ms-transform .5s;
    -o-transition: opacity .4s, -o-transform .5s;
    transition: opacity .4s, transform .5s;
}
.menu .submenu li:hover a {
    border-left: 3px solid #ff8000;
    border-radius: 0;
    color: #ffffff;
    
}
.menu > li:hover .submenu, .menu > li:focus .submenu {
    max-height: 800px;
    z-index: 10;
}
.menu > li:hover .submenu li, .menu > li:focus .submenu li {
    opacity: 1;

    -webkit-transform: none;
    -moz-transform: none;
    -ms-transform: none;
    -o-transform: none;
    transform: none;
}

/* CSS3 delays for transition effects */
.menu li:hover .submenu li:nth-child(1) {
    -webkit-transition-delay: 0s;
    -moz-transition-delay: 0s;
    -ms-transition-delay: 0s;
    -o-transition-delay: 0s;
    transition-delay: 0s;
}
.menu li:hover .submenu li:nth-child(2) {
    -webkit-transition-delay: 50ms;
    -moz-transition-delay: 50ms;
    -ms-transition-delay: 50ms;
    -o-transition-delay: 50ms;
    transition-delay: 50ms;
}
.menu li:hover .submenu li:nth-child(3) {
    -webkit-transition-delay: 100ms;
    -moz-transition-delay: 100ms;
    -ms-transition-delay: 100ms;
    -o-transition-delay: 100ms;
    transition-delay: 100ms;
}
.menu li:hover .submenu li:nth-child(4) {
    -webkit-transition-delay: 150ms;
    -moz-transition-delay: 150ms;
    -ms-transition-delay: 150ms;
    -o-transition-delay: 150ms;
    transition-delay: 150ms;
}
.menu li:hover .submenu li:nth-child(5) {
    -webkit-transition-delay: 200ms;
    -moz-transition-delay: 200ms;
    -ms-transition-delay: 200ms;
    -o-transition-delay: 200ms;
    transition-delay: 200ms;
}
.menu li:hover .submenu li:nth-child(6) {
    -webkit-transition-delay: 250ms;
    -moz-transition-delay: 250ms;
    -ms-transition-delay: 250ms;
    -o-transition-delay: 250ms;
    transition-delay: 250ms;
}
.menu li:hover .submenu li:nth-child(7) {
    -webkit-transition-delay: 300ms;
    -moz-transition-delay: 300ms;
    -ms-transition-delay: 300ms;
    -o-transition-delay: 300ms;
    transition-delay: 300ms;
}
.menu li:hover .submenu li:nth-child(8) {
    -webkit-transition-delay: 350ms;
    -moz-transition-delay: 350ms;
    -ms-transition-delay: 350ms;
    -o-transition-delay: 350ms;
    transition-delay: 350ms;
}

.submenu li:nth-child(1) {
    -webkit-transition-delay: 350ms;
    -moz-transition-delay: 350ms;
    -ms-transition-delay: 350ms;
    -o-transition-delay: 350ms;
    transition-delay: 350ms;
}
.submenu li:nth-child(2) {
    -webkit-transition-delay: 300ms;
    -moz-transition-delay: 300ms;
    -ms-transition-delay: 300ms;
    -o-transition-delay: 300ms;
    transition-delay: 300ms;
}
.submenu li:nth-child(3) {
    -webkit-transition-delay: 250ms;
    -moz-transition-delay: 250ms;
    -ms-transition-delay: 250ms;
    -o-transition-delay: 250ms;
    transition-delay: 250ms;
}
.submenu li:nth-child(4) {
    -webkit-transition-delay: 200ms;
    -moz-transition-delay: 200ms;
    -ms-transition-delay: 200ms;
    -o-transition-delay: 200ms;
    transition-delay: 200ms;
}
.submenu li:nth-child(5) {
    -webkit-transition-delay: 150ms;
    -moz-transition-delay: 150ms;
    -ms-transition-delay: 150ms;
    -o-transition-delay: 150ms;
    transition-delay: 150ms;
}
.submenu li:nth-child(6) {
    -webkit-transition-delay: 100ms;
    -moz-transition-delay: 100ms;
    -ms-transition-delay: 100ms;
    -o-transition-delay: 100ms;
    transition-delay: 100ms;
}
.submenu li:nth-child(7) {
    -webkit-transition-delay: 50ms;
    -moz-transition-delay: 50ms;
    -ms-transition-delay: 50ms;
    -o-transition-delay: 50ms;
    transition-delay: 50ms;
}
.submenu li:nth-child(8) {
    -webkit-transition-delay: 0s;
    -moz-transition-delay: 0s;
    -ms-transition-delay: 0s;
    -o-transition-delay: 0s;
    transition-delay: 0s;
}
</style>
  
</head>


<body  onLoad="startclock()" >
<div align="center"style="background-color:#1C499A;color: white;font-style: italic;font-family: fantasy;text-shadow: black;font-size: 30dp"><h1 >呱呱银行管理系统</h1 ></div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#1C499A">

	
	
  <tr>
  
    <td width="289" height="190">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
	    <tr>
	     <canvas id="cvs" width="100" height="100"></canvas>
		  
		 
		
		</tr>
		
	  </table>
	  <div class="menu_now" >
		 <p>当前用户：<%=session.getAttribute("existUser4")%></p>
		</div>
	</td>
	<td>
	 <table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align:center;line-height: 800px">
    
      <tr>
       
		<td style="float: right;">
		 <div class="container">
		<ul class="menu">
			<li><a href="#">Home</a></li>
			<li><a href="#s1">首页</a>
				<ul class="submenu">
					<li><a href="#">Submenu a</a></li>
					<li><a href="#">Submenu b</a></li>
					<li><a href="#">Submenu c</a></li>
					<li><a href="#">Submenu d</a></li>
					<li><a href="#">Submenu e</a></li>
					<li><a href="#">Submenu f</a></li>
					<li><a href="#">Submenu g</a></li>
					<li><a href="#">Submenu h</a></li>
				</ul>
			</li>
			<li class="active"><a href="#s2">管理中心</a>
				<ul class="submenu">
					<li><a href="#">Submenu a</a></li>
					<li><a href="#">Submenu b</a></li>
					<li><a href="#">Submenu c</a></li>
					<li><a href="#">Submenu d</a></li>
					<li><a href="#">Submenu e</a></li>
					<li><a href="#">Submenu f</a></li>
					<li><a href="#">Submenu g</a></li>
					<li><a href="#">Submenu h</a></li>
				</ul>
			</li>
			<li><a href="#">权限管理</a>
				<ul class="submenu">
					<li><a href="#">首页</a></li>
					<li><a href="#">管理中心</a></li>
					<li><a href="#">后台数据</a></li>
					<li><a href="#">更换壁纸</a></li>
					<li><a href="#">游戏中心</a></li>
					<li><a href="#">BUG投诉</a></li>
					<li><a href="#">欢迎评论</a></li>
					<li><a href="#">联系我们</a></li>
				</ul>
			</li>
			<li><a href="#">更换壁纸</a></li>
		</ul>
	</div>
		</td>
		<td width="18"></td>
	   </tr>
	  </table>
	</td>
      </tr>
    </table>
   <table  border="0" cellspacing="0" cellpadding="0" style="background-color:	#4682B4;">
  <tr>
    <td >
    <div class="con4">
		
	</div>
		
	</td>
	
	
		

	</td>
  </tr>
</table>    


	






</body> 

</html>