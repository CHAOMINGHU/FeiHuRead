<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>  
<head>
<meta charset="utf-8">
	<title>呱呱银行</title>
	
    	<link rel="icon" sizes="any" mask href="http://qzonestyle.gtimg.cn/qzone/v8/img/Qzone.svg">
    	<link rel="stylesheet" type="text/css" href="css/messageBoard.css">
</head>
 <body>
   <!-- <div class="header">
        This is the head nav
    </div>-->
    <div class="topInfo">
        <span class="edit">编辑</span>
    	<div class="zoneName">
    		<h2>呱呱银行留言板</h2>
    		<p>服务至上，呱呱银行，您的私人安全小助手</p>
    	</div>
    	<!--<div class="support">
    		<img src="image/support_1.png" alt="赞">
    		<span class="num">7</span>
    	</div>-->
    	<!--<div class="tips">7人赞过</div>-->
    	<!-- bottom nav -->
    	<!--<div class="top_bottom">
    	   <div class="photo">
    	   	  <img src="http://qlogo3.store.qq.com/qzone/1262283870/1262283870/100?1481718124">   
    	   </div>
    	      <div class="uploadphoto">修改头像</div>
    	   <div class="container">-->
    	   	  <ul class="section">
    			<!--<li>主页</li>
    			<li>日志</li>
    			<li>相册</li>
    			<li>留言板</li>
    			<li>说说</li>
    			<li>个人档</li>
    			<li>音乐</li>
    			<li>更多</li>-->
    		</ul>
    	   </div>
    	</div>
    </div>
    <!-- 下面实现留言板功能 -->
    <div class="mainframe">
    	<div class="title">留言板</div>
    	<div class="message">欢迎留言呱呱银行，我们会根据您宝贵的意见不断进步</div>
    	<div class="info">
    		这是您的留言模块
    	</div>
    	<div class="content" contenteditable="true" ></div>
    	<input type="button" name="submit" value="发表" class="subbtn">
    	<div class="numofmessage" >留言(0)</div>
    	<!-- 下面是留言区 -->
    	<div class="msgFrame">
    	   <!--  <div class="content_1">
    	         <img class="name" src="http://qlogo3.store.qq.com/qzone/1262283870/1262283870/100?1481718124" alt="photo">
    	         <div class="mainInfo">
    		         <div class="userId"><a href="#">zipple</a></div>
    		         <div class="conInfo">
    				       这是一条留言。
    		            </div>
    		         <div class="time">2016-12-19  23:46:11</div>
    		    </div> -->

    	    </div>
         </div>
    </div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/divhover.js"></script>
<script type="text/javascript">
$(".content").content();
   $(".zoneName").hover(function(){
   	   $(".edit").show();
   },function(){
   	   $(".edit").delay(500).hide(0);//延时执行
   })
   //鼠标响应事件
   $(".support").mouseover(function(e){
   	   var left=e.pageX;
   	   var top=e.pageY;
   	   top=top-41;//这里是因为这个元素的父元素使用了margin-top属性，使得top值偏移了41像素。
   	   top=top+25;//加上鼠标自己的高度
   	   console.log(left+"px"+"   top:"+top)
   	   $(".tips").css({"left":left+"px","top":top+"px"});
   	   // $(".tips").delay(800).show(0);加了延时执行后会使得鼠标响应事件不灵敏
   	   // $(".tips").show("slow");
   	   $(".tips").fadeIn();
   })
   /*
    *鼠标离开事件，其中leave是指离开当前元素，而out包括其子元素
   */
   // $(".support").mouseout(function(){
   // 	   $(".tips").hide();
   // })
   $(".support").mouseleave(function(){
   	   console.log("leave");
   	   // $(".tips").css("display","none");
   	   // $(".tips").hide("slow");
   	    $(".tips").fadeOut();
   })
   //修改头像
   $(".photo").hover(function(){
   	   $(".uploadphoto").delay(800).show(0);
   },function(){
   	   $(".uploadphoto").hide();
   }) 
   $(".uploadphoto").hover(function(){
   	   if ($(this).is(":visible")) {
          console.log("visible")
   	   }
   	   else
   	   $(".uploadphoto").show();
   })
   //创建一个div
    function creatDiv(className,closeName,left,top){
          var div =$('<div style="left:' + left + 'px; top:' + top + 'px;"></div>');     
          div.addClass(className);
          $('body').append(div);
          left+=360;
          var close=$('<div style="left:' + left + 'px; top:' + top + 'px;"></div>'); 
          close.addClass(closeName);
          $('body').append(close);
      }     
   $(".uploadphoto").click(function(){
   	   var className='dialog';
   	   var closeName="close";
   	   console.log("点击上传");
   	   creatDiv(className,closeName,500,200);   
   	   $(".close").bind("click",function(){
   	   	      	  $(".dialog").remove();
   	              $(".close").remove();
   	              console.log("关闭成功");
   	              $(".uploadphoto").hide();
   	   });
   })
   //下面是错误的尝试，直接绑定一个函数名称可能导致该函数直接执行！
   // $(".close").bind("click",closeDialog());
   // function closeDialog(){
   // 	  $(".dialog").remove();
   // 	  $(".close").remove();
   // 	  console.log("关闭");
   // }


   //接下来使用数据库储存留言数据
   /**
    * count:查询数据库，如果没有就=1，如果有就count=database.count
    * loginUser:查询登录人，登录人的专属留言
    */
   var count=1;
   var loginUser="李富贵";
   $(".subbtn").click(function(){
   	 var text= $(".content").text();
   	 var time=getCurrentTime();
   	 if(text==""){
   	 	alert("您还没有输入任何内容！");
   	 }
   	 else{
   	 	loadmessage(text,loginUser,time);
   	 	count++;
   	 	console.log('success!');
   	 	$(".content").text("");
   	 	$(".numofmessage").text("留言("+(count-1)+")");
   	 }
   })
   function loadmessage(message,id,time){
      	//创建content_index
      	//包含img.name + mainInfo
      	//.userId .conInfo .time
      	var contentDiv='<div class="content_1">';
      	   contentDiv+='<img class="name" src="http://qlogo3.store.qq.com/qzone/1262283870/1262283870/100?1481718124" alt="photo">';
      	   contentDiv+='<div class="mainInfo">'
      	   contentDiv+=' <div class="userId"><a href="#">';
      	   contentDiv+=id;
      	   contentDiv+='</a></div> <div class="conInfo">';
      	   contentDiv+=message;
      	   contentDiv+='</div> <div class="time">';
      	   contentDiv+=time;
      	   contentDiv+="  第"+count+"楼";
      	   contentDiv+='</div> </div> </div>'
           $(".msgFrame").prepend(contentDiv);
   }
   function getCurrentTime(){
   	   var today=new Date();
   	   var y=today.getFullYear();
   	   var mh=today.getMonth();
   	   mh++;
   	   var d=today.getDate();
   	   var h=today.getHours();
   	   var m=today.getMinutes();
   	   var s=today.getSeconds();
   	   m=checkTime(m)
       s=checkTime(s)
       var time=y+"-"+mh+"-"+d+"  "+h+":"+m+":"+s;
       return time;
   }
   function checkTime(i){
       if(i<10)
         i="0"+i
       return i
    }
class Vector2 {
	constructor(x = 0, y = 0) {
		this.x = x;
		this.y = y;
	}
	
	add(v) {
		this.x += v.x;
		this.y += v.y;
		return this;
	}
	
	multiplyScalar(s) {
		this.x *= s;
		this.y *= s;
		return this;
	}
	
	clone() {
		return new Vector2(this.x, this.y);
	}
}

class Time {
	constructor() {
		const now = Time.now();
		
		this.delta = 0;
		this.elapsed = 0;
		this.start = now;
		this.previous = now;
	}
	
	update() {
		const now = Time.now();
		
		this.delta = now - this.previous;
		this.elapsed = now - this.start;
		this.previous = now;
	}
	
	static now() {
		return Date.now() / 1000;
	}
}

class Particle {
	constructor(position, velocity = new Vector2, color = 'white', radius = 1, lifetime = 1, mass = 1) {
		this.position = position;
		this.velocity = velocity;
		this.color = color;
		this.radius = radius;
		this.lifetime = lifetime;
		this.mass = mass;
		
		this.isInCanvas = true;
		this.createdOn = Time.now();
	}
	
	update(time) {
		if (!this.getRemainingLifetime()) {
			return;
		}
		
		this.velocity.add(Particle.GRAVITATION.clone().multiplyScalar(this.mass));
		this.position.add(this.velocity.clone().multiplyScalar(time.delta));
	}
	
	render(canvas, context) {
		const remainingLifetime = this.getRemainingLifetime();
		
		if (!remainingLifetime) return;
		
		const radius = this.radius * remainingLifetime;
		
		context.globalAlpha = remainingLifetime;
		context.globalCompositeOperation = 'lighter';
		context.fillStyle = this.color;
		
		context.beginPath();
		context.arc(this.position.x, this.position.y, radius, 0, Math.PI * 2);
		context.fill();
	}
	
	getRemainingLifetime() {
		const elapsedLifetime = Time.now() - this.createdOn;
		return Math.max(0, this.lifetime - elapsedLifetime) / this.lifetime;
	}
}

Particle.GRAVITATION = new Vector2(0, 9.81);

class Trail extends Particle {
	constructor(childFactory, position, velocity = new Vector2, lifetime = 1, mass = 1) {
		super(position, velocity);
		
		this.childFactory = childFactory;
		this.children = [];
		this.lifetime = lifetime;
		this.mass = mass;
		
		this.isAlive = true;
	}
	
	update(time) {
		super.update(time);
		
		// Add a new child on every frame
		if (this.isAlive && this.getRemainingLifetime()) {
			this.children.push(this.childFactory(this));
		}
		
		// Remove particles that are dead
		this.children = this.children.filter(function(child) {
			if (child instanceof Trail) {
				return child.isAlive;
			}
			
			return child.getRemainingLifetime();
		});
		
		// Kill trail if all particles fade away
		if (!this.children.length) {
			this.isAlive = false;
		}
		
		// Update particles
		this.children.forEach(function(child) {
			child.update(time);
		});
	}
	
	render(canvas, context) {
		// Render all children
		this.children.forEach(function(child) {
			child.render(canvas, context);
		});
	}
}

class Rocket extends Trail {
	constructor(childFactory, explosionFactory, position, velocity = new Vector2) {
		super(childFactory, position, velocity);
		
		this.explosionFactory = explosionFactory;
		this.lifetime = 10;
	}
	
	update(time) {
		if (this.getRemainingLifetime() && this.velocity.y > 0) {
			this.explosionFactory(this);
			this.lifetime = 0;
		}
		
		super.update(time);
	}
}

const canvas = document.createElement('canvas');
const context = canvas.getContext('2d');
const time = new Time;
let rockets = [];

const getTrustParticleFactory = function(baseHue) {
	function getColor() {
		const hue = Math.floor(Math.random() * 15 + 30);
		return `hsl(${hue}, 100%, 75%`;
	}
	
	return function(parent) {
		const position = this.position.clone();
		const velocity = this.velocity.clone().multiplyScalar(-.1);
		velocity.x += (Math.random() - .5) * 8;
		const color = getColor();
		const radius = 1 + Math.random();
		const lifetime = .5 + Math.random() * .5;
		const mass = .01;
		
		return new Particle(position, velocity, color, radius, lifetime, mass);
	};
};

const getExplosionFactory = function(baseHue) {
	function getColor() {
		const hue = Math.floor(baseHue + Math.random() * 15) % 360;
		const lightness = Math.floor(Math.pow(Math.random(), 2) * 50 + 50);
		return `hsl(${hue}, 100%, ${lightness}%`;
	}
	
	function getChildFactory() {
		return function(parent) {
			const direction = Math.random() * Math.PI * 2;
			const force = 8;
			const velocity = new Vector2(Math.cos(direction) * force, Math.sin(direction) * force);
			const color = getColor();
			const radius = 1 + Math.random();
			const lifetime = 1;
			const mass = .1;

			return new Particle(parent.position.clone(), velocity, color, radius, lifetime, mass);
		};
	}
	
	function getTrail(position) {
		const direction = Math.random() * Math.PI * 2;
		const force = Math.random() * 128;
		const velocity = new Vector2(Math.cos(direction) * force, Math.sin(direction) * force);
		const lifetime = .5 + Math.random();
		const mass = .075;

		return new Trail(getChildFactory(), position, velocity, lifetime, mass);
	}
	
	return function(parent) {
		let trails = 32;
		while (trails--) {
			parent.children.push(getTrail(parent.position.clone()));
		}
	};
};

const addRocket = function() {
	const trustParticleFactory = getTrustParticleFactory();
	const explosionFactory = getExplosionFactory(Math.random() * 360);
	
	const position = new Vector2(Math.random() * canvas.width, canvas.height);
	const thrust = window.innerHeight * .75;
	const angle = Math.PI / -2 + (Math.random() - .5) * Math.PI / 8;
	const velocity = new Vector2(Math.cos(angle) * thrust, Math.sin(angle) * thrust);
	const lifetime = 3;
	
	rockets.push(new Rocket(trustParticleFactory, explosionFactory, position, velocity, lifetime));
	
	rockets = rockets.filter(function(rocket) {
		return rocket.isAlive;
	});
};

const render = function() {
	requestAnimationFrame(render);
	
	time.update();
	context.clearRect(0, 0, canvas.width, canvas.height);
	
	rockets.forEach(function(rocket) {
		rocket.update(time);
		rocket.render(canvas, context);
	});
};

const resize = function() {
	canvas.height = window.innerHeight;
	canvas.width = window.innerWidth;
};

canvas.onclick = addRocket;
document.body.append(canvas);


window.onresize = resize;
resize();
canvas.id='yanhua';

setInterval(addRocket, 1000);
render();
</script>
  
   <%--  <form  action="${pageContext.request.contextPath }/userAction_msgpane" method="post">
    	姓名：<br><input type="text" name="name"><br>
    	标题：<br><input type="text" name="title"><br>
    	<center>
    	留言内容：<br><textarea rows="15" cols="60" name="message" ></textarea><br><br>   	
    	<input type="submit" value="提交信息"><br>
    </form>
    <form 
    action="${pageContext.request.contextPath }/userAction_messages" method="post"
    >
    	<input type="submit" value="查看留言板">
    </form>
    </center> --%>

</html>
