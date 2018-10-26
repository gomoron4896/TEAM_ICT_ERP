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
	width: 100% ;
	padding: 0 10% 0 10%
}
</style>
<body>
<body class="bg-white">

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
	

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "6YMliXHS8Jl1gfQMQp23",
			callbackUrl: "http://localhost/url/auth:login-cb-test",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 80} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
</script>
<!-- // 네이버아이디로로그인 초기화 Script -->
</body>
</html>