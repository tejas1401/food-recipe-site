<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
	<title>Welcome!</title>
	<style type="text/css">
		*{
			padding:0px;
			margin: 0px;
            font-family:Trebuchet MS;
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
		#home{
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
		.container{
        	justify-content: center;
 			align-items: center;
		}
		.headingContainer {
			text-align: center;
		}
		.headingContainer h1 {
  			font-size: 3em;
  			color: #333;
		}
		.buttonContainer{
			text-align: center;
		}
		#signup ,#signin{
			margin-top: 5px;
			padding: 10px 20px;
			font-size: 16px;
      		font-weight: bold;
      		text-align: center;
      		text-decoration: none;
      		cursor: pointer;
      		border: 0px solid #393e41;
      		border-radius: 20px;
		}
		#signup{
			background-color: #6c757d;
			color: #ffffff;
		}
		#signin{
			background-color: whitesmoke;
		}
		#signup:hover{
			background-color: #2dc653;
			transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
			box-shadow: 5px 10px #888888;
		}
		#signin:hover{
			background-color: #2dc653;
			transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
			box-shadow: 5px 10px #888888;
			color: #ffffff;
		}
		.image-container, .row {
  			display: flex;
  			justify-content: center;
  			align-items: center;
  			flex-wrap: wrap;
  			margin-top: 20px;
  			transition: transform 0.3s ease;
		}
		.image-container img {
			height: auto;
  			width: 250px;
  			margin: 10px;
  			margin-top:15px;
  			border: 1px #242423;
  			border-radius: 15px;
  			box-shadow: 0 4px 8px #242423;
		}
		.image-container img:hover{
/*			width: 270px; /*affects all other components around it*/
			cursor: pointer;
			transform: scale(1.1);
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
  <header>
	<div class="header">
		<div><img id="logo" src="resources/images/Logo.png" alt="Italian Trulli"></div>
        <div><button id="home" onclick="window.location.href='userpage.jsp'">My Profile</button></div></div>
  </header>
    <div class="container">
    	<div class="headingContainer"><h1>Food Recipies!</h1>
    	</div>
    	<div class="buttonContainer">
    		<button id="signup" onclick="window.location.href='signup.jsp'">Sign-Up</button>
    		<button id="signin" onclick="window.location.href='login.jsp'">Sign-In</button>
    	</div>
    </div>
    <div class="image-container">
    	<div class="row">
    	<!-- Image 1 -->
    		<img src="./resources/images/image1.jpg" alt="Image 1">

        <!-- Image 2 -->
        <img src="./resources/images/image2.jpg" alt="Image 2">

        <!-- Image 3 -->
        <img src="./resources/images/image3.jpg" alt="Image 3">

    	</div>
        <div class="row">
        <!-- Image 4 -->
        <img src="resources/images/image4.jpg" alt="Image 4">

        <!-- Image 5 -->
        <img src="resources/images/image5.jpg" alt="Image 5">

        <!-- Image 6 -->
        <img src="resources/images/image6.jpg" alt="Image 6">
        </div>
    </div>
  <footer>
      <a href="">Facebook</a>
      <a href="">Twitter</a>
      <a href="">Instagram<a>
  </footer>
</body>
</html>