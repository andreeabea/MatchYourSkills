<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<jsp:include page="navigationBars.jsp" />
<sec:authorize access="hasRole('COMPANY')" var="isCompany" />
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

<form action="/editj" method="POST">
		<div class="container">
			<h1>Edit job</h1>
			<hr>

			<label for="name"><b>Name</b></label>
			<input type="text" placeholder="${name}" name="name"></br>

			<label for="experienceLevel"><b>Experience Level</b></label>
			<select name="experienceLevel" required>
			    <option id = "Entry_Level" value = "Entry_Level">Entry Level</option>
			    <option id = "Internship" value = "Internship">Internship</option>
			    <option id = "Associate" value = "Associate">Associate</option>
			    <option id = "Mid_Senior" value = "Mid_Senior">Mid Senior</option>
			    <option id = "Director" value = "Director">Director</option>
			    <option id = "Executive" value = "Executive">Executive</option>
			</select>

			<script>
            function myFunction() {
              document.getElementById("${experienceLevel}").selected = "true";
            }
            myFunction();
            </script>

			<label for="location"><b>Location</b></label>
            <input type="text" placeholder="${location}" name="location" ></br>

            <label for="industry"><b>Industry</b></label>
            <input type="text" placeholder="${industry}" name="industry"></br>

            <label for="description"><b>Description</b></label>
                        <input type="text" placeholder="${description}" name="description" ></br>

            <input type="hidden" name="job" value= "${job}">
			<button type="submit" class="registerbtn">Save</button>
		</div>
	</form>

</body>
</html>