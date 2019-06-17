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
		<div class="ds-ui-rangeslider" data-label='범위 슬라이더 #1' data-min=0 data-value=100 data-max=500>
		</div>
         <div class="ds-ui-rangeslider" data-label='범위 슬라이더 #2' data-min=0 data-value=100 data-max=500 data-step='50'>
         </div>
         <div class="ds-ui-rangeslider" data-label='범위 슬라이더 #1 - 비활성화' data-min=0 data-value=50 data-max=500 data-disabled="true">
         </div>
         <div class="ds-ui-rangeslider" data-min=0 data-value=150 data-max=500 data-step='50'>
            </div>
         <div class="ds-ui-rangeslider" data-min=0 data-value=50 data-max=500 data-disabled='true'>
         </div>
         </div>
	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>
</html>