<%@ page contentType="text/html; charset=utf-8" errorPage=""%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Hendy's Blog'</title>
		<link href="img/title.ico" type="image/x-icon" rel="shortcut icon" /> 
		<script src="js/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/mypublic.css"/>
		<style type="text/css">
			body{background: #EDEDEF;}
			#header{height: 350px;background: white;}
			#pic_div{clear:left;height: 250px;background-image: url(img/head_pic.jpg);background-size:100%100%;}
			#content{height: 1300px;width: 1349px;}	
			#left{font-size:18px;padding: 20px;width: 720px;background: #E7E2D9;float: left;border-radius: 5px;font-family: "微软雅黑";}
			#right{font-size:18px;padding: 20px;width:380px;background: #E7E2D9;float: left;margin-left: 20px;border-radius: 5px;font-family: "微软雅黑";}
			#content_center_group{width: 1200px;height: inherit;margin: 0px auto;}
			#footer{height: 100px;clear: left;text-align: center;padding: 20px;font-size: 30px;}
			#article_h{font-size: 30px;font-family: '微软雅黑';padding-bottom: 20px;}
			#self_info{color:#777777;border-radius: 5px;padding: 10px;background: rgba(254,254,254,0.5);}
			#timeShow{margin-bottom: 30px;color:#777777;border-radius: 5px;padding: 10px;background: rgba(254,254,254,0.5);}
		</style>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#navContainer").load("mode/nav.html");
			});
		</script>
	</head>
	<body>
		<div id="header" style="width:1340px;">
			<div id="navContainer" >
				<!--导航 -->	
			</div>
			<div id="pic_div">
					<img src="img/nobug.gif" style="float:right;margin-top: 20px;margin-right: 100px;"/>
			</div>
		</div>
		<div name="spllit_line" style="height: 15px;margin: 20px;" class="split_line"></div>
		<div id="content">
			<div id="content_center_group">
				<div id="left">
					<div id="article_h" style=""><h4>个人日志</h4></div>
					<s:iterator value="articleList" id="article" status="st">
						<div class="article" id="article<s:property value='#article.id'/>">
							<p class="article_title"><s:property value="#article.title"/></p>
							<span><s:property value="#article.date"/></span>
							<div class="article_content">
								<s:property value="#article.content"/>
							</div>
							<div class="article_bottom">阅读(<s:property value="#article.comment_count"/>)|评论(<s:property value="#article.read_count"/>)|<a href="javascript:void(0)">阅读详情>></a> </div>
						</div>
					</s:iterator>
					<s:debug></s:debug>
				</div>
				<div id="right">
					<div id="timeShow"style="text-align: center;">
						<canvas id="clock" width="300" height="300" style="margin: 0px auto;" onClick=resetcolor()>
							您的浏览器不支持canvas标签!
						</canvas>
						<script src="js/clock.js" type="text/javascript" charset="utf-8"></script>
					</div>
					<div id="self_info">
						<div id="photo" style="height: 50%;background: ;text-align: center;" >
							<img src="img/touxiang.png" style="background: ;width: 200px;height: 200px;border-radius: 5px;"/>
							<p>Hendy</p>
							<p>江苏，淮安</p>
						</div>
						<div id="" style ="padding: 20px;">
							<p>今日访问 ：<span id="today_visit">26</span> </p>
							<p>历史访问 ：<span id="today_visit">1026</span> </p>
							<p>最后登录 ：<span id="today_visit">2015-11-07 22:24</span> </p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="" style="line-height: 100px;font-size: 30px;background: rgba(211,211,211,0.5);">
				@copyright:xxxx
			</div>
		</div>
	</body>
</html>
