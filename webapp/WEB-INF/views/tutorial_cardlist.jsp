<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />

		<div id="tutorial-content-box">
			<div id="tutorial-contents">
				<div class="tutorial-content-title long-title">
					<h1>카드리스트</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;최대 3개의 요소를 가질 수 있는 카드형 디자인의 카드리스트로</p>
						<p>&nbsp;데이터 소스 사용시 상세보기, 데이터 수정, 삭제 세가지의 설정 기능을 추가 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
  <div class='ds-ui-cardlistAllBox'></div></textarea>
							</div>
					<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
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
	  	  });</textarea>
							</div>
							
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-cardlistAllBox</span>&#9;클래스
									명칭
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 매핑 될
									JSON 객체명
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;dsColor</span>&#9;dsCategory 기준 요소별 사용자 색상 지정
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;dsDetail</span>&#9;매핑 될 Column 지정
								</p>
								<p>&#8251; dsDetail의 개수는 최대 3개 항목까지 설정 가능합니다.</p>
								<p>
									<span class="ds-tag-value">&nbsp;dsSetting</span>&#9;카드리스트
									상세보기, 수정, 삭제 기능 유무 선택
								</p>
								<p>&#8251; 기본 dsSetting의 기능 아이콘은 status, modify, remove이며 세 개의 기능 아이콘중 사용자가 dsIcon의 항목을 변경하여 변경 가능합니다.</p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/cardlist"></iframe>
							</div>
						</div>
					</div>
				</div>

			</div>
			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

		</div>



	</div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/codemirror.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
	<script type="text/javascript">
		var textarea;
		for (let i = 0; i < $(".xml").length; i++) {
			textarea = document.getElementById('codemirror' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				value : "function myScript(){return 100;}\n",
				mode : "xml",
				readOnly : "false"
			});
		}
		for (let i = 0; i < $(".javascript").length; i++) {
			textarea = document.getElementById('javascript' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				value : "function myScript(){return 100;}\n",
				mode : "javascript",
				readOnly : "false"
			});
		}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>