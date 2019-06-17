<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/tutorial.css">
<!-- <link rel="stylesheet" type="text/css" href="./assets/css/default.css"> -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/dscomponent.css">
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
			<div id="tutorial-contents" class="editor">
				<h2>&nbsp;에디터</h2>
				<div class="editor-button-title-box">
				<div class="button-box">
					<div class="editor-button editor-code editor-html">HTML</div>
					<div class="editor-button editor-code editor-css">CSS</div>
					<div class="editor-button editor-code editor-js">JS</div>
						<div class="editor-result">Run</div>
				</div>
				
				</div>
				<div class="editor-component-source">
					<textarea name="HTML"
						class="editor-sourcecode editor-source-html notcss notjs xml"
						id="codemirror0"></textarea>
					<textarea name="CSS"
						class="editor-sourcecode editor-source-css nothtml notjs css"
						id="css0"></textarea>
					<textarea name="JS"
						class="editor-sourcecode editor-source-js nothtml notcss javascript"
						id="javascript0"></textarea>
				</div>
			</div>
		
			<div id="frame-popup">
				<div class="popup-close"></div>
				<div class="editor-phone">
				
				</div>
				<div>
				
				</div>
			</div>

			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />
		</div>



	</div>

	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/codemirror.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/htmlmixed.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/css.js"></script>
	<script type="text/javascript">
	var textarea;
	for(let i=0;i<$(".xml").length;i++){
		textarea = document.getElementById('codemirror'+i);
		var htmleditor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			lineWrapping : true,
			value : "function myScript(){return 100;}\n",
			mode : "htmlmixed",
		});
	}
	for(let i=0;i<$(".css").length;i++){
		textarea = document.getElementById('css'+i);
		var csseditor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			lineWrapping : true,
			value : "function myScript(){return 100;}\n",
			mode : "css",
		});
	}
	for(let i=0;i<$(".javascript").length;i++){
		textarea = document.getElementById('javascript'+i);
		var jseditor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			lineWrapping : true,
			value : "function myScript(){return 100;}\n",
			mode : "javascript",
		});
	}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>