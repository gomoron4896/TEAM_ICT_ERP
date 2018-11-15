<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<!-- <head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("MQeAhKF9EeXd_4hUZPlU", "http://localhost/url/levelinfo:callback");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('nickname'));
    alert(naver_id_login.getProfileData('age'));
    alert(naver_id_login.getProfileData('name'));
    alert(naver_id_login.getProfileData('profile_image'));
    alert(naver_id_login.getProfileData('id'));
    console.log(naver_id_login);
  }
</script>
</body>
</html>
					 -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NaverLoginSDK</title>
</head>

<body>

	<!-- callback 처리중입니다. 이 페이지에서는 callback을 처리하고 바로 main으로 redirect하기때문에 이 메시지가
	보이면 안됩니다. -->

	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>

	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "6YMliXHS8Jl1gfQMQp23",
			callbackUrl : "http://localhost/url/auth:login-cb-test",
			isPopup : false,
			callbackHandle : true
		/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
		});
		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();
		/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
		window.addEventListener('load', function() {
			naverLogin.getLoginStatus(function(status) {
				if (status) {
					/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
					var ui_id = naverLogin.user.getId();
					var ui_email = naverLogin.user.getEmail();
					var ui_img = naverLogin.user.getProfileImage();
					var ui_name = naverLogin.user.getName();
					var birthday = naverLogin.user.getBirthday();
					var age = naverLogin.user.getAge();
					if (ui_email == undefined || ui_email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						naverLogin.reprompt();
						return;
					}
					if (ui_img == undefined || ui_img == null) {
						alert("프로필 사진은 필수정보입니다. 정보제공을 동의해주세요.");
						naverLogin.reprompt();
						return;
					}
					if (ui_name == undefined || ui_name == null) {
						alert("이름 은 필수정보입니다. 정보제공을 동의해주세요.");
						naverLogin.reprompt();
						return;
					}
				
					var data = {
						ui_id : ui_id,
						ui_email : ui_email,
						ui_img : ui_img,
						ui_name : ui_name,
					};
					insertUser(ui_email,ui_id,ui_img,ui_name);
					
					var xhr = new XMLHttpRequest();
					 $.ajax({
						url : '/login',
						type : 'POST',
						beforeSend : function(xhr) {
							xhr.setRequestHeader("${_csrf.headerName}",
									"${_csrf.token}");
						},
						success : function(res) {
							//alert(res);
							//alert("로그인 처리");
							window.location.replace("http://localhost/url/clib:index");
						},
						error : function(err) {
							console.log(err);
						},
						data : data
					});
					console.log(data); 
					/* var data = new FormData();
					formData.append('ui_email', 'ui_email');
					formData.append('ui_id', 'ui_id'); */
					/* 	data = JSON.stringify(data) */
					/* 	var url = "/login";
						var method = "POST";
						xhr.open(method, url);
						
						xhr.onreadystatechange = function() {
					
							if (xhr.readyState == 4) {
								alert(xhr.responseText);
								if (xhr.status == "200") {
					
									if (xhr.responseText == '1') {
										alert("회원가입이 완료되었습니다.");
										location.href = '/main:main';
									}
								} else {
									alert(xhr.status);
									alert("추가 실패");
								}
							}
						}
						xhr.send(data); */
					
					/*window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/sample/main.html"); */
				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});
	    function insertUser(ui_email,ui_id,ui_img,ui_name) {
			var xhr = new XMLHttpRequest();
			var data = {
					ui_id:ui_id,
					ui_email:ui_email,
					ui_img:ui_img,
					ui_name:ui_name
				};
			data = JSON.stringify(data)
			alert(data);
			var url = "/logincheck";
			var method = "POST";
			xhr.open(method, url);
			xhr.setRequestHeader("Content-type", "application/json");
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			xhr.onreadystatechange = function() {

				if (xhr.readyState == 4) {
					if (xhr.status == "200") {
						if (xhr.responseText == '1') {
							alert("회원이 아니어서 회원으로 등록합니다.");
						}
						if (xhr.responseText == '0') {
							alert("이미 등록된 회원입니다. 로그인 진행");
						}
					} else {
						alert(xhr.status);
						alert("등록 실패");
					}
				}
			}
			xhr.send(data);  

		} 
	</script>
</body>
</html>