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
	      
	    <section class="hero d-flex align-items-center justify-content-center">
	      	<div class="input-box my-5">
				<h1 class="w3-text-indigo text-center"><b>글쓰기</b></h1>
				<div class="d-flex mt-4">
					<label class="col-1 mt-2 w3-text-indigo"><b>Title</b></label> 
					<input type="text" class="form-control col-10" id="titleInput">
				</div>
				<div class="input-box border rounded mt-3">
						<textarea rows="10" class="form-control border-0" rows="5" id="contentInput"></textarea>
						
					<div class="d-flex justify-content-between">
						
					</div>
				</div>
				<div class="d-flex justify-content-between mt-3">
					<a href="/post/gallery/view" class="w3-btn w3-round-large w3-indigo w3-hover-blue mt-3"> 목록으로 </a>
					<button type="button" class="w3-btn w3-round-large w3-indigo w3-hover-blue mt-3">저장</button>
				</div>
			</div>
		</section>
	
	    <c:import url="/WEB-INF/jsp/include/footer.jsp" />
	      
		<script>
			$(document).ready(function() {
				
				
				
			}
		
		
		
		
		
		
		
		
		
		</script>
	</body>
</html>