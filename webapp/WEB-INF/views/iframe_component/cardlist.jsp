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
		<div class='ds-ui-cardlistAllBox'>
		</div>
	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script>
		const exampleData = [
				{
					no : 1,
					company : 'A',
					good : 'tv',
					count : 5,
					price : 300000,
					date : '2017-12-12',
					category : 'etc',
					desc : 'A 회사 tv 5대 미지급 내역',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				},
				{
					no : 2,
					company : 'B',
					good : 'pc',
					count : 10,
					price : 700000,
					date : '2018-10-19',
					category : 'plus',
					desc : 'B 회사 pc 10대 수입 내역',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				},
				{
					no : 3,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 700000,
					date : '2018-11-01',
					category : 'minus',
					desc : 'D 회사 pc 13대 수출 내역',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				}];
		const colorOption = [ {
			category : 'etc',
			color : 'red'
		}, {
			category : 'plus',
			color : 'blue'
		}, {
			category : 'minus',
			color : 'green'
		} ];
		const statusViewOption = [ {
			img : '이미지',
			col : 'header'
		}, {
			good : '상품',
			col : 2
		}, {
			company : '회사',
			col : 2
		}, {
			count : '개수',
			col : 2
		}, {
			price : '가격',
			col : 2
		}, {
			date : '일자',
			col : 2
		}, {
			category : '분류',
			col : 2
		}, {
			desc : '설명',
			col : 1
		} ]
		ds.ui.cardlist('.ds-ui-cardlistAllBox', {
	           dataSource: exampleData,
	           dsColor: colorOption,
	           option: {
	               dsCategory: 'category',
	               dsDetail: 'date company category',
	           },
	           subOption: {
	               dsSetting: true,
	               dsIcon: 'status modify remove'
	          }
	    });
	</script>

</body>
</html>