<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Register</title>
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		span {
			color:red;
		}

		input[type=text], input[type=email], input[type=password] {
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}

		input[type=submit] {
		  width: 100%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}

		input[type=submit]:hover {
		  background-color: #45a049;
		}


		input[type=reset] {
		  width: 100%;
		  background-color: #00BFFF;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}

		input[type=reset]:hover {
		  background-color: #1E90FF;
		}

		div {
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px;
		}

	</style>
</head>
<body>

<div>	
	<form action="register" method="POST" >
	  <h2>Register Form</h2>
	  <p>
	    <label>User name <span>*</span></label>
	    <input type="text" placeholder="User name" name="userName"  id="userName" required>
	  </p>
	 
	  <p>
	    <label>Email <span>*</span></label>
	    <input type="email" placeholder="Email" name="userEmail"  id="userEmail" required>
	  </p>
	 
	  <p>
	    <label>Password <span>*</span></label>
	    <input type="password" placeholder="Password"  name="userPassword" id="userPassword" required>
	  </p>
	  <p>
	    <input type="submit" name="submitButton" value="Submit" id="submitButton">
	    <input type="reset" name="resetButton" value="Clear" id="resetButton">
	  </p>

	</form>
</div>
</body>
</html>