<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>LEVELINFO INSERT</title>
</head>
<body>
<form action="/erp1/levelinfo/insert" method="POST">
레벨 : <input type="number" name="lilevel">
이름 : <input type="text" name="liname">
비고 : <input type="text" name="lidesc">
<button type="submit">입력</button>
</form>
<script type="text/javascript">
	var rAlertCheck = function() {
		var msg = '${rMap.msg}';
		var rCnt = ${rMap.rCnt};
		if(msg!=null) {
			alert(msg);
			if(rCnt == 1) {
				window.location = '/erp1/levelinfo/list';
			} else {
				return;
			}
		}
	}
	
	window.onload = rAlertCheck();
</script>
</body>
</html>