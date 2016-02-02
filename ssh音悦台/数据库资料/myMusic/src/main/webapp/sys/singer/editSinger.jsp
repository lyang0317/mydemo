<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../Css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../Css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="../Css/style.css">
<script type="text/javascript" src="../Js/jquery.js"></script>
<script type="text/javascript" src="../Js/bootstrap.js"></script>
<script type="text/javascript" src="../Js/ckform.js"></script>
<script type="text/javascript" src="../Js/common.js"></script>

<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		$("#back").click(function() {
			window.location.href = "index.jsp";
		});
		alert($("#singerId").val());
		$.get("/myMusic/singer/querySingerById",{id:$("#singerId").val()},function(data){
				$("#singerName").val(data.name);
				$("#singerArea").val(data.area);
				$("#singerImg").prop("src","/myMusic/"+data.pic_url);
				$("#singerIntro").text(data.intro);
		},"json");
	});
</script>
</head>
<body>
	<form action="/myMusic/singer/upDateSinger" method="post"
		class="definewidth m20" enctype="multipart/form-data">
<input type="hidden"  id="singerId" name="singer.id" value="${param.id }" />
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">歌手姓名</td>
				<td><input type="text" name="singer.name" value="" id="singerName"/>&nbsp;&nbsp;
					<span id="isuser" style="color: red;"></span></td>
			</tr>
			
			<tr>
				<td class="tableleft">歌手地区</td>

				<td><select class="tableleft" name="singer.area" id="singerArea">
						<option value="">--请选择--</option>
						<option value="大陆">大陆</option>
						<option value="港台">港台</option>
						<option value="欧美">欧美</option>
						<option value="日韩">日韩</option>
						<option value="其他">其他</option>
				</select>
				<td />
			<tr />
			<tr>
				<td class="tableleft">歌手图片</td>
				<td><input type="file" name="upload"  id=""/>
				<img src="" id="singerImg" style="width:120px;height:80px"> </td>
			</tr>
			<tr>
				<td class="tableleft">歌手描述</td>
				<td><textarea rows="10" cols="0" name="singer.intro" id="singerIntro"></textarea>
				</td>
			</tr>
			<tr>
				<td class="tableleft"></td>
				<td><input type="submit" class="btn btn-primary" id="addSinger"
					value="确定添加"> &nbsp;&nbsp; <input type="button"
					class="btn btn-primary" id="back" value="返回列表">
					&nbsp;&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>