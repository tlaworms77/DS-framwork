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
					<h1>아코디언 메뉴</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;아코디언 메뉴로 제목을 클릭하면 내용이 펼쳐지고 다시 클릭하면 축소되며 선택 지정, 활성화 유무, 말줄임표 라인 수를 지정 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<button class="ds-ui-accordion">아코디언 메뉴 #1</button>
<div class="accordion-text">
	<p>
		Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque illum enim, laudantium dolore
		vero quam vitae! Culpa iure debitis accusantium, repellendus delectus omnis accusamus eaque
		rerum obcaecati, excepturi assumenda distinctio.
	</p>
</div></textarea>
							</div>

							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-accordion</span>&#9;클래스
									명칭
								</p>
							</div>
							<h3>&nbsp;비활성화 아코디언</h3>
    						<div class="tutorial-component-source">
        						<textarea class="tutorial-sourcecode xml" id="codemirror1">
<button class="ds-ui-accordion" data-disabled='true'>아코디언 메뉴 #1 - 비활성화</button>
<div class="accordion-text">
	<p>
		Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, ex incidunt. At debitis
		aspernatur non perferendis. Ipsa quis, quibusdam cum assumenda, incidunt consectetur nemo omnis
		obcaecati nihil fugiat, asperiores voluptate.
	</p>
</div></textarea>
    						</div>
        					<div class="tutorial-component-description">
         						<p><span class="ds-tag-value">&nbsp;data-disabled</span>&#9;아코디언 활성화 유무 선택</p>
    						</div>
    						<h3>&nbsp;선택 상태 아코디언</h3>
    						<div class="tutorial-component-source">
        						<textarea class="tutorial-sourcecode xml" id="codemirror2">
<button class="ds-ui-accordion" data-line='3' data-select='true'>아코디언#2</button>
<div class="accordion-text">
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
		labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
		laboris nisi ut aliquip ex ea commodo consequat.
	</p>
</div></textarea>
    						</div>
        					<div class="tutorial-component-description">
        						<p><span class="ds-tag-value">&nbsp;data-line</span>&#9;아코디언 말줄임표 라인 수 지정 (기본값 : 0)</p>
         						<p><span class="ds-tag-value">&nbsp;data-select</span>&#9;아코디언 선택 상태 선택</p>
    						</div>
						</div>

						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/accordion"></iframe>
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