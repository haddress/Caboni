<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>

	<div>
		<div class="container-fluid px-4">
			<h1>재고조회</h1>
			<div class="card mb-2 ">
				<div class="card-body">
					<form autocomplete="off" id="dataForm">
						<table class="table table-bbs">
							<tbody>
								<tr>
									<th><label>작업일자</label></th>
									<td>
										<div class="mt-1 grid-option-area">
											<div
												class="tui-datepicker-input tui-datetime-input tui-has-focus">
												<input type="text" id="startpicker-input"
													class="form-control" aria-label="Date-Time" tabindex="1">
												<span class="tui-ico-date "></span>
												<div id="startpicker-container" style="margin-left: -1px;"></div>
											</div>

											<span class="mg5">~</span>
											<div
												class="tui-datepicker-input tui-datetime-input tui-has-focus">
												<input type="text" id="endpicker-input" class="form-control"
													aria-label="Date-Time" tabindex="1"> <span
													class="tui-ico-date "></span>
												<div id="endpicker-container" style="margin-left: -1px;"></div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th><label>자재코드</label></th>
									<td><input type="text" class="form-control ht"
										maxlength="10" tabindex="2"></td>
									<td><button type="button" class="btn btn-secondary"
											style="margin-right: 5px;">🔍</button></td>
									<th><label>자재명</label></th>
									<td><input type="text" class="form-control ht"
										maxlength="10" tabindex="2"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>

		<div class="container-fluid px-4">
			<div id="grid"></div>
		</div>
	</div>
	<script>
		/* 입고일자 데이터 피커  */
		var today = new Date();
		var picker = tui.DatePicker.createRangePicker({
			startpicker : {
				date : today,
				input : '#startpicker-input',
				container : '#startpicker-container'
			},
			endpicker : {
				date : today,
				input : '#endpicker-input',
				container : '#endpicker-container'
			},
			selectableRanges : [ [
					today,
					new Date(today.getFullYear() + 1, today.getMonth(), today
							.getDate()) ] ]
		});

		const gridData = [];

		const grid = new tui.Grid({
			el : document.getElementById('grid'),
			data : gridData,
			scrollX : false,
			bodyHeight : 500,
			rowHeaders : [ 'rowNum' ],
			columns : [ {
				header : '자재코드',
				sortingType : 'desc',
				align : 'center',
				sortable : true
			}, {
				header : '자재명',
				align : 'center'
			}, {
				header : '자재구분',
				align : 'center'
			}, {
				header : '안전재고',
				align : 'center'
			}, {
				header : '이월량',
				align : 'center'
			}, {
				header : '입고량',
				align : 'center'
			}, {
				header : '출고량',
				align : 'center'
			}, {
				header : '현재고',
				align : 'center'
			}, {
				header : '미달량',
				align : 'center'
			}, {
				header : '특기사항',
				align : 'center'
			} ],
		/* 		summary : {
					height : 40,
					position : 'bottom',
					columnContent : {
						c6 : {
							template : function(valueMap) {
								return `TOTAL: ${valueMap.sum}`;
							}
						}
					}
				} */
		});
	</script>
</body>
</html>