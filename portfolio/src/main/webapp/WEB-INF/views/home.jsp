<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false" %>
<html>
<head>

	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/blog/resources/home.css">
	
<script>
$(function(){
	
	
	var w = $(window).width();
	$("#test").innerHTML
	
	$(document).mouseup(function(e) {
		
		if ($(e.target).parents('.zeta-menu').length == 0) {
			$('.zeta-menu li').removeClass('expand');
			$('.zeta-menu ul').hide();
		}
		
		
	});
	$(".zeta-menu>li:has(ul)>a").each( function() {
		$(this).html( $(this).html()+' &or;' );
	});
	$(".zeta-menu ul li:has(ul)")
		.find("a:first")
		.append("<p style='float:right;margin:-3px'>&#9656;</p>");

	$(".zeta-menu li>a").click(function(){
		var li = $(this).parent();
		var ul = li.parent();
		ul.find('li').removeClass('expand');
		ul.find('ul').not(li.find('ul')).hide();
		li.children('ul').slideToggle();
		if( li.children('ul').is(':visible') || li.has('ul')) {
			li.addClass('expand');
		}
	});
	
	$("#test").click(function(){
		
		var menu = $(".zeta-menu li");
		menu.slideToggle();
	});

	

		$(window).resize(function(){
			var menu = $(".zeta-menu li");
    		var w = $(window).width();
    		if(w > 768 && menu.is(':hidden')) {
    			menu.removeAttr('style');
    		}
		});
		
	
	
});
</script>







	
	<script type="text/javascript">

		/* var player = document.createElement("audio");
		var source = document.createElement("source"); */
		var playlists = new Array();
		var pointer = 0;
		playlists.push("/blog/resources/music/11. ボㅡナストラック2");
		playlists.push("/blog/resources/music/kanade");
		playlists.push("/blog/resources/music/you 기타");
		player.appendChild(source);
		
		function load_list(){				 

			if(player.canPlayType("audio/mpeg")!=""){
				source.src = playlists[pointer] + ".mp3";
			    source.type = "audio/mpeg";
			} else {
			    source.src = getItem() + ".ogg";
			    source.type = "audio/ogg";
			}
			document.getElementById("fileName").innerHTML=playlists[pointer].substr(22);
			player.load();
			player.play();
		}
		
		window.addEventListener("load",load_list,false);
		player.addEventListener("ended",doNext,false);
	
		 
		 
		 function doprev(){
			  
		 	 var obj = player;
		 
			
			  obj.pause();
			  obj.currentTime=0;
			  pointer--;
			  if(pointer<0){
			    pointer = playlists.length-1;
			  }
			  
			  source.src = playlists[pointer] + ".mp3";
			  obj.load();
			  obj.play();
			
			}
		 
		 function doNext(){
			 var obj = player;
			 
			  obj.pause();
			  obj.currentTime=0;
			
			  pointer++;
			
			  if(pointer>playlists.length-1){
			   pointer = 0;
			  }
			  load_list();
			
			}
			function changeButton(){
				
				var obj = player;
				var img = document.getElementById('PlayButton');
				
				if(!obj.paused){
					alert("음악정지");
					img.src = "/blog/resources/image/play-button.png";
					obj.pause();
					
				}else{
					alert("음악시작");
					img.src = "/blog/resources/image/pause-button.png";
					obj.play();
				}
				
			}
	</script>


</head>
<body>

<div id="container">
	<div id="header">
		<div style="background-color: #747474; height: 40px; width: 300px;">
			<div style="float: left; width: 40px; padding: 4px;">
				<img src="/blog/resources/image/musical-note (3).png">
			</div>
			<div  style="vertical-align:middle; line-height:40px; text-align:center;float: left; width: 190px; background-color: orange; height: 40px;" id="fileName">
			
			</div>
			
			<div style="float: left;">
				<div>
				<img src="/blog/resources/image/previous (1).png" onclick="doprev();">
				<img id="PlayButton" src="/blog/resources/image/pause-button.png" onclick="changeButton();">
				<img src="/blog/resources/image/skips.png" onclick="doNext();">
				</div>
				<div style="font-size: 10pt;">소리</div>
			</div>
	
		</div>
	블로그 이름과 상단 왼쪽에 음악플레이어 우측에는 블로그형식변경넣기
	
	</div>
	
<div class='zeta-menu-bar'>
<a id="test">Menu</a>
  <ul class="zeta-menu">
  	
    <li><a href="#0">홈</a></li>
    <li><a href="#1">1번 메뉴</a></li>
    <li><a href="#2">2번 메뉴</a>
      <ul>
        <li><a href="#2A">2-A 메뉴</a></li>
        <li><a href="#2B">2-B 메뉴</a>
          <ul>
            <li><a href="#2B1">2-B-1 메뉴</a></li>
            <li><a href="#2B2">2-B-2 메뉴</a></li>
          </ul>
        </li>
        <li><a href="#2C">2-C 메뉴</a></li>
        <li><a href="#2D">2-D 메뉴</a>
          <ul>
            <li><a href="#2D1">2-D-1 메뉴</a></li>
            <li><a href="#2D2">2-D-2 메뉴</a></li>
            <li><a href="#2D3">2-D-3 메뉴</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#3">3번 메뉴</a>
      <ul>
        <li><a href="#3A">3-A 메뉴</a></li>
        <li><a href="#3B">3-B 메뉴</a></li>
      </ul>
    </li> 
    <li><a href="#4">4번 메뉴</a></li> 
    <li style="float: right;"><a>낑</a></li>
  </ul>
</div>

	<div id="bodyer">
		<div id="content">
			<div>제목<br>
			글쓴시간
			</div>
			<div>
			본 문 글 나 오 는 곳 !
			</div>
			<div>댓글</div>
		

		</div>
		
		<!-- 우측 게시판 리스트 바 -->
		<div id="contentList">
			<!-- 블로그 프로필사진 -->
			<div style="height: 200px; margin-bottom: 20px;">
				<img src="/blog/resources/image/blog.jpg">
			</div>
			<!-- 블로그 프로필사진 --> 
			
			<!-- 검색 -->
			<div style="margin-bottom: 20px; height: 25px;">
				<div style="float: left; margin-right: 5px;">
					<input type="text" size="18">
				</div>
				<div align="center" style="background-color: black; padding-top:2px; float:left; height: 19px; width: 35px; border-radius: 5px;">
					<img src="/blog/resources/image/zoom.png">
				</div>
			
			</div>
			<!-- 검색 -->
			
			
			<!-- 오늘 쓴 글[음악만 나오게 할지 미지수] -->
			<div style="margin-bottom: 20px;">
				<div style="font-size: 10pt; font-weight: bolder; height: 20px;">오늘 쓴 글</div>
				<div style="height: 3px; background-color: gray;  border-radius: 20px; margin-bottom: 5px;"></div>
				<div style="height: 200px; background-color: olive;">카테고리 리스트 뿌려줄곳</div>
			</div>
			<!-- 오늘 쓴 글[음악만 나오게 할지 미지수] -->
			
			<!-- 채팅창 구현하기 -->
			<div style="margin-bottom: 20px;">
				<div style="font-size: 10pt; font-weight: bolder; height: 20px;">채팅</div>
				<div style="height: 3px; background-color: gray;  border-radius: 20px; margin-bottom: 5px;"></div>
				<div style="height: 300px; background-color: olive;">채팅창 구현하기</div>
			</div>
			<!-- 채팅창 구현하기 -->
			
			<!-- 방문자 -->
			<div>
				<div style="height: 100px; background-color: olive;">방문자 카운터</div>
			</div>
			<!-- 방문자 -->
			
		<!-- 	<div style="margin-top: 20px;">
				<audio controls autoplay="autoplay"
  					src="/pro1/resources/music/kanade.mp3">
  				</audio>
			</div> -->
			
			

			
			
			
		</div>
		<!-- 우측 게시판 리스트 바 -->
	</div>
</div>


</body>
</html>
