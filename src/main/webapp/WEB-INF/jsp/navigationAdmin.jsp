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
                                         background-color: #555;
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
</style>
</head>
<body>
     <ul>
               <li class="libar"><img src="logo.png" style="width:50px;height:40px;"></li>
               <li class="libar"><a class="active" href="/home">Home</a></li>
               <li class="libar"><a href="/profilePage">Profile</a></li>
               <li class="dropdown">
                         <a href="javascript:void(0)" class="dropbtn">Edit Users</a>
                         <div class="dropdown-content">
                           <a href="/addperson">Add Person</a>
                           <a href="/addcompany">Add Company</a>
                           <a href="/allusers">View Users</a>
                         </div>
               </li>
               <li class="libar"><a href="/addskill">Edit skills</a></li>
               <li class="libar"><a href="/browseJobs">View jobs</a></li>

                 <li class="dropdown">
                         <a href="javascript:void(0)" class="dropbtn">Account Settings</a>
                                                        <div class="dropdown-content">
                                                          <a href="/editaccount">Edit personal details</a>
                                                          <a href="/changepassword">Change password</a>
                                                        </div>
                                            </li>
               <li class="libar" style="float:right"><a href="/logout">Logout</a></li>
               <li class="libar" style="float:right"><a href="#about">About</a></li>

     </ul>
</body>
</html>
