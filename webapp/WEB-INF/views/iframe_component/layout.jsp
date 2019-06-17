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
			<div class="header">
			<div id="ds-ui-menu">
				<div>Toggle Menu</div>
				<div>Menu1</div>
				<div>Menu2</div>
				<div>Menu3</div>
				<div>Menu4</div>
			</div>
			<div id="ds-ui-title">Title</div>
		</div>
		<div class="navigator">
			<div id="ds-ui-subtopic">
				<div data-href=''>SubMenu1</div>
				<div data-href=''>SubMenu2</div>
				<div data-href=''>SubMenu3</div>
				<div data-href='' class="selected">SubMenu4</div>
			</div>
		</div>

		<div class="contents">
		
		</div>

		<div class="footer">
			<div class="ds-ui-footerBox">
				<div data-color='#00AAF0' data-direction='horizen'>
					<p>Footer</p>
				</div>
				<div data-color='#E74D3A'>
					<p>Footer</p>
					<p>Footer</p>
				</div>
			</div>

			<div class="ds-ui-footerBox">
				<div data-color='#6498B5' data-direction='horizen'>
					<p>Footer</p>
					<p>Footer</p>
				</div>
			</div>
			<div class="ds-ui-footerBox">
				<div data-color='#6498B5' data-direction='vertical'>
					<p>Footer</p>
				</div>
				<div data-color='#E74D3A'>
					<p>Footer</p>
				</div>
				<div data-color='#ABACB2'>
					<p>Footer</p>
				</div>
			</div>
		</div>
		</div>
	
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/assets/js/app.js"></script>
		<script>
		const exampleData = [ 
			{no : 1, company : 'A', good : 'tv', count : 5,	price : 300000,	date : '2016-12-12', category : 'plus', desc : ''},
			{no : 2, company : 'A', good : 'pc', count : 10, price : 700000, date : '2017-01-12', category : 'etc', desc : ''},
			{no : 3, company : 'D', good : 'pc', count : 13, price : 700000, date : '2015-02-01', category : 'plus', desc : ''},
			{no : 4, company : 'B', good : 'smartphone', count : 3, price : 500000, date : '2018-11-02', category : 'etc', desc : ''},
			{no : 5, company : 'D', good : 'pc', count : 13, price : 400000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 6, company : 'C', good : 'tv', count : 10, price : 1800000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 7, company : 'C', good : 'radio', count : 12, price : 800000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 8, company : 'D', good : 'pc', count : 21, price : 50000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 9, company : 'C', good : 'pc', count : 4, price : 1500000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 10, company : 'A', good : 'pc', count : 3, price : 2500000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 11, company : 'A', good : 'pc', count : 10, price : 500000, date : '2019-11-01', category : 'plus', desc : ''},
			{no : 12, company : 'A', good : 'pc', count : 14, price : 400000, date : '2018-03-01', category : 'plus', desc : ''},
			{no : 13, company : 'A', good : 'pc', count : 12, price : 800000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 14, company : 'B', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 15, company : 'B', good : 'pc', count : 11, price : 900000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 16, company : 'B', good : 'pc', count : 19, price : 200000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 17, company : 'B', good : 'pc', count : 8, price : 1100000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 18, company : 'B', good : 'pc', count : 5, price : 1300000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 19, company : 'C', good : 'pc', count : 7, price : 1500000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 20, company : 'C', good : 'pc', count : 14, price : 700000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 21, company : 'C', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 22, company : 'C', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 23, company : 'C', good : 'pc', count : 3, price : 1900000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 24, company : 'D', good : 'pc', count : 17, price : 200000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 25, company : 'D', good : 'pc', count : 8, price : 1000000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 26, company : 'D', good : 'pc', count : 12, price : 500000, date : '2018-11-01', category : 'etc',desc : ''},
			{no : 27, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 28, company : 'D', good : 'pc', count : 15, price : 700000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 29, company : 'A', good : 'pc', count : 9, price : 1000000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 30, company : 'A', good : 'pc', count : 12, price : 100000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 31, company : 'A', good : 'pc', count : 10, price : 600000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 32, company : 'B', good : 'pc', count : 14, price : 400000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 33, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 34, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 35, company : 'C', good : 'pc', count : 12, price : 700000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 36, company : 'C', good : 'pc', count : 13, price : 300000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 37, company : 'C', good : 'pc', count : 6, price : 1700000, date : '2018-11-01', category : 'etc', desc : ''},
			{no : 38, company : 'D', good : 'pc', count : 20, price : 300000, date : '2018-11-01', category : 'plus', desc : ''},
			{no : 39, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'minus', desc : ''},
			{no : 40, company : 'D', good : 'pc', count : 9, price : 1500000, date : '2018-11-01', category : 'etc',desc : ''} ];

		const tableOption = [{
            img: '이미지'
        },
        {
            good: '상품'
        },
        {
            company: '회사'
        },
        {
            count: '개수'
        },
        {
            price: '가격'
        },
        {
            date: '일자'
        },
        {
            category: '분류'
        },
        {
            desc: '설명'
        }
    ];
		</script>
	
	</body>
</html>