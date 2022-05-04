<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
		.container {
		  width: 90%;
		  margin: 30px auto;
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
	  <li><a href="*.dp">Home</a></li>
	  <li><a id="active" href="blog">blog</a></li>
	  <li><a href="guestbook">guest book</a></li>
	</ul>
</nav>
<hr>

<div class="container">
	<form action="write" method="post">
	<input type="text" style="width : 100%; height:50px; margin-bottom:30px" name=title><br>
	<textarea style="width : 100%; height:500px;" name="content"></textarea><br>
	<input type="submit" style="float:right;" value="등록하기">
	</form>
</div>
<hr>	

</body>
</html>