<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.tui-datepicker {
	z-index: 99;
}

.mg5 {
	margin-top: 5px;
}

.ht {
	height: 28px;
}
</style>
</head>
<body>
	<div>
		<!-- 전체를 관통  -->
		<div class="container-fluid px-4">
			<h1 class="mt-4">출고관리</h1>
			<div class="card mb-2">
				<div class="card-header">
					<div style="display: flex; justify-content: flex-end;">
						<button type="button" id="saveBtn" class="btn btn-secondary"
							style="margin-right: 5px;">저장</button>
						<button type="button" id="removeBtn" class="btn btn-secondary"
							style="margin-right: 5px;">삭제</button>
					</div>
				</div>
			</div>

			<div class="card mb-2 ">
				<div class="card-body">
					<form autocomplete="off" id="dataForm">
						<div class="col-6">
							<table class="table table-bbs">
								<tbody>
									<!-- 출고일자 조회  -->
									<tr>
										<th><label>출고일자</label></th>
										<td colspan="6">
											<div
												class="tui-datepicker-input tui-datetime-input tui-has-focus">
												<input type="text" class="form-control" id="outDt"
													aria-label="Date-Time" tabindex="1"> <span
													class="tui-ico-date"></span>
											</div>
											<div id="wrapper" style="margin-top: -1px;"></div>
										</td>
									</tr>
									<!-- 출고 공정 조회 -->
									<tr>
										<th><label>출고공정</label></th>
										<td><input type="text" class="form-control ht"
											maxlength="10" tabindex="2"></td>
										<td><button type="button" class="btn btn-secondary"
												style="margin-right: 5px; height: 28px; width: 28px;">🔍</button></td>
										<td colspan="5">
										<th><label>공정명</label></th>
										<td><input type="text" class="form-control ht"
											maxlength="10" tabindex="2"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="container-fluid px-4 mb-2">
							<div style="display: flex; justify-content: flex-end;">
								<button type="button" class="btn btn-secondary"
									style="margin-right: 5px;">추가</button>
								<button type="button" class="btn btn-secondary"
									style="margin-right: 5px;">삭제</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="container-fluid px-4">
			<div id="grid"></div>
		</div>
	</div>
	<script>
		const datepicker = new tui.DatePicker('#wrapper', {
			date : new Date(),
			input : {
				element : '#outDt',
				format : 'yyyy-MM-dd'
			},
			language : 'ko'

		});

		const gridData = [];

		const grid = new tui.Grid({
			el : document.getElementById('grid'),
			data : gridData,
			scrollX : false,
			bodyHeight : 500,
			rowHeaders : [ 'checkbox' ],
			columns : [ {
				header : '자재코드',
				sortingType : 'desc',
				align : 'center',
				sortable : true
			}, {
				header : '자재명',
				align : 'center'
			}, {
				header : '규격',
				align : 'center'
			}, {
				header : '자재단위',
				align : 'center'
			}, {
				header : '출고량',
				align : 'center'
			}, {
				header : '자재LOT.NO',
				align : 'center'
			}, {
				header : '비고',
				align : 'center'
			} ]
		});
	</script>
</body>
</html>