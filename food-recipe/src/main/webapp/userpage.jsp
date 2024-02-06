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
/*          outline: 1px solid red;*/
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
		#home:hover{
			background-color: #8ecae6;
			transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
		}
        /* Style for the dropdown container */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Style for the dropdown button */
        .dropdown-button {
            cursor: pointer;
        }

        /* Style for the dropdown content */
        .dropdown-content {
            display: none;
           width: 150px;
            position: absolute;
            background-color: #f9f9f9;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        /* Style for the dropdown options */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            display: block;
            text-decoration: none;
        }

        /* Hover effect for dropdown options */
        .dropdown-content a:hover {

            background-color: #70e000;
        }

        /* Show the dropdown content when hovering over the dropdown button */
        .dropdown:hover .dropdown-content {
            display: block;

        }
        .dropdown-button{
        	width: 25px;
        	padding-top: 6px;
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
		<div><img id="logo" src="resources/images/Logo.png" alt="Italian Trulli"></div>
        <div><button id="home" onclick="window.location.href='index.jsp'">Home</button></div></div>
        <div class="welcome">Welcome! ${sessionScope.userName}</div>
            <!-- Dropdown container -->
    <div class="dropdown">
        <!-- Dropdown button -->
        <img src="resources/images/dropdown.png" class="dropdown-button">

        <!-- Dropdown content with options -->
        <div class="dropdown-content">
            <a href="/food-recipe/update">Update Details</a>
            <a href="deleteUser.jsp">Delete User</a>
            <a href="/food-recipe/logout">Logout</a>
        </div>
    </div>
</header>
</body>
</html>




