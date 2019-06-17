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
			<div class="ds-ui-icon"></div>
         <!-- 아이콘 로더 -->
         <div class="ds-ui-icon" data-icon='refresh'></div>
         <!-- 없을 때 -->
         <div class="ds-ui-icon" data-icon='location' data-location='http://m.douzone.com/'></div>
         <!-- remove -->
         <div class="ds-ui-icon" data-icon='remove'></div>
			
		</div>
	
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	
	</body>
</html>