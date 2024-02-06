<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
	<title>Login</title>
	<style type="text/css">
		*{
			padding:0px;
			margin: 0px;
            font-family:Trebuchet MS;
		}
		#logo{
			width: 100px;
		}
		body{
			background-color: #f0ead2;
		}
		#home ,#register{
			background-color: #EDF2F4;
			margin-top: 5px;
			margin-left: 20px;
			padding: 10px 20px;
			font-size: 16px;
      		font-weight: bold;
      		text-align: center;
      		text-decoration: none;
      		cursor: pointer;
      		border: 2px solid #393e41;
      		border-radius: 20px;
		}
		#home:hover{
			background-color: #8ecae6;
			transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
		}
        #register{
            background-color: #70e000;
            transition: transform 0.3s ease;
        }
        #register:hover{
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            box-shadow: 5px 10px #888888;
            transform: scale(1.1);
        }
        #register:disabled{
            cursor: not-allowed;
            background-color: #cfe1b9;
            transform: scale(1.0);
            box-shadow: 5px 10px whitesmoke;
        }
		header {
            background-color: #393e41;/*header bg color*/
       		color: white;
      		padding: 5px;
      		display: flex;
      		align-items: center;
      		gap: 10px;
        }
		.header{
			display: flex;
		}
		form {
            max-width: 500px;
            margin: 20px auto;
            width: 1000px;
            margin:  auto;
            height: auto;
            background-color: whitesmoke;
            font-size: 12px;
            border-radius: 25px;
            border: 2px solid #2b2d42;
            padding: 20px;
            margin-top: 40px;
            margin-bottom: 40px;
            text-align: center;
      }
      .fields input{
            margin-left: auto;
            margin-right: 0px;
        }
        .error {
            color: red;
            margin-top: 5px;
            display:none;
            margin-bottom: 10px;
}
        .fields{
            display: flex;
        }
        label {
            display: block;
            margin-top: 20px;
            font-size: 20px;
        }
        form h2{
            padding-bottom:15px ;
        }
        form h4{
            padding-top:15px ;
        }
        input ,select{
            margin-top: 10px;
            width: 300px;
            margin-bottom: 10px;
            margin-right: 0px;
            box-sizing: border-box;
            border: 2px solid whitesmoke;
            border-radius: 40px;
            padding: 10px;
            display: block;
            color: #333;
            font-size: 16px;
        }
        input:focus{
            border: 2px solid black;
        }
		footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            position: fixed;
  			bottom: 0;
  			width: 100%;
        }
        footer a{
        	color: white;
        	display: inline-block;
          	margin: 0 10px;
          	text-decoration: none;
          	font-size: 20px;
        }
        footer a:hover{
        	color: #3498db;
        }
	</style>
	<script type="text/javascript">

	// Inside a script tag on the login page
    document.addEventListener('DOMContentLoaded', function() {
        // Clear form fields on page load
        document.getElementById('email').value = '';
        document.getElementById('password').value = '';
    });

	function validateEmail() {
        var email= document.getElementById('email').value;
        var emailError= document.getElementById('emailError');
        var borders = document.getElementById('email');
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if(!emailRegex.test(email)){
            emailError.style.display='inline';
            borders.style.borderColor = 'red';
            return false;
        }
        else{
            emailError.style.display='none';
            borders.style.borderColor = '';
            return true;
        }
    }

    function validatePassword() {
           var name = document.getElementById('password').value;
           var nameError = document.getElementById('passwordError');
           var borders = document.getElementById('password');

           if (name.trim() === '' || name.length < 8) {
             nameError.style.display = 'inline';
             borders.style.borderColor = 'red';
             document.getElementById('register').disabled = true;
             return false;
         } else {
             nameError.style.display = 'none';
             borders.style.borderColor = '';
             document.getElementById('register').disabled = false;
             return true;
         }
    }

    function validateForm(){
        if(validateEmail() && validatePassword()){
            document.getElementById('register').disabled = false;
            return true;
        }
        else{
            document.getElementById('register').disabled = true;
            return false;
        }
      }
	</script>
</head>
<body>
	<header>
	<div class="header">
		<div><img id="logo" src="resources/images/Logo.png" alt="Italian Trulli"></div>
        <div><button id="home" onclick="window.location.href='index.jsp'">Home</button></div></div>
</header>
<form   onsubmit="return validateForm()" method="post" action="login">
        <h3>Login to recipies</h3>
      <div class="fields">
        <label for="email">Email:</label>
        <input placeholder="email" type="text" id="email" name="email" onblur="validateEmail()">
        </div>
        <div id="emailError" class="error">Enter valid Email</div>

        <div class="fields">
                <label for="password">Password:</label>
                <input placeholder="password" type="password" id="password" name="password" onblur="validatePassword()">
                </div>
                <div id="passwordError" class="error">Enter valid password</div>
                <div id="passwordError2" class="error" style="display: inline;"> ${ error } </div>
        <div><button id="register" type="submit" disabled >Login</button></div>
  </form>

<footer>
      <a href="">Facebook</a>
      <a href="">Twitter</a>
      <a href="">Instagram<a>
    </footer>

</body>
</html>