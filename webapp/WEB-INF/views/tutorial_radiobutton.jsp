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
				<div class="tutorial-content-title">
					<h1>라디오 버튼</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;라디오 버튼으로 버튼 선택 지정, 버튼 위치 지정, 활성화 유무, 레이블 유무를 지정 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<!-- #1 -->
<div class="ds-ui-radiobutton" data-checked='true'
	data-name='radio1'></div>

<div class="ds-ui-radiobutton" data-location='right'
	data-checked='true' data-name='radio1'></div>
            
<div class="ds-ui-radiobutton" data-name='radio1'
	data-disabled='true'></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-radiobutton</span>&#9;클래스
									명칭
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-checked</span>&#9;라디오 버튼
									선택
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-location</span>&#9;라디오 버튼
									레이블 위치 선택 (기본값 : left)
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-disabled</span>&#9;라디오 버튼
									활성화 유무 선택
								</p>
							</div>
							<h3>&nbsp;레이블 없는 라디오 버튼</h3>
    						<div class="tutorial-component-source">
        						<textarea class="tutorial-sourcecode xml" id="codemirror1">
<!-- #2 -->
<div class="radiobutton-wrapper">
	<div class="ds-ui-radiobutton" data-name='radio2'
		data-label='false' data-checked="true"></div>
	<div class="ds-ui-radiobutton" data-name='radio2'
		data-label='false'></div>
    <div class="ds-ui-radiobutton" data-name='radio2'
    	data-label='false' data-disabled="true"></div>
</div></textarea>
    						</div>
    						<div class="tutorial-component-description">
         						<p><span class="ds-tag-value">&nbsp;data-label</span>&#9;레이블 유무 선택</p>
    						</div>
						</div>

						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/radiobutton"></iframe>
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