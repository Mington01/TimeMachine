<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>타임머신</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-safety.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-vivid.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
  </head>
  <body>

      <div class="navigation bg-white w3-container">
        <nav class="nav-container w3-padding-large">
          <div class="logo">
            <img src="/img/tmLogo1.png" width="200">
          </div>
          <div class="mobile-button">
            <span style="float: right;" onclick="toggleMobileNavigation()">&#9776;</span>
          </div>
          <div class="links">
            <a href="#Home" >Home</a>
            <a href="#Gallery" >Gallery</a>
            <a href="#Notice" >Notice</a>
            <a href="#My Page" >My Page</a>
            <div class="mt-1">감자님<a href="/user/signout"><u>Logout</u></a></div>
          </div>
        </nav>
      </div>
      
      <section class="hero d-flex align-items-center justify-content-center my-5">
      	<div class="mr-5"></div>
			<img src="/img/tmLogo2.png" width="300">
		</div>
		<div>
			<div class="login-box d-flex justify-content-center align-items-start bg-white  border rounded">		
				<div class="w-70 p-5">			
					<form id="loginForm">
						<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="ID">
						<input type="password" id="passwordInput" class="form-control mt-3" placeholder="PASSWORD">
						<button id="loginBtn" type="submit" class="btn w3-indigo btn-block mt-3">LOGIN</button>
						
					</form>
					
					<hr>
					<div class="text-center">
						<a href="/user/signup/view" class="text-secondary">Forgot the password?</a><br><br>
						<a href="/user/signup/view" class="text-info"><b>SIGN UP</b></a>
					</div>
				</div>
				
			</div>

		</div>
	</section>

      <div class=" w3-highway-blue w3-padding-large" id="footer">
      	<p class="w3-center logo">© 2023 - TIME<span>MACHINE</span> - All rights reserved</p>
      </div>
      
	<script>
		$(document).ready(function() {
			
			
			
		});
		
	
	
	
	
	
	
	
	
	
	
	
	</script>
  </body>
</html>