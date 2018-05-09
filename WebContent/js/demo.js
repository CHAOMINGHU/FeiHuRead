/**
 * 
 */
var i=0;
var timer;
$(function(){
	$("#igs").hover(function(){
		$(".btn").show()
	});
$(".ig").eq(0).show().siblings().hide();



$(".tab").hover(function(){
	i=$(this).index();
	Show();
	clearInterval(timer);//清除轮播
},function(){
	ShowTime();
});

$(".btn1").click(function(){
	clearInterval(timer);
	if(i==0){
		i=4;
	}
	i--;
	Show();
	ShowTime();
});


});
function Show(){
//	$(".ig").eq(i).show().siblings().hide();
	$(".ig").eq(i).fadeIn(300).siblings().fadeOut(300);
	$(".tab").eq(i).addClass("bg").siblings().removeClass("bg");
	$(".btn2").click(function(){
		clearInterval(timer);
		if(i==4){
			i=0;
		}
		i++;
		Show();
		ShowTime();
	});
}

function ShowTime(){
	timer=setInterval(function() {
		ShowTime();
	}, 3000);
	i++;
	if(i==4)
		{
		i=0;
		}
    Show();
}

