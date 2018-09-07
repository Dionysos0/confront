var window_width = 400;
var window_height = 320;
var radius = 6;
var margin_top = 5;
var margin_left = 5;
var hours = 0;
var minutes = 0;
var seconds = 0;
var flag = 0;
window.onload = function(){
	var canvas = document.getElementById("watch");
	var context = canvas.getContext("2d");

	/*页面载入时先获取下当前时间，否则刚进入页面时小时、分钟和秒数初始值都是零*/
	var now = new Date();
	hours = now.getHours();
	minutes = now.getMinutes();
	seconds = now.getSeconds();

	window_width = document.body.clientWidth || document.documentElement.clientWidth;
	window_height = document.body.clientHeight || document.documentElement.clientHeight;
	margin_top = window_height*0.1;
	margin_left = window_width*0.05;
	canvas.width = window_width*0.7;
	canvas.height = window_height*0.20;

	var timer = setInterval(function(){
		if(!document.hidden){
			update();
			render(context);

		}
	},50);

};

/*doughnut*/

/*获取当前时间*/
function currentTime(){
	var curTime = new Date();
	hours = curTime.getHours();
	minutes = curTime.getMinutes();
	seconds = curTime.getSeconds();
	return [hours,minutes,seconds];
}
/*负责数据的改变*/
function update(){
	var beforeHours = hours;
	var beforeMinutes = minutes;
	var beforeSeconds = seconds;

	var nextTime = currentTime();
	var nextHours = currentTime()[0];
	var nextMinutes = currentTime()[1];
	var nextSeconds = currentTime()[2];
}
/*渲染出数字*/
function render(cxt){
	cxt.clearRect(0,0,window_width,window_height);
	renderDigit(0,0,parseInt(hours/10),cxt);
	renderDigit(15*(radius+1),0,parseInt(hours%10),cxt);
	renderDigit(30*(radius+1),0,10,cxt);
	renderDigit(39*(radius+1),0,parseInt(minutes/10),cxt);
	renderDigit(54*(radius+1),0,parseInt(minutes%10),cxt);
	renderDigit(69*(radius+1),0,10,cxt);
	renderDigit(78*(radius+1),0,parseInt(seconds/10),cxt);
	renderDigit(93*(radius+1),0,parseInt(seconds%10),cxt);

}

/*改变生成小球的位置*/
function renderDigit(x,y,num,cxt){

	cxt.fillStyle = "#303";

	for(var i=0;i<digit[num].length;i++){
		for(var j=0;j<digit[num][i].length;j++){
			if(digit[num][i][j] == 1){

				cxt.beginPath();
				cxt.arc(margin_left+x+(2*j+1)*(radius+1),margin_top+y+(2*i+1)*(radius+1),radius,0,Math.PI*2,false);
				cxt.closePath();
				cxt.fill();
			}
		}
	}
}