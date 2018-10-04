<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/erp1/levelinfo" method="GET">
<input type="text" name="liname">
<button type="submit">이름으로 검색</button>
</form>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>레벨</th>
				<th>이름</th>
				<th>비고</th>
			</tr>
		</thead>

		<tbody>
			<c:if test="${empty liList}">
				<tr>
					<td colspan="4">음슴</td>
				</tr>
			</c:if>
			<c:forEach items="${liList }" var="li">
				<tr>
					<td><input type="checkbox" name="linum" value="${li.linum }"></td>
					<td>${li.linum }</td>
					<td>${li.lilevel }</td>
					<td>${li.liname }</td>
					<td>${li.lidesc }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="window.location='/erp1/url/levelinfo:insert'">입력하기</button><br>
	<button onclick="window.location='/erp1/url/levelinfo:update'">입력하기</button><br>
	<button onclick=>입력하기</button><br>
</body>
<script type="text/javascript">
function removeLevelInfo() {
	
}
</script>
</html>