<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">
	
</script>
<style type="text/css">
a {
 background-color: white;
}
a:hover
{ 
cursor:pointer;
background-color:green;
}
span:hover {
	cursor:pointer;
}
</style>
<title>音悦台</title>
<body style="background-color: white; padding: 0">
	<div
		style="width: 100%; position: fixed; top: 0px; left: 0px; z-index: 2;"
		id="logo"></div>
	<div id="container" style="width: 100%; margin-top: 50px;">
		<div id="comment"
			style="width: 101.2%; height: 500px; background: #dcdcdc; margin-left: -0.6%;">
			<img id="commentmvimg"  alt="" src="resource/image/ww.jpg"
				style="width: 100%; height: 500px;">
				 <img id="commentmvback" class="commentmvpage" alt=""
				src="resource/image/play.png"
				style="width: 50px; height: 50px; position: absolute; top: 250px; left: 5%; cursor: pointer;">
			<img id="commentmvnext" class="commentmvpage" alt="" src="resource/image/play.png"
				style="width: 50px; height: 50px; position: absolute; top: 250px; right: 5%; cursor: pointer;">
			<div style="position: absolute; top: 300px; left: 10%; width: 50%;">
				<span id="commentmvtitle"
					style="font-size: 35px; color: white ; cursor: pointer;font-weight: bold;">周杰伦：听爸爸的话</span>
				<br> <span id="commentmvdescribe"
					style="font-size: 20px; color: white ; cursor: pointer;">1989大赢家
					Taylor Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
					Space》现场神还原MV布景 太壕太任性！凭此单
					Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人</span>
			</div>

		</div>
		<div style="height: 10px;"></div>
		<div id="fristplay"
			style="width: 100%; height: 350px; background: white;">

			<div style="width: 85%; margin: auto;">
				<span style="color: green; font-size: 30px; font-weight: bold;">MV首播</span>
				<span style="float: right;"> <a class="aa" id="dd">全部</a> <a>内地</a> <a>港台</a> <a>欧美</a>
					<a>韩国</a> <a>日本</a>
				</span>
			</div>
			<div style="width: 85%; margin: auto;">
				<div style="float: left; width: 36%; cursor: pointer;"
					class="fristplaymv" id="fristplaydiv0">
					<div style="position: relative; margin: 2px;">

						<div id="fristplaysinger0"
							style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
						<div id="fristplaymvname0"
							style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
						<img id="fristplay0" src="resource/image/play.png"
							style="display: none; position: absolute; bottom: 125px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl0" alt="" src="resource/image/ww.jpg"
							style="width: 100%; height: 300px;">
					</div>
				</div>
				<div style="float: right; width: 60%; right: 0px;">
					<span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv1"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts1"> 点击:<span id="fristplayheat1">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment1">32</span><br> 描述:<span
							id="fristplaydescribe1">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger1"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname1"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay1" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl1" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv2"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts2"> 点击:<span id="fristplayheat2">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment2">32</span><br> 描述:<span
							id="fristplaydescribe2">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger2"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname2"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay2" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl2" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv3"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts3"> 点击:<span id="fristplayheat3">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment3">32</span><br> 描述:<span
							id="fristplaydescribe3">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger3"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname3"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay3" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl3" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span> <br> <span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv4"> <span
						style="width: 97%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts4"> 点击:<span id="fristplayheat4">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment4">32</span><br> 描述:<span
							id="fristplaydescribe4">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger4"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname4"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay4" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl4" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv5"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts5"> 点击:<span id="fristplayheat5">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment5">32</span><br> 描述:<span
							id="fristplaydescribe5">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger5"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname5"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay5" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl5" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="fristplaymv" id="fristplaydiv6"> <span
						style="width: 100%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="fristplayts6"> 点击:<span id="fristplayheat6">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="fristplaycomment6">32</span><br> 描述:<span
							id="fristplaydescribe6">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="fristplaysinger6"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="fristplaymvname6"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="fristplay6" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="fristplayimgurl6" alt="" src="resource/image/ww.jpg"
						style="width: 32%; height: 150px;">
					</span>
				</div>
			</div>
		</div>
		<div style="height: 10px; clear: both;"></div>
		<div id="heat"
			style="width: 100%; background: white; height: 350px;">
			<div style="width: 85%; margin: auto;">
				<span style="color: green; font-size: 30px; font-weight: bold;">正在流行</span>
				<span style="float: right;"> <a>全部</a> <a>内地</a> <a>港台</a> <a>欧美</a>
					<a>韩国</a> <a>日本</a>
				</span>
			</div>
			<div style="width: 85%; margin: auto;">
				<div style="float: left; width: 58%; background: #dcdcdc;">
					<div style="float: left; width: 62%; cursor: pointer;"
						class="heatmv" id="heatdiv0">
						<div style="position: relative; margin: 2px;">

							<div id="heatsinger0"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="heatmvname0"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="heat0" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 125px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="heatimgurl0" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 300px;">
						</div>
					</div>
					<span style="float: right; width: 35%"> <span id="heatmvtitle"
						style="font-size: 25px; font-weight: bold; cursor: pointer;">Taylor
							Swift出席2014 American Music</span> <br> <span id="heatdescribe0" >Taylor
							Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
							Space》现场神还原MV布景 太壕太任性！凭此单
							Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人</span>
					</span>

				</div>
				<div style="float: right; width: 40%; right: 0px;">
					<span style="position: relative; cursor: pointer;"
						class="heatmv" id="heatdiv1"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="heatts1"> 点击:<span id="heatheat1">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="heatcomment1">32</span><br> 描述:<span
							id="heatdescribe1">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="heatsinger1"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="heatmvname1"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="heat1" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="heatimgurl1" alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="heatmv" id="heatdiv2"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="heatts2"> 点击:<span id="heatheat2">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="heatcomment2">32</span><br> 描述:<span
							id="heatdescribe2">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="heatsinger2"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="heatmvname2"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="heat2" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="heatimgurl2" alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;">
					</span> <br> <span style="position: relative; cursor: pointer;"
						class="heatmv" id="heatdiv3"> <span
						style="width: 96.5%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="heatts3"> 点击:<span id="heatheat3">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="heatcomment3">32</span><br> 描述:<span
							id="heatdescribe3">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="heatsinger3"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="heatmvname3"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="heat3" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="heatimgurl3" alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;">
					</span> <span style="position: relative; cursor: pointer;"
						class="heatmv" id="heatdiv4"> <span
						style="width: 100%; background: #dcdcdc; position: absolute; top: 10px; color: black; left: 0px; z-index: 2; display: none;"
						id="heatts4"> 点击:<span id="heatheat4">100</span>&nbsp;&nbsp;&nbsp;评论:<span
							id="heatcomment4">32</span><br> 描述:<span
							id="heatdescribe4">Taylor Swift出席2014 American Music
								Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank Space》现场神还原MV布景 太壕太任性！凭此单 </span>
					</span> <span id="heatsinger4"
						style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold; cursor: pointer;">周杰伦</span>
						<span id="heatmvname4"
						style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold; cursor: pointer;">听爸爸的话1</span>
						<img id="heat4" src="resource/image/play.png"
						style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
						<img id="heatimgurl4" alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;">
					</span>
				</div>
			</div>

		</div>

		<div style="height: 10px; clear: both;"></div>
		<div id="message"
			style="width: 100%; background: white; height: 340px;">
			<div style="width: 85%; margin: auto;">
				<span style="color: green; font-size: 30px; font-weight: bold;">音乐资讯</span>
			</div>
			<div style="width: 85%; margin: auto;">
				<div style="float: left; width: 58%; background: #dcdcdc;">
					<div style="width: 63%; float: left;">
						<img alt="" src="resource/image/ww.jpg"
							style="width: 100%; height: 300px;">
					</div>
					<div style="float: right; width: 35%">
						<span style="font-size: 25px; font-weight: bold;">Taylor
							Swift出席2014 American Music</span> <br> <span style="">Taylor
							Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
							Space》现场神还原MV布景 太壕太任性！凭此单
							Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人</span>
					</div>

				</div>
				<div style="float: right; width: 40%; right: 0px;">
					<img alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;"> <img alt=""
						src="resource/image/ww.jpg" style="width: 48%; height: 150px;">
					<img alt="" src="resource/image/ww.jpg"
						style="width: 48%; height: 150px;"> <img alt=""
						src="resource/image/ww.jpg" style="width: 48%; height: 150px;">
				</div>
			</div>

			<div style="height: 10px; clear: both;"></div>
			<div id="singer"
				style="width: 100%; background: white; height: 250px;">
				<div style="width: 85%; margin: auto;">
					<span style="color: green; font-size: 30px; font-weight: bold;">音乐人</span>
					<span style="float: right;"> <a>全部</a> <a>内地</a> <a>港台</a> <a>欧美</a>
						<a>韩国</a> <a>日本</a>
					</span>
				</div>
				<div style="width: 85%; margin: auto;">
					<span style="position: relative;" class="singer" id="singer0">
					<span id="singerdescribe0" style="cursor: pointer; height: 172px; width: 97%;position: absolute; bottom: 30px;background: #dcdcdc;display: none;">
					Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
						Space》现场神还原MV布景 太壕太任性！凭此单
						Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人
					</span>
					 <span
						style="height: 30px; position: absolute; bottom: 0px; color: white; font-weight: bold; width: 97%; background: black; opacity: 0.5;">
							<span id="singername0" style="cursor: pointer;">周杰伦</span> 
							<img id="singercomment0" title="推荐"
							alt="推荐" src="#"
							style="position: absolute; right: 0px; width: 30px; height: 30px; cursor: pointer;">
					</span> <img id="singerimgurl0" alt="" src="resource/image/ww.jpg"
						style="width: 20%; height: 200px;">
					</span>
					<span style="position: relative; " class="singer" id="singer1">
					<span id="singerdescribe1" style="cursor: pointer; height: 172px; width: 97%;position: absolute; bottom: 30px;background: #dcdcdc;display: none;left: 0px;">
					Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
						Space》现场神还原MV布景 太壕太任性！凭此单
						Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人
					</span>
					 <span
						style="height: 30px; position: absolute; bottom: 0px; color: white; font-weight: bold; width: 97%; background: black; opacity: 0.5;">
							<span id="singername1" style="cursor: pointer;">周杰伦</span> 
							<img id="singercomment1" title="推荐"
							alt="推荐" src="#"
							style="position: absolute; right: 0px; width: 30px; height: 30px; cursor: pointer;">
					</span> <img id="singerimgurl1" alt="" src="resource/image/ww.jpg"
						style="width: 19%; height: 200px;">
					</span>
					<span style="position: relative; " class="singer" id="singer2">
					<span id="singerdescribe2" style="cursor: pointer; height: 172px; width: 97%;position: absolute; bottom: 30px;background: #dcdcdc;display: none;left: 0px;">
					Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
						Space》现场神还原MV布景 太壕太任性！凭此单
						Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人
					</span>
					 <span
						style="height: 30px; position: absolute; bottom: 0px; color: white; font-weight: bold; width: 97%; background: black; opacity: 0.5;">
							<span id="singername2" style="cursor: pointer;">周杰伦</span> 
							<img id="singercomment2" title="推荐"
							alt="推荐" src="#"
							style="position: absolute; right: 0px; width: 30px; height: 30px; cursor: pointer;">
					</span> <img id="singerimgurl2" alt="" src="resource/image/ww.jpg"
						style="width: 19%; height: 200px;">
					</span>
					<span style="position: relative; " class="singer" id="singer3">
					<span id="singerdescribe3" style="cursor: pointer; height: 172px; width: 97%;position: absolute; bottom: 30px;background: #dcdcdc;display: none;left: 0px;">
					Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
						Space》现场神还原MV布景 太壕太任性！凭此单
						Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人
					</span>
					 <span
						style="height: 30px; position: absolute; bottom: 0px; color: white; font-weight: bold; width: 97%; background: black; opacity: 0.5;">
							<span id="singername3" style="cursor: pointer;">周杰伦</span> 
							<img id="singercomment3" title="推荐"
							alt="推荐" src="#"
							style="position: absolute; right: 0px; width: 30px; height: 30px; cursor: pointer;">
					</span> <img id="singerimgurl3" alt="" src="resource/image/ww.jpg"
						style="width: 19%; height: 200px;">
					</span>
					<span style="position: relative; " class="singer" id="singer4">
					<span id="singerdescribe4" style="cursor: pointer; height: 172px; width: 100%;position: absolute; bottom: 30px;background: #dcdcdc;display: none;left: 0px;">
					Swift出席2014 American Music Awards全美音乐颁奖礼 正式首秀 撕B前任新单《Blank
						Space》现场神还原MV布景 太壕太任性！凭此单
						Taylor收获了她的第3支冠单，并成为该榜单56年来，首位凭借不同单曲连续登顶的女艺人
					</span>
					 <span
						style="height: 30px; position: absolute; bottom: 0px; color: white; font-weight: bold; width: 97%; background: black; opacity: 0.5;">
							<span id="singername4" style="cursor: pointer;">周杰伦</span> 
							<img id="singercomment4" title="推荐"
							alt="推荐" src="#"
							style="position: absolute; right: 0px; width: 30px; height: 30px; cursor: pointer;">
					</span> <img id="singerimgurl4" alt="" src="resource/image/ww.jpg"
						style="width: 20%; height: 200px;">
					</span>

				</div>

			</div>
			<div style="height: 10px; clear: both;"></div>
			<div id="love" style="width: 100%; background: white; height: 200px;">
				<div style="width: 85%; margin: auto;">
					<span style="color: green; font-size: 30px; font-weight: bold;">猜你喜欢</span>
					<span style="float: right;"> 不喜欢?&nbsp;&nbsp;&nbsp;<span id="randomOnce" style="cursor: pointer;">刷新一下</span>&nbsp;&nbsp;&nbsp;
					</span>
				</div>
				<div style="width: 85%; margin: auto;">
					<div style="float: left; width: 20%; cursor: pointer;"
						class="lovemv" id="lovediv0">
						<div style="position: relative; margin: 2px;">

							<div id="lovesinger0"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="lovemvname0"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="love0" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="loveimgurl0" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 150px;">
						</div>
					</div>
					<div style="float: left; width: 20%; cursor: pointer;"
						class="lovemv" id="lovediv1">
						<div style="position: relative; margin: 2px;">

							<div id="lovesinger1"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="lovemvname1"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="love1" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="loveimgurl1" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 150px;">
						</div>
					</div>
					<div style="float: left; width: 20%; cursor: pointer;"
						class="lovemv" id="lovediv2">
						<div style="position: relative; margin: 2px;">

							<div id="lovesinger2"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="lovemvname2"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="love2" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="loveimgurl2" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 150px;">
						</div>
					</div>
					<div style="float: left; width: 20%; cursor: pointer;"
						class="lovemv" id="lovediv3">
						<div style="position: relative; margin: 2px;">

							<div id="lovesinger3"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="lovemvname3"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="love3" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="loveimgurl3" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 150px;">
						</div>
					</div>
					<div style="float: left; width: 20%; cursor: pointer;"
						class="lovemv" id="lovediv4">
						<div style="position: relative; margin: 2px;">

							<div id="lovesinger4"
								style="position: absolute; bottom: 40px; color: white; left: 10px; font-weight: bold;">周杰伦</div>
							<div id="lovemvname4"
								style="position: absolute; bottom: 10px; color: green; left: 10px; font-weight: bold;">听爸爸的话</div>
							<img id="love4" src="resource/image/play.png"
								style="display: none; position: absolute; bottom: 50px; left: 40%; width: 50px; height: 50px; z-index: 2">
							<img id="loveimgurl4" alt="" src="resource/image/ww.jpg"
								style="width: 100%; height: 150px;">
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>

	<div id="floot" style="margin-left: 0; clear: both;"></div>
</body>
</html>
