<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<jsp:include page="navigationBars.jsp" />
<sec:authorize access="hasRole('PERSON')" var="isPerson" />
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
         	width: 50%;
         	opacity: 0.9;
         }

         .registerbtn:hover {
         	opacity: 1;
         }

        /*for th navigation bar */
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

         /*form inputs*/

         input[type=text], input[type=email], input[type=password], select {
           width: 50%;
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

         /*button shadow*/

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
         form {
                               display: inline-block; //Or display: inline;
                           }

         .enjoy-css {
         /*<img src="data:image/jpg;base64,${image}" style="width:100%" >*/
             background-image: url("data:image/jpg;base64,${image}");
             background-color: rgba(0, 0, 0, 0.1);
             height: 750px;
             background-position: center;
             background-repeat: no-repeat;
             background-size: 30%;
             position: relative;
         }

         .centered {
           background-color: rgba(0, 0, 0, 0.5);
           position: absolute;
           top: 30%;
           left: 18%;
           /* bring your own prefixes */
           transform: translate(-100%, -100%);
         }

         .centered:hover
         {
            background-color: rgba(0, 0, 0, 0.6);
         }

</style>
</head>
<body>

<div class="enjoy-css">

    <c:choose>
    <c:when test="${isPerson}">
<div class="centered">
    <form action="/addCV" method="POST" enctype="multipart/form-data">

    <label for="image"><b>Image</b></label>
                <div><input type="file" accept="image/*" id="fileInput" name="image"/></div>
                <script>
                   function chooseFile() {
                      document.getElementById("fileInput").click();
                   }
                </script>
     <input type="hidden" name="id" value= "${id}">
    <button class="button button1">Save CV</button></form>

    <hr>
</div>
  </c:when>
    </c:choose>
    </div>

</body>
</html>