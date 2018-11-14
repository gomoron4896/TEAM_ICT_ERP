<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <script type='text/javascript' src='/js/jquery-3.1.1.min.js'></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	나는 메인 페이지

	<%=session.getAttribute("login")%>

	<sec:authorize access="isAnonymous()">
		<a href="${CONTEXT}/url/auth:login-service-test">로그인</a>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="" onclick="Logout()">로그아웃</a>
	</sec:authorize>
	<%-- 사용자 권한 리스트 : <sec:authentication property="principal.member.authList"/> --%>
</body>
<script>
	function Logout() {
		var xhr = new XMLHttpRequest();
		var url = "/logout";
		var method = "post";
		xhr.open(method, url);
		xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				alert(xhr.responseText);
				if (xhr.status == "200") {

					if (xhr.responseText == '1') {
						alert("로그아웃 성공!");
						location.href = '/playerinfo/list';
					}
				} else {
					alert(xhr.status);
					alert("로그아웃  실패");
				}
			}
		}
		xhr.send();
	}
</script>
</html>