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
<link href="css/homepage.css" rel="stylesheet" type="text/css">
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

/*修饰图标*/
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

/*小箭头*/
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
	background-position: 0 -60px;
}

.ico2 {
	background-position: 0 -40px;
}

.ico3 {
	background-position: 0 -20px;
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



.user_name {
	width: 100px;
	height: 80px;
	color:#ffffff;
    padding-left:50px;
	margin: 3px 0 0 6px;
	text-align: center;
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
	  <div class="user_name" >
		 <p><%=session.getAttribute("existUser1")%></p>
		</div>
	</td>
	<td>
	 <table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align:center;line-height: 800px">
    
      <tr>
       
		<td style="float: right;">
		 <div class="container">
		<ul class="menu">
			<li><a href="#">Home</a></li>
			<li><a href="bulletin.jsp">公告</a>
			</li>
			<li class="active"><a href="www.baidu.com">管理中心</a></li>
			<li><a href="liuyan.jsp">查看留言</a></li>
			<li><a href="login.jsp">退出</a></li>
		</ul>
	</div>
		</td>
		<td width="18"></td>
	   </tr>
	  </table>
	</td>
      </tr>
    </table>
   

	<div class="treebox">
		<ul class="menuq">
			<li class="level1">
				<a href="#none"><em class="ico ico1"></em>我的主页<i class="down"></i></a>
				<ul class="level2">
					<li><a href="javascript:check1();" target="iframe_a">个人信息</a></li>
					
						<li><a href="javascript:;"><span class="btn upload">上传头像<input type="file" class="upload_pic" id="upload" /></span></a></li>
					<li><a href="javascript:check11();">系统留言</a></li>
				
					
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico2"></em>我的金融<i></i></a>
				
				<ul class="level2">
					<li><a href="javascript:check();" >我要存款</a></li>
					<li><a href="javascript:check2();" >我要转账</a></li>
					<li><a href="javascript:check3();">我要取款</a></li>
					<li><a href="javascript:;">我要挂失</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico3"></em>超级管理<i></i></a>
				<ul class="level2">
					<li><a href="javascript:check5();">增加用户</a></li>
					<li><a href="javascript:check6();">修改信息</a></li>
					<li><a href="javascript:check7();;">删除用户</a></li>
					
				    
				</ul>
			</li>
			
	</div>
	<iframe src="${pageContext.request.contextPath}/11.jsp" name="main" height="400px" width="80%"></iframe>

	<!-- 引入 jQuery -->

<div class="container"></div>

<!-- 客服部分 -->
<div style="right:-230px;" class="contactusdiyou">
	<div class="hoverbtn">
		<span>联</span><span>系</span><span>我</span><span>们</span>
		<img class="hoverimg" src="image/hoverbtnbg.gif" height="9" width="13">
	</div>
	<div class="conter">
		<div class="con1"> 
			<dl class="fn_cle">
				<dt><img src="image/tel.png" height="31" width="31"></dt>
				<dd class="f1">咨询热线：</dd>
				<dd class="f2"><span class="ph_num">182-4997-4150</span></dd>
			</dl>
		</div> 
		<div class="blank0"></div>
		<div class="qqcall"> 
			<dl class="fn_cle">
				<dt><img src="image/zxkfqq.png" height="31" width="31"></dt>
				<dd class="f1 f_s14">在线客服：</dd>
				<dd class="f2 kefuQQ">
					<span>蒙多</span>
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1306468348&amp;site=qq&amp;menu=yes"></a></br>
					
				</dd>
			</dl>
			<div class="blank0"></div>           
		</div> 
		<div class="blank0"></div>
		<div class="weixincall"> 
			<dl class="fn_cle">
				<dt><img src="image/weixin.png" height="31" width="31"></dt>
				<dd class="f1">官方微信站：</dd>
				<dd class="f3"><img src="image/weixin1.png" height="100" width="100"></dd>
			</dl>
		</div> 
		<div class="blank0"></div>
		<div class="dytimer">
			<span style="font-weight: bold;">公司官网：</span>
			<span><a href="http://www.baidu.com/">www.baidu.com</a></span>
		</div>
	</div>
</div>



<script type="text/javascript">
$(function() {
	$(".contactusdiyou").hover(function() {
		$(".hoverimg").attr("src","image/hoverbtnbg1.gif");
		$('.diyoumask').fadeIn();
		$('.contactusdiyou').animate({right:'0'},300); 
	}, function() {
		$(".hoverimg").attr("src","image/hoverbtnbg.gif");
		$('.contactusdiyou').animate({right:'-230px'},300,function(){});
		$('.diyoumask').fadeOut();
	});
});

//等待dom元素加载完毕.
$(function(){
	$(".treebox .level1>a").click(function(){
		$(this).addClass('current')   //给当前元素添加"current"样式
		.find('i').addClass('down')   //小箭头向下样式
		.parent().next().slideDown('slow','easeOutQuad')  //下一个元素显示
		.parent().siblings().children('a').removeClass('current')//父元素的兄弟元素的子元素去除"current"样式
		.find('i').removeClass('down').parent().next().slideUp('slow','easeOutQuad');//隐藏
		if(session.getAttribute("existUser4")!=5){
			alert('无权访问');
		}
		return false; //阻止默认时间
	});
	$(".treebox a").on("click",function(){
		if(session.getAttribute("existUser4")!=5){
			alert('无权访问');
		}
	});
})
//权限
function check() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "deposit.jsp"; 
		}

}
function check1() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "oaa.jsp"; 
		}

}
function check2() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "zhuanzhang.jsp"; 
		}

}
function check3() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "qukuan.jsp"; 
		}


}
function check5() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=3){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "adm_z.jsp"; 
		}


}
function check6() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=3){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "adm_g.jsp"; 
		}


}
function check7() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=3){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "adm_x.jsp"; 
		}


}
function check11() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1&&q!=3){
			alert('无权访问');
		}else{
			//window.location.href="oaa.jsp?backurl="+window.location.href; 
			window.parent.main.location.href= "submit.jsp"; 
		}


}
//获取上传按钮
var input1 = document.getElementById("upload"); 

if(typeof FileReader==='undefined'){ 
 //result.innerHTML = "抱歉，你的浏览器不支持 FileReader"; 
 input1.setAttribute('disabled','disabled'); 
}else{ 
 input1.addEventListener('change',readFile,false); 
 /*input1.addEventListener('change',function (e){
 	console.log(this.files);//上传的文件列表
 },false); */
}
function readFile(){ 
var file = this.files[0];//获取上传文件列表中第一个文件
if(!/image\/\w+/.test(file.type)){
//图片文件的type值为image/png或image/jpg
	alert("文件必须为图片！");
	return false; 
} 
// console.log(file);
var reader = new FileReader();//实例一个文件对象
reader.readAsDataURL(file);//把上传的文件转换成url
//当文件读取成功便可以调取上传的接口
reader.onload = function(e){ 
	

	var image = new Image();
	// 设置src属性 
	image.src = e.target.result;
	var max=200;
	// 绑定load事件处理器，加载完成后执行，避免同步问题
	image.onload = function(){ 
		// 获取 canvas DOM 对象 
		var canvas = document.getElementById("cvs"); 
		// 如果高度超标 宽度等比例缩放 *= 
		/*if(image.height > max) {
			image.width *= max / image.height; 
			image.height = max;
		} */
		// 获取 canvas的 2d 环境对象, 
		var ctx = canvas.getContext("2d"); 
		// canvas清屏 
		ctx.clearRect(0, 0, canvas.width, canvas.height); 
		// 重置canvas宽高
		/*canvas.width = image.width;
		canvas.height = image.height;
		if (canvas.width>max) {canvas.width = max;}*/
		// 将图像绘制到canvas上
		// ctx.drawImage(image, 0, 0, image.width, image.height);
		ctx.drawImage(image, 0, 0, 100, 100);
		// 注意，此时image没有加入到dom之中
	};  
}
};

</script>


</body> 
 
<!-- 时间 -->
        
        <form name='jsfrm' style="text-align:right;margin-top:10px">
                    <input type=text name='face' size=34 readonly value=''  style="background-color:#fffff; color:black;font-size: 22px" >
                 <p style="text-align:center;">2017毕业设计   作者：胡朝铭</p>
                  </form>

   


</html>