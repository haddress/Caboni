<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<style>
h1 {
	margin: 20px 10px 10px 20px;
}

#container {
	width: 100%;
	clear: both;
}

.left {
	width: 35%;
	float: left;
	margin: 10px;
}

.right {
	width: 60%;
	float: right;
	margin: 10px;
}

#menu {
	float: right;
	margin-right: 20px;
	text-align: right;
}
#myf {
	margin: 10px;
	width: 900px;
	clear: both;
}
#myf>label {
	width: 80px;
	font-size: 80%;
}
</style>
</head>

<body>
	<h1>공통코드 관리</h1>
	<div id="menu">
		<a href="/">홈</a> > 기준정보관리 > <b>공통코드관리</b>
	</div>
	<div id="btns" class="card-header">
		<button type="button" class="btn btn-secondary">새자료</button>
		<button type="button" class="btn btn-secondary">저장</button>
		<button type="button" class="btn btn-secondary">삭제</button>
	</div>
	<form action="#" id="myf">
		<label for="cCodeid">코드ID</label> <input type="text" id="cCodeid">
		<label for="cExplain">코드설명</label> <input type="text" id="cExplain">
		<label for="cName">코드명</label> <input type="text" id="cName">
		<label for="cExplaind">코드상세</label> <input type="text" id="cExplaind">
		<label for="cClass">코드분류</label> <input type="text" id="cClass">
		<label for="cNote">비고</label> <input type="text" id="cNote">
	</form>
	<div id="container">
		<div class="left">
			<div id="grid"></div>
		</div>
		<div class="right">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> 코드상세
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th><input type="radio"></th>
								<th>코드ID</th>
								<th>코드명</th>
								<th>코드상세</th>
								<th>코드분류</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="radio" name="code"></td>
								<td>002</td>
								<td>영업의뢰</td>
								<td>001</td>
								<td>001</td>
								<td></td>
							</tr>
							<tr>
								<td><input type="radio" name="code"></td>
								<td>003</td>
								<td>수주의뢰</td>
								<td>001</td>
								<td>001</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	var gridData = [];

	var grid = new tui.Grid({
		el : document.getElementById('grid'),
		data : gridData,
		scrollX : false,
		scrollY : false,
		rowHeaders : [ 'rowNum' ],
		columns : [ {
			header : '코드ID',
			name : 'c1',
			align : 'center',
		}, {
			header : '코드설명',
			name : 'c2',
			align : 'center'
		} ]
	});
</script>
</html>