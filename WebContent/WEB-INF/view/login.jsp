<%@ page language="java" contentType="text/html; charset=EUC-KR" 
 pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: grey;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}



/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 100px 100px;
  position: relative;
}

img.unlock {
  width: 10%;
  border-radius: 50%;
}

.container {
  margin: 200px 50px 30px 50px;
  border: 2px solid #E5E5E5;
  padding: 100px;
}




/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}


/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

#registerLink{
  width: 100%;
  padding: 10px 20px;
  margin: 8px 0;
  display: inline-block;
  
}


</style>
</head>
<body>
<div id="id01" >
  <a></a>
  <form class="s animate" action="login" method="post">
    <div class="imgcontainer">
      <h2>Login</h2>
    </div>
    <div class="container">
      <label for="userNameOrEmail"><b>admin</b></label>
      <input type="text" placeholder="Enter admin" name="userName" required>
      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="userPassword" required>
      <button type="submit">Login</button>
    </div>

  </form>
</div>
</body>
</html>
