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
			<div class="ds-ui-icon" data-icon='status' data-mapping='exampleData' data-no='1'></div>
			
		</div>
	
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/app.js"></script>
		<script>
		const exampleData = [{
	         no: 1,
	         company: 'A',
	         good: 'tv',
	         count: 5,
	         price: 250000,
	         date: '2019-03-12',
	         category: 'plus',
	         desc: 'A회사 TV 개당 250000원 5대 수입',
	         img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
	      }]

	    const statusViewOption = [{
	            img: '이미지',
	            col: 'header'
	         },
	         {
	            good: '상품',
	            col: 2
	         },
	         {
	            company: '회사',
	            col: 2
	         },
	         {
	            count: '개수',
	            col: 2
	         },
	         {
	            price: '가격',
	            col: 2
	         },
	         {
	            date: '일자',
	            col: 2
	         },
	         {
	            category: '분류',
	            col: 2
	         },
	      {
	        desc: '설명',
	        col: 1
	      }
	      ]

		</script>
	</body>
</html>