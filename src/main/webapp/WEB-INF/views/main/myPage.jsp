<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	var AjaxUtil = function(conf) {
		var xhr = new XMLHttpRequest();
		var url = conf.url;
		var method = conf.method ? conf.method : 'GET';
		var param = conf.param;

		var beforeSend = conf.beforeSend ? conf.beforeSend : function(res) {
			alert(res);
		}

		var success = conf.success ? conf.success : function(res) {
			alert(res);
		}
		var error = conf.error ? conf.error : function(res) {
			alert(res);
		}

		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == "200") {
					success(xhr.responseText);
				} else {
					error(xhr.responseText);
				}
			}
		}
		xhr.open(method, url);

		this.send = function() {
			xhr.send();
		}

	};
	window
			.addEventListener(
					'load',
					function() {
						var conf = {
							url : '/userCheck',
							beforeSend : function(xhr) {
								xhr.setRequestHeader("${_csrf.headerName}",
										"${_csrf.token}");
							},
							success : function(res) {
								contentType: "application/json; charset=UTF-8";
								alert(res)
								res = JSON.parse(res);
								alert(res)
								var html = '';

								html += '<form id="frm" action="/updateUser" method="post" enctype="multipart/form-data">'
								html += '사용자 아이디 : <input type="text" name="ui_id" value="'+res.ui_id+'"><br>';
								html += '사용자 이메일 : <input type="text" name="ui_email" value="'+res.ui_email+'"><br>';
								html += '사용자 이름 : <input type="text" name="ui_name" value="'+res.ui_name+'"><br>';
								html += '사용자 돈 : <input type="text" name="ui_prefund" value="'+res.ui_prefund+'"><br>';
								html += '사용자 권한 : <input type="text" name="ui_roll" value="'+res.ui_roll+'"><br>';
								html += '사용자 이미지 : <img id="preView" src="'+res.ui_img+'" width="300px"><br>';
								html += '<input type="hidden" name="ui_img" value="'+res.ui_img+'"><br>';
								html += '<input type="file" name="ui_up_img" onchange="imageURL(this)" value="'
										+ res.ui_img + '"><br>';
								html += '<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />';
								html += '<button type="button" onclick="test()" id="uploadbutton">클릭</button>';
								html += '</form>';

								document.querySelector('#uiBody')
										.insertAdjacentHTML('beforeend', html);
							}
						}
						var au = new AjaxUtil(conf);
						au.send();

					})
</script>
<body>
	나의 페이지입니다. ${username} 님 환영합니다.
	<div id="uiBody"></div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}"> ${_csrf.parameterName} ${_csrf.token}
	<script>
		function test() {
			alert("클릭");
			var formData = new FormData($("#frm")[0]);
			var xhr = new XMLHttpRequest();

			$.ajax({
				url : '/updateUser',
				data : formData,
				dataType : 'json',
				contentType : false,
				processData : false,
				type : 'POST',
				beforeSend : function(xhr) {	
					xhr.setRequestHeader("${_csrf.headerName}",
							"${_csrf.token}");
				},
				success : function(res) {
					if(res==1) {
						alert("프로필 변경이 완료되었습니다.")
						location.href='/url/clib:index';
					}
				}
			});

		};

		 function imageURL(input) {
			var filename = input.value;
			var fileName = filename.slice(filename.indexOf(".") + 1).toLowerCase();
			if(fileName != "jpg" && fileName != "png"){
    			alert("이미지 파일은 (jpg, png) 형식만 등록 가능합니다.");
    			input.value=null;
    			return;
            }
			
			if (input.files && input.files[0]) {
		            var reader = new FileReader();
		            
		            reader.onload = function(e) {
		                $('#preView').attr('src', e.target.result)
		                 .width(300)
		                 .height(300);
		            }

		            reader.readAsDataURL(input.files[0]);
		        }
		    }
	</script>
</body>
</html>