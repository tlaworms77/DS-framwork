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
					<h1>메세지박스</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;메시지 박스로 실행중 발생하는 문제나 진행사항을 결정할 수 있도록 팝업 형태의 창을 띄어 정보를 보여줍니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;alert 메세지박스</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<button id="btn-basic" class="ds-ui-button ds-ui-msgbox">alert 메세지박스</button>
<button id="btn-basic2" class="ds-ui-button ds-ui-msgbox">alert 메세지박스2</button>
<button id="btn-basic3" class="ds-ui-button ds-ui-msgbox">alert 메세지박스(주의사항)</button></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
$('#btn-basic').on('click', (e)=>{
	ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.').done(function() {
		alert('done');
	});
});

$('#btn-basic2').on('click', (e)=>{
	ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.','none').done(function() {
		alert('done');
 	});
});

$('#btn-basic3').on('click', (e)=>{
	ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.','ico2').done(function() {
		alert('done');
	});
});</textarea></div>
							<h3>&nbsp;confirm 메세지박스</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<button id="btn-basic4" class="ds-ui-button ds-ui-msgbox">confirm 메세지박스</button>
<button id="btn-basic5" class="ds-ui-button ds-ui-msgbox">confirm 메세지박스(주의사항)</button></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript1">
$('#btn-basic4').on('click', (e)=>{
	ds_msgbox.confirm('변경된 사항이 있습니다.\n저장하시겠습니까?')
			.yes(function() {
				alert('yes');
			}).no(function() {
			    alert('no');
			});
});

$('#btn-basic5').on('click', (e)=>{
	ds_msgbox.confirm('변경된 사항이 있습니다.\n저장하시겠습니까?','ico2')
			.yes(function() {
				alert('yes');
            }).no(function() {
				alert('no');
			});
});</textarea>
							</div>
							<h3>&nbsp;error 메세지 박스</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror2">
<button id="btn-basic6" class="ds-ui-button ds-ui-msgbox">error 메세지박스</button>
<button id="btn-basic7" class="ds-ui-button ds-ui-msgbox">error 메세지박스(자세히)</button></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript2">
$('#btn-basic6').on('click', (e)=>{
	ds_msgbox.error('거래처는 필수입력 사항입니다.')
			.done(function() {
				alert('done');
			});
});

$('#btn-basic7').on('click', (e)=>{
	ds_msgbox.error({
                    'message' : 'Error가 발생되었습니다.',
                    'error' : 'systme.invaildCaseException : [A]ds common.forms.help.'
            })
			.done(function() {
				alert('done');
			});
});</textarea>
							</div>
						</div>
						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/messagebox"></iframe>
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