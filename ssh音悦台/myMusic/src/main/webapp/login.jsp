<html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
	*{margin:0px;border:0px;padding:0px;}
	body{font:12px "宋体";}
	a{color:#000;text-decoration:none;}
	a:hover{color:#F30;text-decoration:underline;}
	input{padding:0px;margin:0px;}
	.txtbox{border:1px solid #E79F50;height:25px;line-height:27px;width:120px;}
	.bfont{font:700 20px "宋体"};
	#login{width:400px;height:100%;overflow:hidden;margin:0px auto;}
	#title{width:400px;height:25px;line-height:25px;color:#F60;font-weight:700;background-color:#FDEBD9;text-align:center;margin:0px auto;}
	#loginbox{width:185px;height:60px;margin:10px 20px;float:left;display:inline;}
	#btnlogin{float:right;margin-top: 20px;}
	#forget{width:200px;margin:0px auto;height:25px;line-height:25px;text-align:center;}
	#forget span{width:80px;display:inline;margin:0px 10px; font-size: 15px;}
</style>
<title>无标题文档</title>
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function() {
	$("#logo").load("logo.jsp");
	$("#loginbutton").click(function() {
		var password=$("#password").val().trim();
		var username=$("#username").val().trim();
		if(username==""||password==""){	
			$("#logints").html("用户名或密码不能为空！");
			return false;
		}
		else {
			$.get("/myMusic/front/login",{username:username,password:password},function(user){
				if(user==null){
					$("#logints").html("用户不存在或密码错误！");
					return false;
				}
				else{
					loginchange();
					closelogin();
				}
			},"json");
			
			return false;
		}
	});
	$('.reg').click(function(){
		closelogin();
	});
	
});
var index = parent.layer.getFrameIndex(window.name);
function closelogin() {
	parent.layer.close(index);
}
</script>
<body>
<div id="login">
<div
		style="display: none;"
		id="logo"></div>
	<div id="title">个人登录后才能下载Mv，收藏和关注你喜欢的歌手。</div>
	<div style=" height: 30px;color: red;font-size: 20px;" align="center"><span id="logints"></span></div>
    <div style="width:320px;height:80px;margin:0px auto;">
        <table id="loginbox" style="float: left;" >
            <tr>
                <td class="bfont">用户名：</td>
                <td><input class="txtbox" type="text" name="username" id="username" /></td>
            </tr>
            <tr>
                <td class="bfont">密&nbsp;&nbsp;码：</td>
                <td><input class="txtbox" type="password" name="password" id="password" /></td>
            </tr>
        </table>
        <span id="btnlogin"><input id="loginbutton" type="button" value="登陆" style="font-size: 35px;"> </span>
    </div>
    <div id="forget">
    	<span style="float:left;"><a href="#">忘记密码</a></span>
        <span style="float:right;"><a class="reg" href="#">没有注册</a></span>
    </div>
    <div style="height:25px;line-height:25px;text-align:center">马上注册，看你最喜欢的Mv。 <a class="reg" style="color:#06F;text-decoration:underline;font-weight:700" href="#">点击注册</a></div>
</div>
</body>

</html>
