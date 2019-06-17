<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/tutorial.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/codemirror.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/simplescrollbars.css">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp"/>

		<div id="tutorial-content-box">
			<div id="tutorial-contents">
				<div class="tutorial-content-title long-title">
					<h1>데이터 테이블</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;데이터 소스에서 항목들을 테이블 형식으로 나타내는 데이터 테이블로서</p>
						<p>&nbsp;검색 및 필터 기능, 세로 길이 지정, 고정 항목 지정, 항목 개수를 동적으로 제어 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
						<h3>&nbsp;기본</h3>
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode xml" id="codemirror0">
<div id="ds-ui-data-table" class="ds-ui-data-table"></div></textarea>
						</div>
						<div class="tutorial-component-description">
<p><span class="ds-tag-value">&nbsp;ds-ui-data-table</span>&#9;아이디, 클래스 명칭</p>
						</div>
						
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode javascript" id="javascript0">
$(document).ready(function () {
	ds.ui.datatable('#ds-ui-data-table', {
		dataSource: exampleData,
		fixedColumn: 'company',
		alias: { 
			company : "회사명", 
			good : "상품", 
			count : "판매수량", 
			price : "판매가", 
			date : "판매일", 
			category : "카테고리명", 
			desc : "내역"
		},
		height: '50%',
		search: true,
   });
});
    						</textarea>
    					</div>
    					<h3>&nbsp;리랜더링</h3>
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode javascript" id="javascript1">
$(document).ready(function () {
	ds.ui.datatableRefresh('#ds-ui-data-table', {
		dataSource: exampleData,
		fixedColumn: 'company',
		alias: { 
			company : "회사명", 
			good : "상품", 
			count : "판매수량", 
			price : "판매가", 
			date : "판매일", 
			category : "카테고리명", 
			desc : "내역"
		}
   });
});
    						</textarea>
    					</div>
    					<div class="tutorial-component-description">
<p><span class="ds-tag-class">&nbsp;id</span>&#9; 데이터테이블 고유 id 지정</p>
<br/>
<p><span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 바인딩 될 JSON 객체명</p>
<p><span class="ds-tag-value">&nbsp;fixedColumn</span>&#9;대표로 지정할 고정 컬럼 선택</p>
<p><span class="ds-tag-value">&nbsp;alias</span>&#9;각 항목별 별칭 부여</p>
<p><span class="ds-tag-value">&nbsp;height</span>&#9;테이블 높이 지정 (기본값 : 70%)</p>
<p><span class="ds-tag-value">&nbsp;search</span>&#9;검색 기능 유무 선택</p>
						</div>
						<h3>&nbsp;데이터 속성</h3>
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode xml" id="codemirror1">
<div id="ds-ui-data-table" class="ds-ui-data-table" data-ui-height="60%"
	data-ds-column-header="company" data-search="true"></div></textarea>
						</div>
						<div class="tutorial-component-description">
							<p><span class="ds-tag-value">&nbsp;data-ui-height</span>&#9;테이블 높이 지정 (기본값 : 70%)</p>
						    <p><span class="ds-tag-value">&nbsp;data-ds-column-header</span>&#9;대표로 지정할 고정 컬럼 선택</p>
						    <p><span class="ds-tag-value">&nbsp;data-search</span>&#9;검색 기능 유무 선택</p>
						</div>
						</div>

						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/datatable"></iframe>
							</div>
						</div>
					</div>
				</div>

			</div>
			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp"/>
			
		</div>



	</div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/codemirror.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script
	src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
	<script type="text/javascript">
	var textarea;
	for(let i=0;i<$(".xml").length;i++){
		textarea = document.getElementById('codemirror'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "xml",
			readOnly: "false"   
		});
	}
	for(let i=0;i<$(".javascript").length;i++){
		textarea = document.getElementById('javascript'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "javascript",
			readOnly: "false"   
		});
	}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>