<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/ds-header-link.js"></script>
</head>
<body class="body">

	<!-- ########## 컴포넌트 넣는 곳 ########## -->
	<div class="App">
		<div class="contents">
			<h3 style="text-align: left; padding: 2px 0 0 7px;">기본</h3>
			<div style="height: 7%;">
				<input type="text" id="date1" class="ds-ui-datepicker"> <input
					type="text" id="date2" class="ds-ui-datepicker" value="20190630">
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">상태별</h3>
			<div style="height: 15%;">
				<input type="text" id="date3" class="ds-ui-datepicker"> <input
					type="text" id="date4" class="ds-ui-datepicker required"> <input
					type="text" id="date5" class="ds-ui-datepicker readonly"> <input
					type="text" id="date6" class="ds-ui-datepicker disabled">
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">읽기 전용여부
				설정/가져오기</h3>
			<div style="height: 8%;">
				<input type="text" id="date7" class="ds-ui-datepicker">
			</div>
			<div style="padding-left: 6px; text-align: left; height: 8%;">
				<button id="btnSetReadonly" class="ds-ui-button">읽기전용 설정</button>
				<button id="btnRemoveReadonly" class="ds-ui-button">읽기전용 해제</button>
				<button id="btnReadonlyState" class="ds-ui-button">읽기전용 상태</button>
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">비활성화여부
				설정/가져오기</h3>
			<div style="height: 7%;">
				<input type="text" id="date8" class="ds-ui-datepicker"
					value="20190617">
			</div>
			<div style="padding-left: 6px; text-align: left; height: 8%;">
				<button id="btnDisable" class="ds-ui-button">활성화</button>
				<button id="btnEnable" class="ds-ui-button">비화성화</button>
				<button id="btnEnableState" class="ds-ui-button">활성화 상태</button>
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">값/텍스트 가져오기</h3>
			<div style="height: 8%;">
				<input type="text" id="date9" class="ds-ui-datepicker"
					value="20190520">
			</div>
			<div style="padding-left: 6px; text-align: left; height: 8%;">
				<button id="btnValue" class="ds-ui-button">값 가져오기(value)</button>
				<button id="btnText" class="ds-ui-button">텍스트 가져오기(text)</button>
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">값 설정하기</h3>
			<div style="height: 8%;">
				<input type="text" id="date10" class="ds-ui-datepicker">
			</div>
			<div style="height: 8%; text-align: left; padding-left: 6px">
				<button id="btnSetValue" class="ds-ui-button">값 설정</button>
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">최소, 최대값 설정하기</h3>
			<div style="height: 8%;">
				<input type="text" id="date11" class="ds-ui-datepicker"
					data-ds-min="20190501" data-ds-max="20190728">
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">오늘날짜 세팅</h3>
			<div style="height: 8%;">
				<input type="text" id="date12" class="ds-ui-datepicker"
					data-ds-init-date="true">
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">레이블추가</h3>
			<div style="height: 8%;">
				<input type="text" id="date14" class="ds-ui-datepicker"
					data-ds-label="날짜">
			</div>
			<hr>
			<h3 style="text-align: left; padding: 2px 0 0 7px;">다국어 지원(en)</h3>
			<div style="height: 8%;">
				<input type="text" id="date13" class="ds-ui-datepicker"
					data-ds-language="en">
			</div>
		</div>
	</div>


	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>

	<script>
	$(document).ready(function () {   
        // 읽기 전용여부 설정/가져오기
        $("#btnSetReadonly").click(function () {
           ds.ui.datepicker('#date7').readonly(true);
        });
        $("#btnRemoveReadonly").click(function () {
           ds.ui.datepicker('#date7').readonly(false);
        });
        $("#btnReadonlyState").click(function () {
           ds_msgbox.alert(ds.ui.datepicker('#date7').readonly()).done(()=>{}); // tutorial
        });

           // 비활성화여부 설정/가져오기
        $("#btnDisable").click(function () {
           ds.ui.datepicker('#date8').disabled(true);
        });
        $("#btnEnable").click(function () {
           ds.ui.datepicker('#date8').disabled(false);
        });
        $("#btnEnableState").click(function () {
           ds_msgbox.alert(ds.ui.datepicker('#date8').disabled()).done(()=>{}); // tutorial
        });

        // 값/텍스트 가져오기
        $("#btnValue").click(function () {
           ds.ui.datepicker("#date9").value();
        });
        $("#btnText").click(function () {
           ds.ui.datepicker("#date9").text();
        });

        // 값 설정하기
        $("#btnSetValue").click(function () {
             ds.ui.datepicker("#date10").value("20151212");
         });
     });	
	</script>

</body>
</html>