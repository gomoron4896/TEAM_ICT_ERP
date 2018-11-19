<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta id="_csrf" name="_csrf" th:content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}"/>
<link href="https://code.jquery.com/jquery-3.3.1.min.js">
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type='text/javascript' src='/js/jquery-3.3.1.js'></script>
<title>Insert title here</title>

</head>
<body>
	<form id="loginForm2">

		<label class="" for="exampleInputPassword2">EMAIL</label> <input
			type="email" class="form-control" id="exampleInputEmail2"
			placeholder="Enter email" name="j_username"> <label class=""
			for="exampleInputPassword2" style="margin-top: 10px;">Password</label>
		<input type="hidden" name=${_csrf.headerName} value=${_csrf.token}>
		<input type="password" class="form-control" id="exampleInputPassword2"
			placeholder="Password" name="j_password">

		<button type="submit" class="btn btn-default pull-right"
			style="margin-top: 10px;" value="Login" onclick="ajaxLogin2()">
			로그인</button>

	</form>
	<script>
		function ajaxLogin2() {
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			$(function() {
			    $(document).ajaxSend(function(e, xhr, options) {
			        xhr.setRequestHeader(header, token);
			    });
			});
			$.ajax({

				    headers: {
				        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				    },

				type : 'POST',

				url : '/login',

				data : $("#loginForm2").serialize(),

				dataType : 'json',
				
				
				success : function(data) {

					location.href = "url/main:main";

				},
				error : function(data) {

					alert("로그인실패");

				}

			});

		}
	</script>
</body>
</html>