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
	    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-win8.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		
	    <link rel="stylesheet" href="/css/style.css" type="text/css">
	</head>
	<body>
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
	      
	    <section class="hero d-flex align-items-center justify-content-center">
	      	<div class="list-box my-5">
				<h1 class="w3-text-indigo text-center"><b>시간표 자랑 갤러리</b></h1>
				
				<table class="w3-table-all w3-centered w3-card-4 mt-4">
					<thead>
						<tr class="w3-vivid-blue">
							<th>NO</th>
							<th>닉네임</th>
							<th>제목</th>
							<th>좋아요</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>감자</td>
							<td>망한 시간표 1등</td>
							<td>8</td>
						</tr>
						<tr>
							<td>2</td>
							<td>고구마</td>
							<td>탑 쌓기 시간표</td>
							<td>6</td>
						</tr>
						<tr>
							<td>3</td>
							<td>따스한 햇살</td>
							<td>멋진 시간표</td>
							<td>4</td>
						</tr>
						<tr>
							<td>4</td>
							<td>철수</td>
							<td>2023-1 시간표</td>
							<td>3</td>
						</tr>
					</tbody>
				</table>
				
				<div class="d-flex justify-content-end">
					<a href="/post/create/view" class="w3-button w3-block w3-win8-cyan w3-hover-blue">+</a>
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