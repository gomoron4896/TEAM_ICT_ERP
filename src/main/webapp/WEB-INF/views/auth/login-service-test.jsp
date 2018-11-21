<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body style="background-image: url('../img/t2.jpg'); background-size: cover; background-position: top center;">
<div class="layer">
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;" align="middle">
			<!-- <h2 class="card-title text-center" style="color:#113366;">Log In</h2> -->
			<a href="/url/clib:index">
               <img class="align-content" src="/clib/images/logo_icon.png" alt="main page" width="250px" >
            </a>
		</div>
		<div class="card-body">
	      <form class="form-signin" method="POST" onSubmit="logincall();return false">
	        <div class="social-login-content">
	        	<div id="naverIdLogin"></div>
	        </div>
	      </form>
		</div>
	</div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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