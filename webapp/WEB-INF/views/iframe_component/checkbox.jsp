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
		
		<div class="ds-ui-checkbox" data-checked='true'></div>
		<div class="ds-ui-checkbox" data-location='right'></div>
		<div class="ds-ui-checkbox" data-shape='circle' data-checked='true'>
		</div>
		<div class="ds-ui-checkbox" data-disabled='true' data-checked='true'>
		</div>
		<div class="checkbox-wrapper">
			<div class="ds-ui-checkbox" data-label='false'></div>
			<div class="ds-ui-checkbox" data-shape='circle' data-checked='true'
				data-label='false'></div>
			<div class="ds-ui-checkbox" data-label='false' data-disabled='true'>
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