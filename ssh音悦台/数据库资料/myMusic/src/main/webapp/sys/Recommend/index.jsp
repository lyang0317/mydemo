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
var dd=new Array();
	$(function() {
		queryRecommend(1,"");
		$("#addRecommend").click(function() {
			window.location.href = "/myMusic/sys/Recommend/addRecommend.jsp";
		});
		$("#queryRecommend").click(function() {
			queryRecommend(1,$("#recommendperiods").val());
		});
		$("#nextpage").click(function() {
			var page =$("#pageing").html();
			page=page-1+2;
			queryRecommend(page,$("#recommendperiods").val());
			$("#pageing").html(page);
		});
		$("#delete").click(function() {
			 $(dd).each(function(i){
				 if($("#"+dd[i]).prop("checked")){
					 $.get("/myMusic/recommend/deleteRecommend",{id:dd[i]});
				 }
				});
			 queryRecommend(1,"");
			 $("#pageing").html(1);

		});
		$("#backpage").click(function() {
			var page =$("#pageing").html();
			if(page<=1){
				return false;
			}
			page=page-1;
			queryRecommend(page,$("#recommendperiods").val());
			$("#pageing").html(page);
		});
		//全选，反选
		  $("#all").click( function () {
			  //prop:通过属性取值，或者赋值
			  if($("#all").prop("checked")){
				  
				  $("[class = tt]:checkbox").prop("checked", true);
				  
			  }else{
				  $("[class = tt]:checkbox").prop("checked", false);

			  }
			  $(dd).each(function(i){
				  $("#"+dd[i]).click( function () {
					  if(($("#all").prop("checked"))&&!($("#"+dd[i]).prop("checked"))){
						  $("#all").prop("checked", false);
					  }
				  });

				});
	      });
	});
	function queryRecommend(page,recommendperiods) {
		if(page<1){
		return false;
		}else{
			$.get("/myMusic/recommend/queryRecommendByPeriods",{page:page,recommendperiods:recommendperiods},function(recommends){
				var content="";
				if(recommends.length<1){
					$("#pageing").html($("#pageing").html()-1);
					return false;
				}
				$.each(recommends, function(i,recommend) {
					dd[i]=recommend.id;
					content +="<tr><td><input type=\"checkbox\" class='tt' id="+recommend.id+"></td>"+
					"<td>"+recommend.periods+"</td>"+
					"<td>"+recommend.mv.name+"</td>"+
					"<td>"+recommend.mv.singer.name+"</td>"+
					"<td>"+recommend.upload_date+"</td></tr>";
				});
// 				alert(recommends);
				$("#trcf").html(recommends.length);
				$("tbody").html(content);
			},"json");
			 $("#all").prop("checked", false);
		}
		
	}
</script>
</head>
<body>
	<form class="form-inline definewidth m20" action="news.do"
		method="post">
		 推荐期数：
		<input type="text" name="recommendperiods" id="recommendperiods"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<input type="button" class="btn btn-primary" id="queryRecommend"
			value="查询">&nbsp;&nbsp; <input type="button"
			class="btn btn-success" id="addRecommend" value="新增推荐"> <input
			type="button" class="btn btn-primary" value="删除" id="delete">

	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th><input type="checkbox" name="delete" id="all"> 全选/反选</th>
				<th>推荐期数</th>
				<th>Mv名称</th>
				<th>相关歌手</th>
				<th>推荐日期</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<div class="inline pull-right page">
		<span id="trcf"></span> 条记录&nbsp;&nbsp; 第<span id="pageing">1</span><span
			id="pages"></span> 页 &nbsp;&nbsp;<a id="firstpage">首页</a>
		&nbsp;&nbsp;<a href="#" id="backpage">上一页</a> &nbsp;&nbsp;<a href="#"
			id="nextpage">下一页</a>


	</div>


</body>
</html>