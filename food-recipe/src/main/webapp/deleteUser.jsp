<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Deleting Account</title>
	<script type="text/javascript">

		function validatePassword() {
               var password = document.getElementById('password').value;
           	   var passwordError = document.getElementById('passwordError');
               var borders = document.getElementById('password');

               if (password.trim() === '' || password.length < 2) {
                   passwordError.style.display = 'inline';
                   borders.style.borderColor = 'red';
                   document.getElementById('register').disabled = true;
                   return false;
               } else {
                   passwordError.style.display = 'none';
                   borders.style.borderColor = '';
                   document.getElementById('register').disabled = false;
                   return true;
               }
        }
	</script>
	<style type="text/css">
        *{
            padding:0px;
            margin: 0px;
            font-family:Trebuchet MS;
/*            outline: 1px solid red;*/
        }
        #logo{
            width: 100px;
        }
        html{
            height: 100%;
        }
        body{
            background-color: #f0ead2;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
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
        #register{
            background-color: #70e000;
            transition: transform 0.3s ease;
        }
        #register:hover{
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            box-shadow: 5px 10px #888888;
            transform: scale(1.1);
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
      .fields input,select,textarea{
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
        input ,select,textarea{
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
        input:focus,textarea:focus{
            border: 2px solid black;
        }
        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: auto; /* Push the footer to the bottom */
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
</head>
<body>
<% if(session.getAttribute("email")==null){
   response.sendRedirect("login.jsp");
}
%>
	<header>
    <div class="header">
        <div><img id="logo" src="Logo.png" alt="Italian Trulli"></div>
    </div>
</header>
     <form  onsubmit="return validatePassword()" method="post" action="delete" >
        <div><h2>Are you sure you want to delete your account?<br>All your data including recipies will be deleted<br></h2></div>
        <div class="fields">
        <label for="password">Enter your Password:</label>
        <input placeholder="password" type="password" id="password" name="password">
        </div>
        <div id="passwordError" class="error">Enter valid password</div>
        <div id="passwordError2" class="error" style="display: inline;"> ${ error } </div>
        <div><button  id="register" type="submit" >Delete</button></div>
  </form>
</body>
</html>