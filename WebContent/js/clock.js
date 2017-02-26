
	var clock=document.getElementById("clock");
	var cxt=clock.getContext("2d");
	var colr=(200+Math.floor(Math.random()*55.99));
	var colg=(200+Math.floor(Math.random()*55.99));
	var colb=(200+Math.floor(Math.random()*55.99));
	var huabuW=200;
	var huabuG=200;
	var centerX=clock.width/2
	var centerY=clock.height/2
	var fenkedu1=105;
	var fenkedu2=95;
	var shikedu1=105;
	var shikedu2=95;
	var biaopan=120;
	
	var shizhen_len=60;
	var fenzhen_len=75;
	var miaozhen_len=82;
	
	function resetcolor(){
		colr=(200+Math.floor(Math.random()*55.99));
		colg=(200+Math.floor(Math.random()*55.99));
		colb=(200+Math.floor(Math.random()*55.99));
	}
	
	function drawClock(){
	//获取时间
	var now=new Date();
	var hou=now.getHours();
	var min=now.getMinutes();
	var sec=now.getSeconds();
	var mec=now.getMilliseconds();
	
	//转换12小时进制
	hou=hou>12?hou-12:hou;
	//清空画布
	cxt.clearRect(0,0,huabuW,huabuG);
	//阴影
	cxt.fill();
	cxt.fillStyle="gray";
	cxt.beginPath();
	//cxt.arc(270,260,205,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	//表盘
	cxt.fill();
	cxt.fillStyle="white";
	cxt.beginPath();
	cxt.arc(centerX,centerY,biaopan,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	//蓝色表盘（边框）
	cxt.strokeStyle="#dddddd"
	cxt.lineWidth=10;
	cxt.beginPath();
	cxt.arc(centerX,centerY,biaopan,0,Math.PI*2,true);
	cxt.closePath();
	cxt.stroke();
	cxt.strokeStyle="#"+colr.toString(16)+colg.toString(16)+colb.toString(16);
	cxt.lineWidth=10;
	cxt.beginPath();
	cxt.arc(centerX,centerY,biaopan,0,Math.PI*2,true);
	cxt.closePath();
	cxt.stroke();
	cxt.strokeStyle="#"+colr.toString(16)+colg.toString(16)+colb.toString(16);
	cxt.lineWidth=3;
	cxt.beginPath();
	cxt.arc(centerX,centerY,biaopan-8,0,Math.PI*2,true);
	cxt.closePath();
	cxt.stroke();
	cxt.strokeStyle="#"+(colr-100).toString(16)+(colg-100).toString(16)+(colb-100).toString(16);
	cxt.lineWidth=5;
	cxt.beginPath();
	cxt.arc(centerX,centerY,biaopan+5,0,Math.PI*2,true);
	cxt.closePath();
	cxt.stroke();
	//刻度（时分）
		//时刻度
		for(var i=0;i<12;i++){
			cxt.save();
			cxt.lineWidth=5;
			cxt.strokeStyle="black";
			//设置原点
			cxt.translate(centerX,centerY);
			//设置旋转角度;
			cxt.rotate(30*i/180*Math.PI);
			cxt.beginPath();
			cxt.moveTo(0,shikedu1);
			cxt.lineTo(0,shikedu2);
			cxt.closePath();
			cxt.stroke();
			cxt.restore();
		}
		//分刻度
		for(var i=0;i<60;i++){
			if(i%5!=0){
				cxt.save();
				cxt.lineWidth=2;
				cxt.strokeStyle="black";
				//设置原点
				cxt.translate(centerX,centerY);
				//设置旋转角度;
				cxt.rotate(6*i/180*Math.PI);
				cxt.beginPath();
				cxt.moveTo(0,fenkedu1);
				cxt.lineTo(0,fenkedu2);
				cxt.closePath();
				cxt.stroke();
				cxt.restore();
			}
		}
	//指针（时分秒）
	//时针
	cxt.save();
	cxt.lineWidth=8;
	cxt.strokeStyle="black";
	cxt.beginPath();
	cxt.translate(centerX,centerY);
	cxt.rotate((hou*30+min*0.5+180)/180*Math.PI);
	cxt.moveTo(0,0);
	cxt.lineTo(0,shizhen_len);
	cxt.closePath();
	cxt.stroke()
	cxt.restore();
	//分针
	cxt.save();
	cxt.lineWidth=5;
	cxt.strokeStyle="black";
	cxt.beginPath();
	cxt.translate(centerX,centerY);
	cxt.rotate((min*6+sec*0.1+180)/180*Math.PI);
	cxt.moveTo(0,0);
	cxt.lineTo(0,fenzhen_len);
	cxt.closePath();
	cxt.stroke()
	cxt.restore();
	//秒针
	cxt.save();
	cxt.lineWidth=2;
	cxt.strokeStyle="red";
	cxt.beginPath();
	cxt.translate(centerX,centerY);
	cxt.rotate((sec*6+mec*0.006+180)/180*Math.PI);
	cxt.moveTo(0,0);
	cxt.lineTo(0,miaozhen_len);
	cxt.closePath();
	cxt.stroke();
	cxt.fillStyle="red";
	cxt.beginPath();
	cxt.arc(0,miaozhen_len+8,3,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	cxt.fillStyle="white";
	cxt.beginPath();
	cxt.arc(0,miaozhen_len+8,2,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	cxt.restore();
	//秒针装饰
	cxt.fillStyle="red";
	cxt.beginPath();
	cxt.arc(centerX,centerY,15,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	cxt.fillStyle="black";
	cxt.beginPath();
	cxt.arc(centerX,centerY,10,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	cxt.fillStyle="white";
	cxt.beginPath();
	cxt.arc(centerX,centerY,10,0,Math.PI*2,true);
	cxt.closePath();
	cxt.fill();
	
}
drawClock();
//使用setInterval(代码,周期(毫秒制))让时钟动起来
setInterval(drawClock,10);
