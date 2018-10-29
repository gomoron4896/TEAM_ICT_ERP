<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	
	<link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="/sufee/css/normalize.css">
    <link rel="stylesheet" href="/sufee/css/bootstrap.min.css">
    <link rel="stylesheet" href="/sufee/css/font-awesome.min.css">
    <link rel="stylesheet" href="/sufee/css/themify-icons.css">
    <link rel="stylesheet" href="/sufee/css/flag-icon.min.css">
    <link rel="stylesheet" href="/sufee/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.less">
    <link rel="stylesheet" href="/sufee/scss/style.css">
    
   	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   	
   	<script src="/sufee/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="/sufee/js/popper.min.js"></script>
    <script src="/sufee/js/plugins.js"></script>
    <script src="/sufee/js/main.js"></script>

     <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script>
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
		var naver_id_login = new naver_id_login("6YMliXHS8Jl1gfQMQp23", "http://localhost/url/auth:login-cb");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("green", 3, 80);
	  	naver_id_login.setDomain("http://localhost/url/auth:login-service");
	  	naver_id_login.setState(state);
	  	naver_id_login.init_naver_id_login();
	  	$('#naver_id_login_anchor').attr('class','social')
    </script>
</body>
</html>
