<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<jsp:include page="navigationBars.jsp" />
<sec:authorize access="hasRole('COMPANY')" var="isCompany" />
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  width: 700px;
  background-color: #f2f2f2;
  margin: 5px;
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
           /*float: left;*/
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

                  .button2{
                                                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
                                             }

                                    /*button colour light blue*/
                                    .button2 {
                                       background-color: #5DB7DE;
                                    }
</style>
</head>
<body>

    <!-- Load icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <hr>
    <!-- The form -->
    <form class="example" action="/browseSearchResults2" method="POST">
      <input type="text" placeholder="Search.." name="search">
      <input type="hidden" name="searchType" value= "people">
      <input type="hidden" name="jobId" value= "${jobId}">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>

	<div class = "div1">
      <ul class="ul1">

        <c:forEach var="listValue" items="${people}" varStatus="loop">
        <li class="li1">
                  <img style="width:130px;height:140px;" src="data:image/jpg;base64,${images[loop.index]}"/>
                  <h5 class="w3-opacity"><b>${listValue.name}</b></h5>
                                        <h5 class="w3-opacity"><b>Current job: ${listValue.currentJob.name} - ${listValue.currentJob.experienceLevel}</b></h5>
                                        <h6 class="w3-text-green"><b>Skills: ${listValue.skills}</b></h6>
                                        <h6 class="w3-text-green"><b>Email: ${listValue.email}</b></h6>
                                        <h6>Address: ${listValue.address}</h6>
                                        <h6>Description: ${listValue.description}</h6>

                    <form action="/viewProfilePage" method="POST">
                  <button type="submit" class="registerbtn">View Profile</button>
                     <input type="hidden" name="person" value= "${listValue.id}"> </form>
                   <c:choose>
                   <c:when test="${empty hiredPerson}">
                   <form action="/hirePerson" method="POST">
                     <input type="hidden" name="person" value= "${listValue.id}">
                     <input type="hidden" name="job" value= "${jobId}">
                   <button type="submit" class="registerbtn">Hire</button></form>
                   </c:when>
                   </c:choose>
                      <c:choose>
                      <c:when test="${job.hiredPerson eq listValue.id}">
                      <button class="button button2">Hired</button></form>
                      </c:when>
                      </c:choose>

        </li>
        </c:forEach>
      </ul>
    </div>

</body>
</html>