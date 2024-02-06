<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Update ypur details</title>
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
    <script type="text/javascript">
        function validateFirstName() {
           var name = document.getElementById('firstName').value;
           var nameError = document.getElementById('firstNameError');
         var borders = document.getElementById('firstName');

           if (name.trim() === '' || name.length < 2) {
          nameError.style.display = 'inline';
          borders.style.borderColor = 'red';
          return false;
       } else {
          nameError.style.display = 'none';
          borders.style.borderColor = '';
          return true;
         }
}
function validateLastName() {
           var name = document.getElementById('lastName').value;
           var nameError = document.getElementById('lastNameError');
         var borders = document.getElementById('lastName');

           if (name.trim() === '' || name.length < 2) {
          nameError.style.display = 'inline';
          borders.style.borderColor = 'red';
          return false;
       } else {
          nameError.style.display = 'none';
          borders.style.borderColor = '';
          return true;
         }
}
function validatePhoneNumber() {
 var phoneNumber = document.getElementById('contact').value;
 var phError = document.getElementById('phoneError');
 var borders = document.getElementById('contact');

 if (!/^\d{10}$/.test(phoneNumber.trim())) {
 phError.style.display = 'inline';
 borders.style.borderColor = 'red';
 return false;
 } else {
   //return ajaxPhoneCheck();
    phError.style.display = 'none';
    borders.style.borderColor = '';
    return true;
 }
}
function validateAPhoneNumber() {
 var phoneNumber = document.getElementById('acontact').value;
 var phError = document.getElementById('aPhoneError');
 var borders = document.getElementById('acontact');

 if (!/^\d{10}$/.test(phoneNumber.trim())) {
 phError.style.display = 'inline';
 borders.style.borderColor = 'red';
 return false;
 } else {
 phError.style.display = 'none';
 borders.style.borderColor = '';
 return true;
 }
}
function validateFoodType() {
        var payment = document.getElementById('foodtype').value;
    var paymentError = document.getElementById('foodTypeError');
    var borders = document.getElementById('foodtype');

    if (payment=== '' ) {
        paymentError.style.display = 'inline';
        borders.style.borderColor = 'red';
        return false;
    } else {
        paymentError.style.display = 'none';
        borders.style.borderColor = '';
        return true;
    }
}
function validateAddress() {
               var name = document.getElementById('address').value;
           var nameError = document.getElementById('addressError');
         var borders = document.getElementById('address');

           if (name.trim() === '' || name.length < 20) {
          nameError.style.display = 'inline';
          borders.style.borderColor = 'red';
          return false;
       } else {
          nameError.style.display = 'none';
          borders.style.borderColor = '';
          return true;
         }
}

async function validateEmail() {
    var email= document.getElementById('email').value;
    var emailError= document.getElementById('emailError');
    var emailError2= document.getElementById('emailError2');
    var borders = document.getElementById('email');
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if(!emailRegex.test(email)){
       emailError2.style.display='none';
        emailError.style.display='inline';
        borders.style.borderColor = 'red';
        return false;
    }
    else{
    emailError.style.display='none';
            borders.style.borderColor = '';
       const isValid = await ajaxEmailCheck();
       console.log(isValid);
       return isValid;
    }
}

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
async function ajaxEmailCheck() {
    return new Promise((resolve, reject) => {
        var emailError2 = document.getElementById('emailError2');
        var borders = document.getElementById('email');
        let email2 = document.getElementById("email").value;
        var encodedEmail = encodeURIComponent(email2.replace('.', '%2E'));
        const request = new XMLHttpRequest();

        request.open("GET", "http://localhost:6969/food-recipe/rest/updateEmail/" + encodedEmail);
        request.send();

        request.onload = function () {
            var returnedValue = this.responseText;
            if (returnedValue === "true") {
                emailError2.style.display = 'inline';
                borders.style.borderColor = 'red';
                resolve(false);
            } else {
                emailError2.style.display = 'none';
                borders.style.borderColor = '';
                resolve(true);
            }
        };
    });
}


function ajaxPhoneCheck(){
    var emailError2= document.getElementById('phoneError2');
    var borders = document.getElementById('contact');
    let phone2=document.getElementById("contact").value;
    const request= new XMLHttpRequest();
    request.open("GET","http://localhost:6969/food-recipe/rest/validateContact/"+phone2);
    console.log("inside ajax before");
    request.send();
    console.log("inside ajax");
    request.onload=function(){
        var returnedValue=this.responseText;
        if(returnedValue === "true"){
            console.log("email taken");
            emailError2.style.display='inline';
            borders.style.borderColor = 'red';
            return false;
        }
        else{
            console.log("email availabe");
            emailError2.style.display='none';
            borders.style.borderColor = '';
            return true;
        }
    };
}



async function validateForm(event) {
    event.preventDefault(); // Prevent the form from submitting synchronously

    if (await validateFirstName() &&
        await validateLastName() &&
        await validatePhoneNumber() &&
        await validateAPhoneNumber() &&
        await validateFoodType() && await validateAddress() && await validateEmail() && await validatePassword()) {
        event.target.submit();
        console.log("form valid");
        // Now you can submit the form programmatically
        return true;
    } else {

        console.log("form invalid");
        return false;
    }
}

    </script>
</head>
<body>
<% if(session.getAttribute("email")==null){
   response.sendRedirect("login.jsp");
}
%>
    <header>
    <div class="header">
        <div><img id="logo" src="Logo.png" alt="Italian Trulli"></div>
        <div><button id="home" onclick="window.location.href='index.jsp'">Home</button></div></div>
</header>
  <form  onsubmit="validateForm(event)" method="post" action="updateUser" >
    <div><h2>Update your details</h2></div>
        <input type="text" name="userID" value="${ user.getUserID() }" style="display: none;">
        <div class="fields">
        <label for="firstName">First Name:</label>
        <input placeholder="first name" value="${ user.getFirstName() }" type="text" id="firstName" name="firstName" onblur="validateFirstName()">
        </div>
        <div id="firstNameError" class="error">Enter valid First Name</div>

        <div class="fields">
        <label for="lastName">Last Name:</label>
        <input placeholder="last name" value="${ user.getLastName() }" type="text" id="lastName" name="lastName" onblur="validateLastName()">
        </div>
        <div id="lastNameError" class="error">Enter valid Last Name</div>

        <div class="fields">
        <label for="contact">Contact No:</label>
        <input placeholder="contact number" value="${ user.getPhone() }" type="text" id="contact" name="phone" onblur="validatePhoneNumber()">
        </div>
        <div id="phoneError" class="error">Enter valid phone number</div>
        <div id="phoneError2" class="error">Phone Number already in use</div>

        <div class="fields">
        <label for="acontact">Alternate No:</label>
        <input placeholder="alternate number" value="${ user.getAlternatePhone() }" type="text" id="acontact" name="alternatePhone" onblur="validateAPhoneNumber()">
        </div>
        <div id="aPhoneError" class="error">Enter valid phone number</div>

        <div class="fields">
            <label for="foodtype">Food type</label>
            <select  id="foodtype" name="foodType" onchange="validateFoodType()">
          <option value="">Select food type</option>
          <option value="VEG">VEG</option>
          <option value="NON-VEG">NON-VEG</option>
          </select>
        </div>
        <div id="foodTypeError" class="error">Select Food type</div>


        <div class="fields">
        <label for="address">Address:</label>
        <textarea placeholder="address" type="text" id="address" name="address" onblur="validateAddress()">${ user.getAddress() }</textarea>
        </div>
        <div id="addressError" class="error">Enter valid address</div>

        <div class="fields">
        <label for="email">Email:</label>
        <input placeholder="email" value="${ user.getEmail() }" type="text" id="email" name="email" onblur="validateEmail()">
        </div>
        <div id="emailError" class="error">Enter valid Email</div>
        <div id="emailError2" class="error">Email already taken</div>

        <div class="fields">
        <label for="password">Password:</label>
        <input placeholder="password" value="${ user.getPassword() }" type="password" id="password" name="password" onblur="validatePassword()">
        </div>
        <div id="passwordError" class="error">Enter valid password</div>

        <div><button  id="register" type="submit"  >Update</button></div>

  </form>
  <footer>
      <a href="">Facebook</a>
      <a href="">Twitter</a>
      <a href="">Instagram<a>
    </footer>
</body>
</html>