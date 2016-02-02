<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.js"></script>

<script>
	//各个网站分享
	window._bd_share_config = {
		"common" : {
			"bdSnsKey" : {},
			"bdText" : "",
			"bdMini" : "2",
			"bdMiniList" : false,
			"bdPic" : "",
			"bdStyle" : "0",
			"bdSize" : "30"
		},
		"share" : {
			"bdSize" : 30
		}
	};
	with (document)
		0[(getElementsByTagName('head')[0] || body)
				.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
				+ ~(-new Date() / 36e5)];
</script>
<script type="text/javascript">
	$(function() {
		var mvdiv = $("#playdiv");
		var mv = $("#video1");
		$("#logo").load("logo.jsp");
		$("#floot").load("floot.jsp");
		mvdiv.click(function() {
			if (mv.prop("paused")) {
				mv[0].play();
				mvdiv.css("opacity", 1);
				$("#fristplay").css("display", "none");
			} else {
				$("#fristplay").css("display", "block");
				mvdiv.css("opacity", 0.9);
				mv[0].pause();
			}
		});
		$("#savecomment").click(function() {
			$.get("/myMusic/front/islogin",{},function(user){
				if(user==null){
					login();
				}
				else{
					if($("#commentcontent").val().trim()!=""){						
					$.get("/myMusic/front/saveComment",{id:$("#playmvid").val(),"comment.content":$("#commentcontent").val()},function(){
						queryCommentByMv(); 
					});
					$("#commentcontent").val("");
					}
					else{						
					alert("请输入评论");
					}
				}
			},"json");
		});
		setInterval(function() {//定时检测	
			if (!mv.prop("paused")) {
				mvdiv.css("opacity", 1);
				$("#fristplay").css("display", "none");
			} else {
				$("#fristplay").css("display", "block");
				mvdiv.css("opacity", 0.9);
			}
		}, 300);
		if ($("#playmvid").val().length > 0) {
			$.get("/myMusic/mv/mv_queryMvById", {
				id : $("#playmvid").val()
			}, function(mv) {
				$("title").html(
						"音悦台--" + mv.singer.name + " - "
								+ mv.name);
				$("#singername").html(mv.singer.name);
				$("#mvname").html(mv.name);
				$("#playmvdescribe").html(mv.describe);
				$("#video1").prop("src",
						"/myMusic/" + mv.video_url);

			}, "json");
			queryCommentByMv();
		}
	});
	function queryCommentByMv() {
		$.get("/myMusic/front/queryCommentByMv",{id:$("#playmvid").val()},function(comments){
			var comm="";
			$.each(comments, function(i,comment) {	
				comm=comm+"<span style='width: 100px;'>"+comment.user.nickname+"</span>:&nbsp;&nbsp;&nbsp;<span style='width: 80%; '>"+comment.content+"&nbsp;&nbsp;("+comment.comment_date+").</span><br><br>";		
			});
			$("#commentcontents").html(comm);
		},"json");
	}
</script>
<style type="text/css">
</style>
<title>音悦台--周杰伦 — 听妈妈的话</title>
</head>
<body style="background-color: #fefefe; padding: 0">
	<input type="hidden" id="playmvid" value="${param.id }">
	<div
		style="width: 100%; position: fixed; top: 0px; left: 0px; z-index: 2;"
		id="logo"></div>
	<div id="mvtitle"
		style="font-weight: bold; font-size: 20px; width: 75%; margin: auto; margin-top: 50px; background: #dcdcdc;">
		<span id="singername">周杰伦</span>&nbsp;>>&nbsp;<span id="mvname">听妈妈的话</span>
	</div>
	<div id="playdiv"
		style="width: 75%; margin: auto; margin-top: 0px; border-style: inset; background: #dcdcdc;">
		<img id="fristplay" src="resource/image/play.png"
			style="display: none; position: absolute; bottom: 45%; left: 45%; width: 100px; height: 100px; z-index: 2">
		<video id="video1" width="100% " 
			controls="controls">
			<source  src="/myMusic/video/mv11.mp4" type="video/mp4" />
		</video>
	</div>
	<div id="" style="width: 75%; margin: auto; background: #dcdcdc;">

		<span class="bdsharebuttonbox" style="font-size: 16px;"> <a
			href="#" class="bds_more" data-cmd="more">我要分享：</a><a href="#"
			class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a><a
			href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a><a
			href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">人人网</a><a
			href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友">QQ好友</a><a
			href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a><a
			href="#" class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网">开心网</a><a
			href="#" class="bds_taobao" data-cmd="taobao" title="分享到我的淘宝">我的淘宝</a>
		</span>
	</div>
	<div style="width: 75%; margin: auto; margin-top: 10px;">
		<div style="font-weight: bolder;">mv信息：</div>
		<div id="playmvdescribe" style="width: 100%; border-style: none; background: #fffeee;"></div>
		<br> <span style="cursor: pointer; background: #dcdcdc;">赞一下</span>:<span>15</span>
		&nbsp;&nbsp;&nbsp;<span style="cursor: pointer; background: #dcdcdc;">下载</span>:<span>35</span>
	</div>
	<div id="mvcomment" style="width: 75%; margin: auto; margin-top: 10px;">
		<span>我要评论：<br></span>
		<textarea id="commentcontent" rows="3" cols="140" style="background: #fffeee;"></textarea>
		<br>
		<input id="savecomment" type="button" value="发表评论">

		<div
			style="width: 100%; margin: auto; font-weight: bold; margin-top: 10px;">评论列表：</div>

		<div id="commentcontents"
			style="width: 100%; margin: auto;  background: #fffeee;">
			

		</div>

	</div>
	<div id="floot" style="margin-left: 0; clear: both;"></div>
</body>
</html>