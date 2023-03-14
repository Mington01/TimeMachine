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
	    <link rel="stylesheet" href="/css/style.css" type="text/css">
	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
						
						<input type="text" id="nameInput" class="form-control mt-3" placeholder="NAME">
						<input type="text" id="emailInput" class="form-control mt-3" placeholder="EMAIL">
						
						<div class="d-flex  mt-3">
							<input type="text" id="loginIdInput" class="form-control" placeholder="ID">
							<button type="button" class="btn btn-sm w3-vivid-orange ml-2" id="isDuplicateBtn">중복확인</button>
						</div>
						
						<div class="small text-success d-none" id="availableText">사용가능한 아이디 입니다</div>
						<div class="small text-danger d-none" id="duplicateText">중복된 아이디 입니다</div>
					
						<input type="password" id="passwordInput" class="form-control mt-3" placeholder="PASSWORD">
						<input type="password" id="passwordConfirmInput" class="form-control mt-3" placeholder="PASSWORD CONFIRM">
						
						<input type="text" id="univInput" class="form-control mt-3" placeholder="UNIVERSITY">
						
						<button type="button" id="signUpBtn" class="w3-btn w3-vivid-orange w3-hover-yellow btn-lg btn-block mt-3">SIGN UP</button>
						
						<hr>
						<div class="mt-4 p-3 d-flex text-info justify-content-center align-items-center">
							<a href="/user/signin/view">< I have my account ></a>
						</div>
					</div>
				</div>
			</div>
		</section>

    	<c:import url="/WEB-INF/jsp/include/footer.jsp" />
      
		<script>
			$(document).ready(function() {
				
				var isDuplicateCheck = false;
				var isDuplicateId = true;
				
				$("#isDuplicateBtn").on("click", function() {
					let id = $("#loginIdInput").val();
					
					if(id == "") {
						alert("아이디를 입력하세요");
						return;
					}
					
					$.ajax({
						type:"get"
						, url:"/user/duplicate_id"
						, data:{"loginId":id}
						, success:function(data) {
							isDuplicateCheck = true;
							
							if(data.is_duplicate) {  // 중복된 상태
								
								isDuplicateId = true;
								$("#duplicateText").removeClass("d-none");
								$("#availableText").addClass("d-none");
							} else { // 중복 안된 상태
								
								isDuplicateId = false;
								$("#availableText").removeClass("d-none");
								$("#duplicateText").addClass("d-none");
							}
							
						}
						, error:function() {
							alert("중복확인 에러");
						}
					});
					
				});
				
				$("#signUpBtn").on("click", function() {
					let name = $("#nameInput").val();
					let email = $("#emailInput").val();
					let id = $("#loginIdInput").val();
					let password = $("#passwordInput").val();
					let passwordConfirm = $("#passwordConfirmInput").val();
					let university = $("#univInput").val();
					
					
					if(name == "") {
						alert("이름을 입력하세요");
						return ;
					}
					
					if(email == "") {
						alert("이메일을 입력하세요");
						return ;
					}
					
					if(id == "") {
						alert("아이디를 입력하세요");
						return;
					}
					
					// 중복체크 여부 유효성 검사 
					//if(isDuplicateCheck == false) {
					if(!isDuplicateCheck) {
						alert("아이디 중복확인을 해주세요");
						return ;
					}
					
					// 아이디 중복여부 유효성 검사 
					// 중복된 상태인 경우 얼럿창 노출
					if(isDuplicateId) {
						alert("중복된 아이디 입니다");
						return ;
					}
					
					if(password == "") {
						alert("비밀번호를 입력하세요");
						retrun;    
					}
					
					if(password != passwordConfirm) {
						alert("비밀번호 일치여부를 확인하세요");
						return ;
					}
					
					if(university == "") {
						alert("대학교를 입력하세요");
						retrun;
					}
					
					
					$.ajax({
						type:"post"
						, url:"/user/signup"
						, data:{ "name":name, "email":email, "loginId":id, "password":password, "university":university}
						, success:function(data) {
							if(data.result == "success") {
								alert("환영합니다");
								location.href = "/user/signin/view";
							} else {
								alert("회원가입 실패");
							}
						}
						, error:function() {
							alert("회원가입 에러");
						}
					});
					
					
				});
				
			});
			
		
		
		
		
		
		
		
		
		
		
		</script>
	</body>
</html>