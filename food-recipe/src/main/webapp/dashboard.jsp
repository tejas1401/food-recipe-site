<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>DashBoard</title>
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
        #home,#profile {
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
        #profile{
            background-color: #70e000;
            transition: transform 0.3s ease;
        }
        #profile:hover{
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            background-color: #EDf2f4;
        }
        .search-container {
            display: inline-block;
            margin-right: 20px;
        }

        .search-input {
            margin-top: 5px;
            margin-left: 20px;
            padding: 10px 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 15px;
        }

        .search-button {
            margin-top: 5px;
            margin-left: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 15px;
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
        <div><button id="home" onclick="window.location.href='index.jsp'">Home</button></div>
        <div><button id="profile" onclick="window.location.href='userpage.jsp'">My Profile</button></div>
        <div class="search-container">
            <input type="text" class="search-input" placeholder="Search recipies...">
            <button class="search-button">Search</button>
        </div>
    </div>
    </header>
    <h1>Here is all the recipes from around the world!</h1>
</body>
</html>