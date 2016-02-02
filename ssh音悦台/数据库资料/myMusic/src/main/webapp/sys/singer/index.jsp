<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/myMusic/sys/Css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/myMusic/sys/Css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="/myMusic/sys/Css/style.css">
<script type="text/javascript" src="/myMusic/sys/Js/jquery.js"></script>
<script type="text/javascript" src="/myMusic/sys/Js/bootstrap.js"></script>
<script type="text/javascript" src="/myMusic/sys/Js/ckform.js"></script>
<script type="text/javascript" src="/myMusic/sys/Js/common.js"></script>
<script type="text/javascript" src="/myMusic/sys/Js/singer.js"></script>

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

#intopage {
	width: 20px;
}
</style>
</head>
<body>
	<form class="form-inline definewidth m20" action="news.do"
		method="post">
		<input type="hidden" name="v" value="queryNewsByTitle"> 歌手名称：
		<input type="text" name="singerName" id="singerName"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<input type="button" class="btn btn-primary" id="querySinger"
			value="查询"> &nbsp;&nbsp; <input type="button"
			class="btn btn-success" id="addSinger" value="新增歌手">
		&nbsp;&nbsp; <input type="button" class="btn btn-success"
			id="deleteSinger" value="删除">
			
		<input type="hidden" id="data" value="${singers.dada }">
			
	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th><input type="checkbox" name="all" id="all"></th>
				<th>歌手ID</th>
				<th>歌手姓名</th>
				<th>地区</th>
				<th>简介</th>
				<th>歌手图片</th>
				<th>操作</th>
			</tr>
		</thead>
<%-- <%-- 		<c:forEach items="${singers.dada }" var="singer"> --%> 
<!-- 			<tr> -->
<%-- 				<th><input type="checkbox" name="chosebox" id="${singer.id}"></th> --%>

<%-- 				<td>${singer.id }</td> --%>
<%-- 				<td>${singer.name }</td> --%>
<%-- 				<td>${singer.area }</td> --%>
<%-- 				<td style="width: 65%">${singer.intro }</td> --%>
<%-- 				<td style="width: 100px;"><img alt="" src="/myMusic/${singer.pic_url }" style="width: 100px;height: 100px;"></td> --%>
<%-- 				<td><a href="/myMusic/sys/singer/editSinger.jsp?id=${singer.id }">编辑</a> </td> --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
<tbody>

</tbody>
	</table>
	第
	<span id="nowpage"></span>/
	<span id="totalpage"></span>页
	<a id="backpage">上一页</a>&nbsp;&nbsp;
	<a id="nextpage">下一页</a>
	<a id="firstpage">首页</a>&nbsp;&nbsp;
	<a id="lastpage">末页</a>&nbsp;&nbsp;
	<input type="text" id="intopage">页
	<input type="button" value="跳转" id="intoPageButton">
</html>