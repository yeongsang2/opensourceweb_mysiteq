<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>yeongsang blog</title>
	<style>
		body{
		font-family: arial;
		}
		hr{
		border : solid 0.5px;
		width : 90%; 
		}
		.head {
		font-size : 50px;
		text-align : center;
		margin : 30px;
		}
		.nav {
		  background-color: white; 
		  list-style-type: none;
		  text-align: center;
		  margin: 0;
		  padding: 0;
		}
		.nav li {
		  display: inline-block;
		  font-size: 20px;
		  padding:20px 200px;
		}
		.nav li a{
		text-decoration-line: none;
		}
		#active{  
		text-decoration-line: underline;
		font-family: arial;
		 }
		.intro{
		padding: 50px 100px;
		font-family: Inter;
		font-style: Regular;
		font-size: 30px;
		}
		
		
	</style>
</head>
<body>
<div class="head">
kim yeong sang<br>
</div>
<div style="font-size : 25px; text-align : right ; width : 95% ;">
		<% 
		if(session.getAttribute("userName") != null){
			%> <a href ="logout">logout</a>
		<%
		}			
        else{
			%>
			<a href="login" style= "text-decoration-line:none ">login</a>
			<%
	    }
		%>
</div>
<div style="font-size : 25px; text-align : right ; width : 95% ;">
	<a href="register" style= "text-decoration-line:none ">register
	</a>
</div>


<hr>
<nav>
	<ul class=nav>
	  <li><a id="active" href="*.do">Home</a></li>
	  <li><a href="blog">blog</a></li>
	  <li><a href="guestbook">guest book</a></li>
	</ul>
</nav>
<hr>
<div class="intro">
	<div style="float:left;">
			<img src="./image/yeongsang.png" width="350" height="300" alt="프로그래머 그림" />
	</div>
	<div>
	<p>
	소프트웨어학부에 재학중인 김영상입니다.<br>
	서버개발자를 목표로 하고 있습니다.<br>
	꾸준함이 무기입니다.<br>

	</div>
	<img src="./image/github.png" width="40" height="40"/>
	<a href="https://github.com/yeongsang2">https://github.com/yeongsang2</a><br>
	<img src="./image/instagram.png" width="40" height="40"/>
	<a href="https://www.instagram.com/yeong_sang2/">https://www.instagram.com/yeong_sang2/</a><br>
	<a>email:dudtkd1221@gmail.com</a>
	</p>
	</div>
</div>
<hr>	

</body>
</html>