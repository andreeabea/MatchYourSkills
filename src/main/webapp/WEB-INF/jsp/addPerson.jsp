<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<jsp:include page="navigationBars.jsp" />
<sec:authorize access="hasRole('ADMIN')" var="isAdmin" />
<html>
<head>

<style>
 html, body, h1, h2, h3, h4, h5 {
     	font-family: "Raleway", sans-serif
     }
     /* Overwrite default styles of hr */
     hr {
     	border: 1px solid #f1f1f1;
     	margin-bottom: 25px;
     }

     /* Set a style for the submit button */
     .registerbtn {
     	background-color: #4CAF50;
     	color: white;
     	padding: 16px 20px;
     	margin: 8px 0;
     	border: none;
     	cursor: pointer;
     	width: 100%;
     	opacity: 0.9;
     }

     .registerbtn:hover {
     	opacity: 1;
     }

     ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
       overflow: hidden;
       background-color: #333;
     }

     li {
       float: left;
       border-right:1px solid #bbb;
     }

     li:last-child {
       border-right: none;
     }

     li a {
       display: block;
       color: white;
       text-align: center;
       padding: 14px 16px;
       text-decoration: none;
     }

     li a:hover:not(.active) {
       background-color: #333;
     }

     .active {
       background-color: #4CAF50;
     }
     li a, .dropbtn {
       display: inline-block;
       color: white;
       text-align: center;
       padding: 14px 16px;
       text-decoration: none;
     }

     li a:hover, .dropdown:hover .dropbtn {
       background-color: #4CAF50;
     }

     li.dropdown {
       display: inline-block;
     }

     .dropdown-content {
       display: none;
       position: absolute;
       background-color: #f9f9f9;
       min-width: 160px;
       box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
       z-index: 1;
     }

     .dropdown-content a {
       color: black;
       padding: 12px 16px;
       text-decoration: none;
       display: block;
       text-align: left;
     }

     .dropdown-content a:hover {background-color: #f1f1f1;}

     .dropdown:hover .dropdown-content {
       display: block;
     }
     input[type=text], input[type=email], input[type=phone], input[type=date], input[type=password], input[type=file], select {
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

     div {
       border-radius: 5px;
       background-color: #f2f2f2;
       padding: 20px;
     }

     .button {
       background-color: #4CAF50; /* Green */
       border: none;
       color: white;
       padding: 20px;
       text-align: center;
       text-decoration: none;
       display: inline-block;
       font-size: 16px;
       margin: 4px 2px;
       cursor: pointer;
     }

     .button1 {border-radius: 2px;}
</style>
</head>
<body>

	<form action="/addp" method="POST" enctype="multipart/form-data">
		<div class="container">
			<h1>Person register</h1>
			<p>Please complete the form below</p>
			<hr>

			<label for="name"><b>Name</b></label> <input type="text"
				placeholder="Enter Name" name="name" required></br>

			<label for="email"><b>Email</b></label> <input type="email"
				placeholder="Enter Email" name="email"
				oninvalid="alert('Invalid email format');" required></br>

			<label for="password"><b>Password</b></label> <input type="password"
            				placeholder="Enter Password" name="password" required></br>

			<label for="description"><b>Description</b></label> <input type="text"
                placeholder="Describe yourself" name="description" required></br>

            <label for="image"><b>Image</b></label>
            <div><input type="file" accept="image/*" id="fileInput" name="image"/></div>
            <script>
               function chooseFile() {
                  document.getElementById("fileInput").click();
               }
            </script>
            <label for="phone"><b>Phone number</b></label> <input
                        type="phone" pattern="^\+(?:[0-9] ?){6,14}[0-9]$"
                        oninvalid="alert('Invalid phone number format');"
                        placeholder="Enter Telephone Number (e.g. +40123456789)"
                        name="phone" required>

            <label for="address"><b>Address</b></label>
                        <input type="text" name="address">

            <label for="birthdayy"><b>Birthday</b></label>
            <input type="date" name="birthdayy">

			<label for="genderr"><b>Gender</b></label>
			<select id="genderr" name="genderr">
              <option value="Male" checked> Male<br>
              <option value="Female"> Female<br>
              <option value="Other"> Other
            </select>

			<button type="submit" class="registerbtn">Submit</button>
		</div>
	</form>

</body>
</html>