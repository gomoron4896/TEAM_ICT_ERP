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
				<th><input type="checkbox" name="allCheck"></th>
				<th>번호</th>
				<th>레벨</th>
				<th>이름</th>
				<th>비고</th>
				<th>삭제</th>
			</tr>
		</thead>

		<tbody id="liBody">
		</tbody>
	</table>
	<button onclick="window.location='/erp1/url/levelinfo:insert'">입력하기</button><br>
	<button onclick=>입력하기</button><br>
</body>
<script type="text/javascript">

var getLevelInfoList = function() {
	var liBody = document.querySelector('#liBody');
	var conf = {
			url : '/erp1/levelinfo/',
			method : 'GET',
			cb : function(res){
				var liList = JSON.parse(res);
				var html = '';
				for(li of liList) {
					html += '<tr>';
					html += '<td><input type="checkbox" value="' + li.linum + '"></td>';
					html += '<td>' + li.linum + '</td>';
					html += '<td>' + li.lilevel + '</td>';
					html += '<td>' + li.liname + '</td>';
					html += '<td>' + li.lidesc + '</td>';
					html += '<td><button data-method="delete" data-num="' + li.linum + '">삭제</button></td>';
					html += '<td><button data-method="update" data-num="' + li.linum + '">삭제</button></td>';
					html += '</tr>';
				}
				liBody.innerHTML = html;
				btnOnClickIdentifier();
			}
	};
	
	var req = new AjaxUtil(conf);
	req.send()
};

var removeLevelInfo = function(target, method) {
	
	var params = {
		linum : target
	};
	
	var conf = {
			url : '/erp1/levelinfo/',
			method : method,
			params : params,
			cb : function(res){
				var rMap = JSON.parse(res);
				alert(rMap.msg);
				window.location = '/erp1/url/levelinfo:list';
			}
	
	};
	
	var req = new AjaxUtil(conf);
	this.send = function() {
		req.send();
	}
};

var setLevelInfo = function(target, method) {
	
	var params = {
		linum : target.linum
	};
	
	var conf = {
			url : '/erp1/levelinfo/',
			method : method,
			params : params,
			cb : function(res){
				var rMap = JSON.parse(res);
				alert(rMap.msg);
				window.location = '/erp1/url/levelinfo:list';
			}
	
	};
	
	var req = new AjaxUtil(conf);
	this.send = function() {
		req.send();
	}
};


var btnOnClickIdentifier = function() {
	var arrBtns = document.querySelectorAll('button[data-method]');
	var method = arrBtns[i].getAttribute('data-method');
	var target = null;
	for(var i = 0 ; i < arrBtns.length ; i++) {
		if(method == 'delete') {
			target = {
					linum : arrBtns[i].getAttribute('data-num')
			}
			arrBtns[i].onclick = new removeLevelInfo(target, method).send;
		} else if(method == 'update') {
			method = arrBtns[i].getAttribute('data-method');
			target = arrBtns[i].getAttribute('data-num');
			arrBtns[i].onclick = new setLevelInfo(target, method).send;
		}
	}
};

window.addEventListener('load', getLevelInfoList());

</script>
</html>