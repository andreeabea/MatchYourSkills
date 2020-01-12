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
        .fa {color:#4CAF50;}

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
                         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
                       }

                       .button1{
                          box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
                       }

                       .button2{
                                   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
                                }

                       /*button colour light blue*/
                       .button2 {
                          background-color: #5DB7DE;
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

	<!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;">

      <!-- The Grid -->
      <div class="w3-row-padding">

        <!-- Left Column -->
        <div class="w3-third">

          <div class="w3-white w3-text-grey w3-card-4">
            <div class="w3-display-container">
              <img src="data:image/jpg;base64,${image}"  style="width:100%" alt="Avatar">
              <div class="w3-display-bottomleft w3-container w3-text-black">
                <h2>${name}</h2>
              </div>
            </div>
            <div class="w3-container" >
              <p class ="w3-large"><i class="fa fa-home fa-fw w3-margin-right"></i>Cluj-Napoca, Romania</p><br>
              <p class ="w3-large"><i class="fa fa-envelope fa-fw w3-margin-right"></i>${email}</p>
              <p class ="w3-large"><i class="fa fa-fw w3-margin-right"></i>Website: ${website}</p><br>
              <p class ="w3-large"><i class="fa fa-phone fa-fw w3-margin-right"></i>${phone}</p>
              <hr>
              <br>

            </div>
          </div><br>

        <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird">

          <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2 class="w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-green"></i>Manager</h2>
               <div class = "div1">
                    <ul class="ul1">
                    <li class="li1">
                     <img style="width:120px;height:140px;" src="data:image/jpg;base64,${imageM}"/>
                <h5 class="w3-opacity"><b>${nameM}</b></h5>
                <h6 class="w3-text-green"><b></i>${emailM}</b></h6>
                <h6 class="w3-text-green"><b></i>${phoneM}</b></h6>
                <h6 class="w3-opacity"><b></i>${addressM}</b></h6>
                <h6>${descriptionM}</h6>
                </li>

                   </ul>
                             </div>
            <br>
            <center><form action="/editManager">
                <button class="button button1">Edit Manager</button></form></center>

          </div>

          <div class="w3-container w3-card w3-white">
            <h2 class="w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-green"></i>Available jobs</h2>
            <div class = "div1">
            <ul class="ul1">

                    <c:forEach var="listValue" items="${jobs}" varStatus="loop">
                    <li class="li1">

                              <h1>${listValue.name}</h1>
                              <h3>Date Posted: ${listValue.datePosted}</h3>
                              <h3>Required skills: ${listValue.skills}</h3>
                              <h3>Experience: ${listValue.experienceLevel}</h3>
                              <form action="/viewInterestedPeople" method="POST">
                                <input type="hidden" name="job" value= "${listValue.id}">
                                <button type="submit" class="registerbtn">View interested people</button></form>
                       </li>
                    </c:forEach>

                  </ul>
             </div>
                <center><form action="/viewPostedJobs">
                                    <button class="button button1">View All</button></form></center>
            </div>
          </div>

        <!-- End Right Column -->

        </div>

      <!-- End Grid -->
      </div>

      <!-- End Page Container -->
    </div>

</body>
</html>