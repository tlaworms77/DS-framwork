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
				<div class="tutorial-content-title">
					<h1>레이아웃</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;모바일 기본 레이아웃 입니다.</p>			
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본적인 레이아웃</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
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

<div class="contents"></div>

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
</textarea>
							</div>

							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;</span>&#9;기본적인 레이아웃</p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/layout"></iframe>
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