<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>matLot</title>
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

.form-group{
display: inline-block!important;
}
</style>
</head>
<body>

	<main id="container">
		<div class="container-fluid px-4">
			<h1 class="mt-4">자재 LOT조정관리</h1>
			<div class="card mb-4">
				<div class="card-header">
					<div class="card-button btnlist"
						style="display: flex; justify-content: flex-end;">
						<button type="button" class="btn btn-secondary btn-block">삭제</button>
						<input type="submit" value="저장"
							class="btn btn-secondary btn-block">
					</div>
				</div>
			</div>

			<div class="card mb-2 ">
				<div class="card-body">
					<form autocomplete="off" id="dataForm">
						<table class="table table-bbs">
							<tbody>
								<tr>
									<th><label>정산일자</label></th>
									<td>
										<div
											class="tui-datepicker-input tui-datetime-input tui-has-focus">
											<input type="text" id="datepicker-input" class="form-control"
												aria-label="Date-Time"> <span class="tui-ico-date"></span>
										</div>
										<div id="wrapper" style="margin-top: -1px;"></div>
									</td>
								</tr>
								<tr>
									<th><label>자료구분</label></th>
									<td colspan="7">
										<div class="form-group border">
											<label class="ml-1" for="radio-1"> <input
												class="form-radio-input-small" type="radio" name="dDiv"
												value="3" id="radio-1" style="margin: 1px 5px; opacity: 3;"
												checked> <span style="margin: 3px 30px;">정산입고</span>
											</label> <label for="radio-2"> <input
												class="form-radio-input-small" type="radio" name="dDiv"
												value="6" id="radio-2" style="margin: 1px 5px; opacity: 6;">
												<span style="margin: 3px 30px;">정산출고</span>
											</label>
										</div>
									</td>
								</tr>
								<tr>
									<th>특이사항</th>
									
									<td ><input type="text" id="remark" class="form-control ht"
										></td>
									
								</tr>
							</tbody>
						</table>
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

		<div id="grid" class="container-fluid px-4"></div>

	</main>
	<script>
		var datepicker = new tui.DatePicker('#wrapper', {
			date : new Date(),
			input : {
				element : '#datepicker-input',
				format : 'yyyy-MM-dd'
			}
		});

		const gridDate = [];

		const grid = new tui.Grid({
			el : document.getElementById('grid'),
			data : gridDate,
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
				header : '정산량',
				align : 'center'
			}, {
				header : '자재Lot.No',
				align : 'center'
			}, {
				header : '자재재고',
				align : 'center'
			}, {
				header : '비고',

			} ]
		})
	</script>

</body>
</html>