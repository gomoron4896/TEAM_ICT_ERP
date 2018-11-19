<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- <head>
  <meta charset="utf-8">
  <title>네이버 로그인</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
  네이버아이디로로그인 버튼 노출 영역
  <div id="naver_id_login"></div>
  //네이버아이디로로그인 버튼 노출 영역
  <script type="text/javascript">
  	var naver_id_login = new naver_id_login("MQeAhKF9EeXd_4hUZPlU", "http://localhost/url/levelinfo:callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white",	 2,40);
  	naver_id_login.setDomain("YOUR_SERVICE_URL");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
</html> -->

<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</head>

<style>
.social-button img {
	width: 30px ;
	padding: 0 10% 0 10%;
}
.layer{
  position:absolute;
  top:30%;
  left:45%;
  width:100px;
  height:100px;
  background:#f00;
  margin:-50px 0 0 -50px;
}
</style>
<!-- <body class="bg-white">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="/sufee/images/logo-m.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <form>
                        <div class="social-login-content">
                          <div id="naverIdLogin"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<body> -->
<body style="background-image: url('../img/t2.jpg'); background-size: cover; background-position: top center;">
<div class="layer">
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;" align="middle">
			<!-- <h2 class="card-title text-center" style="color:#113366;">Log In</h2> -->
			<a href="/url/clib:index">
               <img class="align-content" src="/sufee/images/logo-m.png" alt="main page" width="250px" >
            </a>
		</div>
		<div class="card-body">
      <form class="form-signin" method="POST" onSubmit="logincall();return false">
        <h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
        <label for="inputEmail" class="sr-only">Your ID</label>
        <input type="text" id="uid" class="form-control" placeholder="Your ID" required autofocus><BR>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="upw" class="form-control" placeholder="Password" required><br>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 기억하기
          </label>
        </div>
       <!--  <button id="btn-Yes" class="btn-lg btn-info btn-block" type="submit">Log In</button> -->
        <div class="social-login-content">
                          <div id="naverIdLogin"></div>
                        </div>
      </form>
      
		</div>
	</div>
</div>
	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "6YMliXHS8Jl1gfQMQp23",
			callbackUrl: "http://localhost/url/auth:login-cb-test",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height : 60} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
</script>
<!-- // 네이버아이디로로그인 초기화 Script -->
</body>
</html>