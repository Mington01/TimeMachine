<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-food.css">
	<header class="bg-white w3-container">
    	<nav class="nav-container w3-padding-large">
      		<div class="logo">
           		<img src="/img/tmLogo1.png" width="200">
         	</div>
         	<div class="mobile-button">
           		<span style="float: right;" onclick="toggleMobileNavigation()">&#9776;</span>
         	</div>
         	<div class="links">
           		<a href="/home/view" >Home</a>
           		<a href="/post/gallery/view" >Gallery</a>
           		<a href="#Notice" >Notice</a>
           		<a href="#My Page" >My Page</a>
           		<%-- 세션에 "userId" 값이 저장되어 있으면 로그인된 상태 --%>
           		<c:choose>
	           		<c:when test="${not empty userId }">
	           			<div class="mr-3">${userName }님 <a href="/user/signout">로그아웃</a></div>
					</c:when>
					<c:otherwise>
						<button class="btn w3-food-salmon w3-hover-red mr-3" onclick="location.href='/user/signin/view'">LOGIN</button>
					</c:otherwise>
				</c:choose>
         	</div>
    	</nav>
	</header>