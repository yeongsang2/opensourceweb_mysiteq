<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %> 
<%@ page import = "guest.GuestDto" %>
<%@ page import = "guest.GuestDao" %>


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
		table {
		  border-collapse: collapse;
		  border-spacing: 0;
		}
		
		.page-title {
		  margin-bottom: 60px;
		}
		.page-title h3 {
		  font-size: 28px;
		  color: #333333;
		  font-weight: 400;
		  text-align: center;
		}
		
		#board-search .search-window {
		  padding: 15px 0;
		  background-color: #f9f7f9;
		}
		#board-search .search-window .search-wrap {
		  position: relative;
		/*   padding-right: 124px; */
		  margin: 0 auto;
		  width: 80%;
		  max-width: 564px;
		}
		#board-search .search-window .search-wrap input {
		  height: 40px;
		  width: 100%;
		  font-size: 14px;
		  padding: 7px 14px;
		  border: 1px solid #ccc;
		}
		#board-search .search-window .search-wrap input:focus {
		  border-color: #333;
		  outline: 0;
		  border-width: 1px;
		}
		#board-search .search-window .search-wrap .btn {
		  position: absolute;
		  right: 0;
		  top: 0;
		  bottom: 0;
		  width: 108px;
		  padding: 0;
		  font-size: 16px;
		}
		
		.board-table {
		  font-size: 13px;
		  width: 100%;
		  border-top: 1px solid #ccc;
		  border-bottom: 1px solid #ccc;
		}
		
		.board-table a {
		  color: #333;
		  display: inline-block;
		  line-height: 1.4;
		  word-break: break-all;
		  vertical-align: middle;
		}
		.board-table a:hover {
		  text-decoration: underline;
		}
		.board-table th {
		  text-align: center;
		}
		
		.board-table .th-num {
		  width: 100px;
		  text-align: center;
		}
		
		.board-table .th-date {
		  width: 200px;
		}
		
		.board-table th, .board-table td {
		  padding: 14px 0;
		}
		
		.board-table tbody td {
		  border-top: 1px solid #e7e7e7;
		  text-align: center;
		}
		
		.board-table tbody th {
		  padding-left: 28px;
		  padding-right: 14px;
		  border-top: 1px solid #e7e7e7;
		  text-align: left;
		}
		
		.board-table tbody th p{
		  display: none;
		}
		
		.btn {
		  display: inline-block;
		  padding: 0 30px;
		  font-size: 15px;
		  font-weight: 400;
		  background: transparent;
		  text-align: center;
		  white-space: nowrap;
		  vertical-align: middle;
		  -ms-touch-action: manipulation;
		  touch-action: manipulation;
		  cursor: pointer;
		  -webkit-user-select: none;
		  -moz-user-select: none;
		  -ms-user-select: none;
		  user-select: none;
		  border: 1px solid transparent;
		  text-transform: uppercase;
		  -webkit-border-radius: 0;
		  -moz-border-radius: 0;
		  border-radius: 0;
		  -webkit-transition: all 0.3s;
		  -moz-transition: all 0.3s;
		  -ms-transition: all 0.3s;
		  -o-transition: all 0.3s;
		  transition: all 0.3s;
		}
		
		.btn-dark {
		  background: #555;
		  color: #fff;
		}
		
		.btn-dark:hover, .btn-dark:focus {
		  background: #373737;
		  border-color: #373737;
		  color: #fff;
		}
		
		.btn-dark {
		  background: #555;
		  color: #fff;
		}
		
		.btn-dark:hover, .btn-dark:focus {
		  background: #373737;
		  border-color: #373737;
		  color: #fff;
		}
		
		/* reset */
		
		.clearfix:after {
		  content: '';
		  display: block;
		  clear: both;
		}
		.container {
		  width: 90%;
		  margin: 30px auto;
		}
		.blind {
		  position: absolute;
		  overflow: hidden;
		  clip: rect(0 0 0 0);
		  margin: -1px;
		  width: 1px;
		  height: 1px;
		}
		.box{
			width:100%;
			height:220px;
			margin-top : 20px;
			margin-bottom : 20px;
			border : 1px solid;
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
	  <li><a href="*.do">Home</a></li>
	  <li><a  href="blog">blog</a></li>
	  <li><a id="active" href="guestbook">guest book</a></li>
	</ul>
</nav>
<hr>
  <!-- board list area -->
     <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">내용</th>
                    <th scope="col">글쓴이</th>
                    <th scope="col" class="th-date">날짜</th>
                    <td></td>
                </tr>
                </thead>
                <tbody>
    
                <%
                ArrayList<GuestDto> guestList = new ArrayList<GuestDto>();
                guestList = (ArrayList<GuestDto>) request.getAttribute("guestList");
                for(int i=0; i< guestList.size() ; i++){
                	%>
                	<tr>
                	<td><%= guestList.get(i).getGuestId() %></td>
                	<td><%= guestList.get(i).getGuestContent() %></td>
                	<td><%= guestList.get(i).getGuestName() %></td>
                	<td><%= guestList.get(i).getGuestDate() %></td>
                	</tr>
   				<%
                }
                %>
                </tbody>
            </table>
        </div>
      <div class="container">
	      <div class="box">
	      <form action="guestbook" method ="post">
		      <div style="padding: 10px 10px 10px 10px;">
		              이름<input type="text" name=guestName>
		      </div>
		      <div style="padding: 10px 10px 10px 10px;">   
	                       내용 <br>
		      <textarea name="guestContent"
		          style="width: 500px; height:100px;"></textarea>
		       </div>           
			  <input type="submit" style="float:right;" value="등록하기">	
	      </form>
	      </div>
	   </div>
      
<hr>	
</body>
</html>
