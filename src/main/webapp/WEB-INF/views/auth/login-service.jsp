<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>

<style>
.social-button img {
	width: 100% ;
	padding: 0 10% 0 10%
}
</style>

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
                            <div class="social-button" id="naver_id_login">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
		var naver_id_login = new naver_id_login("6YMliXHS8Jl1gfQMQp23", "http://localhost/url/auth:login-service-cb");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("green", 3, 80);
	  	naver_id_login.setDomain("http://localhost/url/auth:login-service");
	  	naver_id_login.setState(state);
	  	naver_id_login.init_naver_id_login();
	  	$('#naver_id_login_anchor').attr('class','social')
    </script>
</body>
</html>
