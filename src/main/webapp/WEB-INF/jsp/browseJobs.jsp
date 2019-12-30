<!DOCTYPE html>

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

         .libar a:hover:not(.active) {
           background-color: #333;
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
</style>
</head>
<body>

     <ul class="ulbar">
          <li class="libar"><img src="logo.png" style="width:50px;height:40px;"></li>
          <li class="libar"><a class="active" href="/home">Home</a></li>
          <li class="libar"><a href="/profilePage">Profile</a></li>
          <li class="libar"><a href="/browseJobs">Browse Jobs</a></li>
          <li class="libar"><a href="#contact">Contact</a></li>
          <li class="libar" style="float:right"><a href="#logout">Logout</a></li>
          <li class="libar" style="float:right"><a href="#about">About</a></li>
     </ul>

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
        <li class="li1">
          <img src="fblogo.png" style="width:150px;height:140px;"/>
          <h1>Software Engineer</h1>
          <h3>Company: Facebook</h3>
          <h3>Date Posted: 29.11.2019</h3>
          <h3>Required skills: Java, OOP, databases</h3>
          <button type="submit" class="registerbtn">Save job</button>
          <button type="submit" class="registerbtn">View Company</button>
        </li>

        <li class="li1">
                  <img src="googlelogo.jpg" style="width:150px;height:140px;"/>
                  <h1>Software Engineer</h1>
                  <h3>Company: Google</h3>
                  <h3>Date Posted: 29.11.2019</h3>
                  <h3>Required skills: Java, OOP, databases</h3>
                  <button type="submit" class="registerbtn">Save job</button>
                  <button type="submit" class="registerbtn">View Company</button>
                </li>

        <li class="li1">
                          <img src="amazonlogo.jpg" style="width:150px;height:140px;"/>
                          <h1>Software Engineer</h1>
                          <h3>Company: Amazon</h3>
                          <h3>Date Posted: 29.11.2019</h3>
                          <h3>Required skills: Java, OOP, databases</h3>
                          <button type="submit" class="registerbtn">Save job</button>
                          <button type="submit" class="registerbtn">View Company</button>
                        </li>

      </ul>
    </div>

</body>
</html>