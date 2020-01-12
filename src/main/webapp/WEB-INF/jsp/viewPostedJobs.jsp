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

         .ulbar {
           list-style-type: none;
           margin: 0;
           padding: 0;
           overflow: hidden;
           background-color: #333;
         }

         .libar {
           float: left;
           border-right:1px solid #bbb;
         }

         .libar:last-child {
           border-right: none;
         }

         .libar a {
           display: block;
           color: white;
           text-align: center;
           padding: 14px 16px;
           text-decoration: none;
         }

         .active {
           background-color: #4CAF50;
         }
         .libar a, .dropbtn {
           display: inline-block;
           color: white;
           text-align: center;
           padding: 14px 16px;
           text-decoration: none;
         }

         .libar a:hover, .dropdown:hover .dropbtn {
           background-color: #4CAF50;
         }

         .libar.dropdown {
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
         input[type=text], input[type=email], input[type=phone], input[type=date], select {
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

         .button1 {border-radius: 2px;}

* {margin: 0; padding: 0;}

.div1 {
  margin: 20px;
}

.ul1 {
  list-style-type: none;
  width: 500px;
  background-color: #f2f2f2;
}

.li1 img {
  float: left;
  margin: 0 15px 0 0;
}

.li1 p {
  font: 200 12px/1.5 Georgia, Times New Roman, serif;
}

.li1 {
  padding: 10px;
  overflow: auto;
}

.li1:hover {
  background: #eee;
  cursor: pointer;
}
   body {
     font-family: Arial;
   }

   * {
     box-sizing: border-box;
   }

   form.example input[type=text] {
     padding: 10px;
     font-size: 17px;
     border: 1px solid grey;
     float: left;
     width: 80%;
     background: #f1f1f1;
   }

   form.example button {
     float: left;
     width: 20%;
     padding: 10px;
     background: #2196F3;
     color: white;
     font-size: 17px;
     border: 1px solid grey;
     border-left: none;
     cursor: pointer;
   }

   form.example button:hover {
     background: #0b7dda;
   }

   form.example::after {
     content: "";
     clear: both;
     display: table;
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
           background-color: #555;
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
</style>
</head>
<body>

    <!-- Load icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <hr>
    <!-- The form -->
    <form class="example" action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>

	<div class = "div1">
      <ul class="ul1">

        <c:forEach var="listValue" items="${jobs}" varStatus="loop">
        <li class="li1">
                  <img style="width:120px;height:140px;" src="data:image/jpg;base64,${images[loop.index]}"/>
                  <h1>${listValue.name}</h1>
                  <h3>Company: ${name}</h3>
                  <h3>Date Posted: ${listValue.datePosted}</h3>
                  <h3>Required skills: ${listValue.skills}</h3>
                  <h3>Experience: ${listValue.experienceLevel}</h3>
                  <h3>Industry: ${listValue.industry}</h3>
</li>
                  <form action="/editJob" method="POST">
                    <input type="hidden" name="job" value= "${listValue.id}">
                  <button type="submit" class="registerbtn">Edit job</button></form>

                  <form action="/viewInterestedPeople" method="POST">
                  <input type="hidden" name="job" value= "${listValue.id}">
                  <button type="submit" class="registerbtn">View People Interested</button></form>

                  <form action="/deleteJob" method="POST">
                       <input type="hidden" name="id" value= "${listValue.id}">
                   <button type="submit" class="registerbtn">Delete job</button></form>


        </c:forEach>
      </ul>
    </div>

</body>
</html>