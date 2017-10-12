<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>

<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="../../WebClass/myblog2419/css/asdf.css">

</head>
<style type="text/css">body, a:hover {cursor: url(http://cur.cursors-4u.net/symbols/sym-6/sym597.cur), progress !important;}</style><a href="http://www.cursors-4u.com/cursor/2011/01/26/transparent-white-star.html" target="_blank" title="Transparent White Star"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Transparent White Star" style="position:absolute; top: 0px; right: 0px;" /></a>

<!-- 메뉴 바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#">Home</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
<!--
		<form class="form-inline my-2 my-lg-0" id="Loginform">
			<input class="form-control mr-sm-2" type="text" placeholder="ID"
				aria-label="ID" id="id" required float> <input
				class="form-control mr-sm-2" type="password" placeholder="PWD"
				aria-label="PWD" id="pwd" required>
			<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">로그인</button>
		</form>
		-->
		
		    <%-- 세션이 없는 경우 --%>
    <%
			UserVO user=(UserVO)session.getAttribute("user");
			if(user==null){
 
	%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin2419">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="">Sign up</a>
    
	<% } else { %>
	<%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName()+ "님"%>	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout2419" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	       	</form>
	      </div>
	    </li>
	    </ul>
	    
	    <% } %>
		
	</div>

</nav>
<div class="container">
	<p></p>
</div>
<embed
	src="http://www.youtube.com/v/ZzNlVwOouVE?version=2&hl=ko_KR&fs=1&autoplay=1"
	type="application/x-shockwave-flash" width="200" height="30"
	allowscriptaccess="always" allowfullscreen="true"></embed>

<body bgcolor="black" text="black" link="blue" vlink="purple"
	alink="red" tracingsrc="../../WebClass/myblog2419/img/b.png" tracingopacity="53"
	background="../../WebClass/myblog2419/img/b.png">
	<p align="center">
		<img src="../../WebClass/myblog2419/img/mm.png" border="0" usemap="#ImageMap1">
	</p>
	<map name="ImageMap1">
		<area shape="rect" coords="87, 463, 218, 494" href="../../WebClass/myblog2419/notice.html"
			onfocus="this.blur();">
		<area shape="rect" coords="524, 306, 649, 341" href="../../WebClass/myblog2419/text1.html"
			onfocus="this.blur();">
		<area shape="rect" coords="652, 479, 782, 517" href="../../WebClass/myblog2419/text2.html"
			onfocus="this.blur();">
		<area shape="rect" coords="434, 786, 578, 817" href="../../WebClass/myblog2419/guest.html"
			onfocus="this.blur();">
	</map>




	<!-- 모달창 
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<script src="../../WebClass/myblog2419/js/asdf.js"></script>





</body>


</html>