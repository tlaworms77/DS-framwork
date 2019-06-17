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
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />

		<div id="tutorial-content-box">

			<div id="tutorial-contents">
				<div class="tutorial-content-title">
					<h1>시나리오</h1>
					<div class="tutorial-content-path">
						<p>component > chart</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="sub-title">
						<h1>sub_title</h1>
					</div>
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<div class="tutorial-component-source">
								<textarea class='tutorial-source-line' readonly></textarea>
								<textarea class="tutorial-sourcecode" readonly></textarea>
							</div>

							<div class="tutorial-component-description">description</div>
						</div>
						
					</div>
				</div>

			</div>

			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

		</div>



	</div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>