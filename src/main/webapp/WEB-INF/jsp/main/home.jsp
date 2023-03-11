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

      <div class="hero" id="home">
        <div class="text container align-baseline">
          <img src="/img/tmLogo2.png" width="200">
          <p class="text-primary"><b>"타임머신" 대학생 시간표 자동생성 플랫폼</b></p>
          <p>사용자가 설정한 관심사와 우선순위를 고려하여<br>최적의 시간표를 자동으로 생성해주는<br>타임머신에 오신 것을 환영합니다.</p>
          <div>
	      	<a class="w3-button w3-round-large w3-vivid-orange-yellow w3-hover-deep-orange" width="200" href="#services">수동시간표 생성</a>
	      	<a class="w3-button w3-round-large w3-safety-blue w3-hover-blue" href="#services">자동시간표 생성</a>
          </div>
        </div>
      </div>

      <div class="w3-panel w3-highway-blue numbers">
        <h2 class="w3-center w3-xxxlarge">TIMEMACHINE</h2>
        <p class="w3-center w3-xxxlarge show-medium">
          <?xml version="1.0" encoding="utf-8"?>
        </p>
        <div class="container w3-padding-large">
          <div class="text">
            <p class="number">479</p>
            <p>시간표 생성</p>
          </div>
          <div class="text">
            <p class="number">15</p>
            <p>시간표 공유</p>
          </div>
          <div class="text">
            <p class="number">20</p>
            <p>좋아요</p>
          </div>
        </div>
      </div>

      <div class="services container" id="services">
        <h2 class="w3-center">Our services</h2>
        <div class="cards w3-padding-large w3-margin-top">
          <div class="card w3-card-2 w3-padding-large w3-border w3-border-blue w3-round-large">
            <h3>수동시간표 생성</h3>
            <div class="card-text">
              	<p><span>수강학점과 내가 들을 수 있는 강의 정보를 입력해서 공강을 확보한 최선의 시간표를 작성하세요.</span></p>
            </div>
          </div>
          <div class="card w3-card-2 w3-padding-large w3-border w3-border-blue w3-round-large">
            <h3>자동시간표 생성</h3>
            <div class="card-text">
              	<p><span>내가 꼭 들어야하는 강의를 입력해서 자신의 학년에 맞게<br>공강을 확보한 최선의 시간표를 작성하세요.</span></p>
            </div>
          </div>
          <div class="card w3-card-2 w3-padding-large w3-border w3-border-blue w3-round-large">
            <h3>시간표 자랑갤러리</h3>
            <div class="card-text">
              	<p><span>타임머신을 통해 만든 시간표를 선택해<br>갤러리에 자랑해보세요.</span></p>
            </div>
          </div>
          <div class="card w3-card-2 w3-padding-large w3-border w3-border-blue w3-round-large">
            <h3>마이페이지</h3>
            <div class="card-text">
              	<p><span>내가 만든 시간표들을 한눈에 보고 비교해보세요.</span></p>
            </div>
          </div>
        </div>
      </div>


      <div class="contact container" id="contact">
        <div class="short-contact">
          <h2>Contact us</h2>
          <p class="w3-xlarge">대학생분들의 의견과<br>아이디어를 공유해주세요!</p>
          <div class="w3-large w3-margin-top contact-info">
            <i class="fa fa-envelope-o"></i><span style="margin-left:10px;"><a href="connect@factor.com">timemachine@gmail.com</a></span><br>
            <i class="fa fa-phone"></i><span style="margin-left:10px;"><a href="+44 0197532486">+81 1012345678</a></span><br>
            <img src="/img/bg16.png" width="280">
          </div>
        </div>
        <div class="form w3-margin-top">
          <div class="container w3-round-xlarge">
            <form class="w3-highway-blue w3-padding-large w3-round-large">
              <label for="fname">이름</label>
              <input type="text" id="name" name="name" placeholder="Your name">

              <label for="lname">이메일</label>
              <input type="text" id="email" name="email" placeholder="Your email">

              <label for="subject">내용</label>
              <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
              
              <input class="w3-metro-blue" type="submit" value="Submit">
            </form>
          </div>
        </div>
      </div>

      <div class=" w3-highway-blue w3-padding-large" id="footer">
      	<p class="w3-center logo">© 2023 - TIME<span>MACHINE</span> - All rights reserved</p>
      </div>
      
	<script>
		
	</script>
  </body>
</html>