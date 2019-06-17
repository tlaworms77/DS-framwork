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
			<h2>alert</h2>
         <button id="btn-basic" class="ds-ui-button">alert 메세지박스</button><br><br>
         <button id="btn-basic2" class="ds-ui-button">alert 메세지박스2</button><br><br>
         <button id="btn-basic3" class="ds-ui-button">alert 메세지박스(주의사항)</button><br><br>
         <br><hr>
         <h2>confirm</h2>
         <button id="btn-basic4" class="ds-ui-button">confirm 메세지박스</button><br><br>
         <button id="btn-basic5" class="ds-ui-button">confirm 메세지박스(주의사항)</button><br><br>
         <br><hr>
         <h2>error</h2>
         <button id="btn-basic6" class="ds-ui-button">error 메세지박스</button><br><br>
         <button id="btn-basic7" class="ds-ui-button">error 메세지박스(자세히)</button><br><br>
         <br><hr>
		</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script>
	const exampleData = [ {
		no : 1,
		company : '더존비즈온',
		good : 'tv',
		count : 5,
		price : 300000,
		date : '2017-12-12',
		category : 'plus',
		desc : '안녕하세요? 최기석입니다 반갑습니다 하이하이'
	}
	];
	const option2 = [ {
		category : 'etc',
		transname : '미지급'
	}, {
		category : 'plus',
		transname : '수입'
	}, {
		category : 'minus',
		transname : '지출'
	} ];
	</script>
</body>
</html>