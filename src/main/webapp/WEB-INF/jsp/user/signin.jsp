<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
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
	    
	   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		
	    <link rel="stylesheet" href="/css/style.css" type="text/css">
	</head>
	<body>

	    <c:import url="/WEB-INF/jsp/include/header.jsp" />
	      
	    <section class="hero d-flex align-items-center justify-content-center my-5">
	    	<div class="mr-5">
				<img src="/img/tmLogo2.png" width="300">
			</div>
			<div>
				<div class="login-box d-flex justify-content-center align-items-start bg-white  border rounded">		
					<div class="w-70 p-5">			
						<form id="loginForm">
							<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="ID">
							<input type="password" id="passwordInput" class="form-control mt-3" placeholder="PASSWORD">
							<button id="loginBtn" type="submit" class="w3-btn w3-round-large w3-indigo w3-hover-blue btn-block mt-3">LOGIN</button>
							
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
	
	    <c:import url="/WEB-INF/jsp/include/footer.jsp" />
	      
		<script>
			$(document).ready(function() {
				
				$("#loginForm").on("submit", function(e) {
				//$("#loginBtn").on("click", function() {
					
					// 해당 이벤트의 기능을 모두 취소한다
					e.preventDefault();
					
					let loginId = $("#loginIdInput").val();
					let password = $("#passwordInput").val();
					
					if(loginId == "") {
						alert("아이디를 입력하세요 ");
						return ;
					}
					
					if(password == "") {
						alert("비밀번호를 입력하세요");
						return ;
					}
					
					$.ajax({
						type:"post"
						, url:"/user/signin"
						, data:{"loginId":loginId, "password":password}
						, success:function(data) {
							
							if(data.result == "success") {
								alert("환영합니다");
								location.href = "/home/view";
							} else {
								alert("아이디/패스워드를 확인해주세요");
							}
							
						}
						, error:function() {
							alert("로그인 에러");
						}
					});
				});
				
			});
		</script>
	</body>
</html>