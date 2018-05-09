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







</style>
  
</head>


<body  onLoad="startclock()" >


	<div class="treebox">
		<ul class="menuq">
			<li class="level1">
				<a href="#none"><em class="ico ico1"></em>我的主页<i class="down"></i></a>
				<ul class="level2">
					<li><a href="oaa.jsp" target=right>个人信息</a></li>
					<li><a href="">开通会员</a></li>
					<li><a href="javascript:;">联系我们</a></li>
					<li><a href="javascript:;">举报反馈</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico2"></em>我的金融<i></i></a>
				
				<ul class="level2">
					<li><a href="javascript:;">我要存款</a></li>
					<li><a href="javascript:;">我要贷款</a></li>
					<li><a href="javascript:;">我要转账</a></li>
					<li><a href="javascript:;">我要取款</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico3"></em>系统设置<i></i></a>
				<ul class="level2">
					<li><a href="javascript:;">分组权限</a></li>
					<li><a href="javascript:;">级别权限</a></li>
					<li><a href="javascript:;">角色管理</a></li>
					<li><a href="javascript:;">自定义权限</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico4"></em>导航一<i></i></a>
				<ul class="level2">
					<li><a href="javascript:;"><span class="btn upload">上传头像<input type="file" class="upload_pic" id="upload" /></span></a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
				</ul>
			</li>
                        <li class="level1">
				<a href="#none"><em class="ico ico5"></em>导航一<i></i></a>
				<ul class="level2">
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
				</ul>
			</li>
		</ul>
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
function check() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=3){
			alert('无权访问')
		}

}
function check1() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=1){
			alert('无权访问')
		}else{
			var s = "oaa.jsp";
			document.getElementById("p1").innerHTML += s
		}

}
function check2() {
	var q = '<%=session.getAttribute("existUser4")%>';
		if(q!=3){
			alert('无权访问')
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
	// console.log(this.result);//文件路径
	// console.log(e.target.result);//文件路径
	/*var data = e.target.result.split(',');
	var tp = (file.type == 'image/png')? 'png': 'jpg';
	var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
	//需要上传到服务器的在这里可以进行ajax请求
	// console.log(imgUrl);
	// 创建一个 Image 对象 
	var image = new Image();
	// 创建一个 Image 对象 
	// image.src = imgUrl;
	image.src = e.target.result;
	image.onload = function(){
		document.body.appendChild(image);
	}*/

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
		ctx.drawImage(image, 0, 0, 200, 200);
		// 注意，此时image没有加入到dom之中
	};  
}
};

</script>

</body> 
 
        
       
   


</html>