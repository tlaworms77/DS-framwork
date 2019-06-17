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
		<div class=contents>
			<div class='ds-ui-chart circle' id='circle1'
				></div>
			<div class='ds-ui-chart circle' id='circle2'></div>
			<div class='ds-ui-chart circle' id='circle3'></div>

			<div class='ds-ui-chart circle' id='circle4'></div>
		</div>
	</div>

			<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/assets/js/app.js"></script>

			<script type="text/javascript">
				/* category : plus, minus, etc */
				/* 회사 : A,B,C,D,E */
				/* 상품명 : tv, radio, pc, smartphone, teblet, monitor */
				const exampleData = [ {
					no : 1,
					company : 'A',
					good : 'tv',
					count : 5,
					price : 300000,
					date : '2016-12-12',
					category : 'plus',
					desc : ''
				}, {
					no : 2,
					company : 'A',
					good : 'pc',
					count : 10,
					price : 700000,
					date : '2017-01-12',
					category : 'etc',
					desc : ''
				}, {
					no : 3,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 700000,
					date : '2015-02-01',
					category : 'plus',
					desc : ''
				}, {
					no : 4,
					company : 'B',
					good : 'smartphone',
					count : 3,
					price : 500000,
					date : '2018-11-02',
					category : 'etc',
					desc : ''
				}, {
					no : 5,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 400000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 6,
					company : 'C',
					good : 'tv',
					count : 10,
					price : 1800000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 7,
					company : 'C',
					good : 'radio',
					count : 12,
					price : 800000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 8,
					company : 'D',
					good : 'pc',
					count : 21,
					price : 50000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 9,
					company : 'C',
					good : 'pc',
					count : 4,
					price : 1500000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 10,
					company : 'A',
					good : 'pc',
					count : 3,
					price : 2500000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 11,
					company : 'A',
					good : 'pc',
					count : 10,
					price : 500000,
					date : '2019-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 12,
					company : 'A',
					good : 'pc',
					count : 14,
					price : 400000,
					date : '2018-03-01',
					category : 'plus',
					desc : ''
				}, {
					no : 13,
					company : 'A',
					good : 'pc',
					count : 12,
					price : 800000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 14,
					company : 'B',
					good : 'pc',
					count : 18,
					price : 400000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 15,
					company : 'B',
					good : 'pc',
					count : 11,
					price : 900000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 16,
					company : 'B',
					good : 'pc',
					count : 19,
					price : 200000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 17,
					company : 'B',
					good : 'pc',
					count : 8,
					price : 1100000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 18,
					company : 'B',
					good : 'pc',
					count : 5,
					price : 1300000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 19,
					company : 'C',
					good : 'pc',
					count : 7,
					price : 1500000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 20,
					company : 'C',
					good : 'pc',
					count : 14,
					price : 700000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 21,
					company : 'C',
					good : 'pc',
					count : 13,
					price : 500000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 22,
					company : 'C',
					good : 'pc',
					count : 18,
					price : 400000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 23,
					company : 'C',
					good : 'pc',
					count : 3,
					price : 1900000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 24,
					company : 'D',
					good : 'pc',
					count : 17,
					price : 200000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 25,
					company : 'D',
					good : 'pc',
					count : 8,
					price : 1000000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 26,
					company : 'D',
					good : 'pc',
					count : 12,
					price : 500000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 27,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 500000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 28,
					company : 'D',
					good : 'pc',
					count : 15,
					price : 700000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 29,
					company : 'A',
					good : 'pc',
					count : 9,
					price : 1000000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 30,
					company : 'A',
					good : 'pc',
					count : 12,
					price : 100000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 31,
					company : 'A',
					good : 'pc',
					count : 10,
					price : 600000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 32,
					company : 'B',
					good : 'pc',
					count : 14,
					price : 400000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 33,
					company : 'B',
					good : 'pc',
					count : 15,
					price : 900000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 34,
					company : 'B',
					good : 'pc',
					count : 15,
					price : 900000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 35,
					company : 'C',
					good : 'pc',
					count : 12,
					price : 700000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 36,
					company : 'C',
					good : 'pc',
					count : 13,
					price : 300000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 37,
					company : 'C',
					good : 'pc',
					count : 6,
					price : 1700000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				}, {
					no : 38,
					company : 'D',
					good : 'pc',
					count : 20,
					price : 300000,
					date : '2018-11-01',
					category : 'plus',
					desc : ''
				}, {
					no : 39,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 500000,
					date : '2018-11-01',
					category : 'minus',
					desc : ''
				}, {
					no : 40,
					company : 'D',
					good : 'pc',
					count : 9,
					price : 1500000,
					date : '2018-11-01',
					category : 'etc',
					desc : ''
				} ];
				const chartOption2 = [ {
					category : 'etc',
					transname : '미지급'
				}, {
					category : 'plus',
					transname : '수입'
				}, {
					category : 'minus',
					transname : '지출'
				} ];
				const tableOption = [ {
					img : '이미지'
				}, {
					good : '상품'
				}, {
					company : '회사'
				}, {
					count : '개수'
				}, {
					price : '가격'
				}, {
					date : '일자'
				}, {
					category : '분류'
				}, {
					desc : '설명'
				} ];
				ds.ui.chart('#circle1', {
					dataSource: exampleData,
					option : {
						dsStandard : 'good',
						dsCalcDetail : 'price'				
					},
					subOption : {
						
					}
				});
				ds.ui.chart('#circle2', {
					dataSource: exampleData,
					option : {
						dsStandard : 'good',
						dsCalcDetail : 'count'				
					},
					subOption : {
						dsCalc : 'avg'					
					}
				})
				ds.ui.chart('#circle3', {
					dataSource: exampleData,
					option : {
						dsStandard : 'category',
						dsCalcDetail : 'mul price count'				
					},
					subOption : {
						dsCalc : 'avg',
						dsTransferNaming : chartOption2
					}
				})
				ds.ui.chart('#circle4', {
					dataSource: exampleData,
					option : {
						dsStandard : 'category',
						dsCalcDetail : 'mul price count'				
					},
					subOption : {
						dsCalc : 'avg',
						dsTransferNaming : chartOption2,
						dsLegendPosition : 'none'
					}
				})
			</script>
</body>
</html>