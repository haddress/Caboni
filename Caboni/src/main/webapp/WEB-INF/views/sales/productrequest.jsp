<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.btn-secondary {
	margin-left: 20px;
}

span {
	color: #494949;
	font-weight: bold;
}

#pageing {
	border: 1px solid #e6e6e6;
	line-height: 30px;
	background-color: #fff;
	color: #999999;
}

input {
	height: 23px;
	margin-left: 15px;
	display: inline-block;
	padding: 0 10px;
	vertical-align: middle;
	border: 1px solid #dddddd;
	width: 20%;
	color: rgb(94, 94, 94);
	border-radius: 5px;
	text-align: center;
}

#leftinput {
	width: 42%;
}

#startCNDATE {
	margin-right: 10px;
}

#endCNDATE {
	margin-left: 5px;
}

.dataTable-input {
	height: 40px;
}
button {
          background-color: #808080;
          padding: 5px 10px;
          border-radius: 4px;
          cursor: pointer;
					color: white;
        }

        .modal {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .modal .bg {
          width: 100%;
          height: 100%;
        }

        .modalBox {
          position: absolute;
          background-color: #fff;
          width: 400px;
          height: 200px;
          padding: 15px;
        }

        .modalBox button {
          display: block;
          width: 80px;
          margin: 0 auto;
        }

        .hidden {
          display: none;
        }
        .rradio{
        width:120px;
        }
        
   .nameing{ 
	float:right; 
	font-size: medium;
	font-weight: normal;
   }
        
</style>
<body class="sb-nav-fixed">
	<div class="container-fluid px-4">
		 <h2 class="mt-4">생산의뢰관리 <p class="nameing">홈>영업관리>생산의뢰관리</p></h2>
		<div class="card-header" id="btn">
			<div style="display: flex; justify-content: flex-end;">
				<button class="btn btn-secondary">조회</button>
				<button class="btn btn-secondary">등록</button>
				<button class="btn btn-secondary">삭제</button>
			</div>
		</div>
		<div class="card mb-4" id="pageing">
			<div class="card-body">
				<span> 수주일자<input type="date" name="startCNDATE" id="startCNDATE" />~ 
				             <input type="date" name="endCNDATE" id="endCNDATE" /><br> 
				       마감일자<input type="date" name="startCNDATE" id="startCNDATE" />~ 
				             <input type="date" name="endCNDATE" id="endCNDATE" />
				            
				            <form method="get" action="form-action.html">
						      <a>마감여부</a>
						      <label><input type="radio" name="fruit" value="apple" class="rradio"> 완료</label>
						      <label><input type="radio" name="fruit" value="banana" class="rradio"> 미완료</label>
						    </form>
				            
				        
					   제품코드<input type="text" id="leftinput" placeholder="제품코드입력" readonly="readonly"><br>
				</span>
			</div>
		</div>
		<!-- 모달 -->
	
		
		<!-- <div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 생산의뢰목록
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<th>의뢰번호</th>
							<th>제품코드</th>
							<th>거래처코드</th>
							<th>수주일자</th>
							<th>납기일자</th>
							<th>마감일자</th>
							<th>마감여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<th>의뢰번호1</th>
							<th>제품코드1</th>
							<th>거래처코1드</th>
							<th>수주일1자</th>
							<th>납기일1자</th>
							<th>마감일11자</th>
							<th>마감여1부</th>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>suju001</td>
							<td>jepoom001</td>
							<td>2</td>
							<td>1</td>
							<td>2000/01/01</td>
							<td>2000/01/02</td>
							<td>Y</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div> -->
	</div>
</body>
<div class="container-fluid px-4">
	<div class="card mb-4">
		<div class="card-header">
			<i class="fas fa-table me-1"></i> 생산의뢰목록
		</div>
		<div id="grid"></div>
	</div>
</div>

   <div id="search" title="제품검색" style="text-align: center;">       </div>
</body>
<script>
	const gridData = [];

	(function() {
		for (let i = 0; i < 10; i += 1) {
			gridData.push({
				c1 : (i + 1),
				c2 : ((i + 5) % 8) * 100 + i,
				c3 : ((i + 3) % 7) * 60,
				c4 : ((i + 3) % 7) * 60,
				c5 : ((i + 3) % 7) * 60,
				c6 : ((i + 3) % 7) * 60,
				c7 : ((i + 3) % 7) * 60,
				c8 : ((i + 3) % 7) * 60,
			});
		}
	})();

	const grid = new tui.Grid({
		el : document.getElementById('grid'),
		data : gridData,
		scrollX : false,
		rowHeaders : [ 'rowNum', 'checkbox' ],
		columns : [ {
			header : '의뢰번호',
			name : 'c2',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '제품코드',
			name : 'c3',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '거래처코드',
			name : 'c4',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '수주일자',
			name : 'c5',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '납기일자',
			name : 'c6',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '마감일자',
			name : 'c7',
			align : 'center',
			sortingType : 'desc',
			sortable : true
		}, {
			header : '마감여부',
			name : 'c8',
			align : 'center',
			sortingType : 'desc',
			sortable : true
			}]
	});
	
	//거래처정보 모달
	$(function() {
		var dialog = makeModal();

		$("#leftinput").on("click", function() {

			$("#search").load('proName.do', function() {

				dialog.dialog("open");
			})
		});

		function contentsAdd() {
		}

		//모달 만들기
		function makeModal() {
			var dialog = $("#search").dialog({
				autoOpen : false,
				height : 700,
				width : 700,
				modal : true,
			});
			return dialog;
		}
	});
</script>
</html>