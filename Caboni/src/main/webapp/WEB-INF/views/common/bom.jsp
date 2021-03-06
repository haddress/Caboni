<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<style>
h1 {
	margin: 20px 10px 10px 20px;
}

#myf {
	margin: 10px;
	width: 600px;
	clear: both;
}

#myf>label {
	width: 80px;
	font-size: 80%;
}

#menu {
	float: right;
	margin-right: 20px;
	text-align: right;
}
</style>
<body>

	<div id="container">

		<h1>제품BOM정보 관리</h1>
		<div id="menu">
			<a href="/">홈</a> > 기준정보관리 > <b>제품BOM정보관리</b>
		</div>
		<div id="btns" class="card-header">
			<button type="button" class="btn btn-secondary">검색</button>
			<button type="button" class="btn btn-secondary">저장</button>
			<button type="button" class="btn btn-secondary">삭제</button>
		</div>
		<form action="#" id="myf">
			<label for="giCode">제품코드</label> <input type="text" id="giCode">
			<label for="miCode">자재코드</label> <input type="text" id="miCode">
			<label for="bam">사용량</label> <input type="text" id="bam">
			<label for="bNote">비고</label> <input type="text" id="bNote">
		</form>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> BOM상세
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th><input type="checkbox"></th>
							<th>자재코드</th>
							<th>자재명</th>
							<th>사용량</th>
							<th>제품단위</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>002</td>
							<td>7E-ABC</td>
							<td>1EA</td>
							<td>BOX</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>

</body>
</html>