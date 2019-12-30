<!DOCTYPE html>

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

	<!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;">

      <!-- The Grid -->
      <div class="w3-row-padding">

        <!-- Left Column -->
        <div class="w3-third">

          <div class="w3-white w3-text-grey w3-card-4">
            <div class="w3-display-container">
              <img src="userlogo.png" style="width:100%" alt="Avatar">
              <div class="w3-display-bottomleft w3-container w3-text-black">
                <h2>Andreea</h2>
              </div>
            </div>
            <div class="w3-container" >
              <p class="w3-large"><i class="fa fa-briefcase fa-fw w3-margin-right" ></i>Software Developer</p>
              <p class ="w3-large"><i class="fa fa-home fa-fw w3-margin-right"></i>Cluj-Napoca, Romania</p>
              <p class ="w3-large"><i class="fa fa-fw w3-margin-right"></i>Birthdate: 10.12.1980</p>
              <p class ="w3-large"><i class="fa fa-envelope fa-fw w3-margin-right"></i>ex@gmail.com</p>
              <p class ="w3-large"><i class="fa fa-phone fa-fw w3-margin-right"></i>0748582362</p>
              <hr>

              <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right"></i>Skills</b></p>
              <p>Java</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-green" style="width:90%">90%</div>
              </div>
              <p>OOP</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-green" style="width:75%">75%</div>
              </div>
              <p>SQL</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-green" style="width:50%">50%</div>
              </div>
              <br>

              <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right"></i>Languages</b></p>
                            <p>English</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                              <div class="w3-container w3-center w3-round-xlarge w3-green" style="width:95%">95%</div>
                            </div>
                            <p>French</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                              <div class="w3-container w3-center w3-round-xlarge w3-green" style="width:60%">60%</div>
                            </div>

            </div>
          </div><br>

        <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird">

          <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2 class="w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-green"></i>Work Experience</h2>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Software Developer / Google</b></h5>
              <h6 class="w3-text-green"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2017 - <span class="w3-tag w3-green w3-round">Current</span></h6>
              <p>Worked on a project using Java and Spring framework</p>
              <hr>
            </div>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Web Developer / Facebook</b></h5>
              <h6 class="w3-text-green"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2015 - Dec 2017</h6>
              <p>Got more experience</p>
              <hr>
            </div>

          </div>

          <div class="w3-container w3-card w3-white">
            <h2 class="w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-green"></i>Education</h2>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Google Digital Workshop Courses</b></h5>
              <h6 class="w3-text-green"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2018-2019</h6>
              <p>Attended Java courses</p>
              <hr>
            </div>
          </div>

        <!-- End Right Column -->

        <hr>
        <center>
            <button class="button button2">Edit Profile</button></center>
        <center>    <button class="button button1">Saved Jobs</button> </center>
            <hr>

        </div>

      <!-- End Grid -->
      </div>

      <!-- End Page Container -->
    </div>

</body>
</html>