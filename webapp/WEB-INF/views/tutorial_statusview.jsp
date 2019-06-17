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
					<h1>상세 뷰</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;상세정보 뷰로 클릭 시 데이터 소스에서 입력된 No의 데이터를 보여줍니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<div class="ds-ui-statusView" data-icon='status'></div></textarea>

							</div>

							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-statusView</span>&#9;클래스
									명칭
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-icon</span>&#9;상세 뷰
									아이콘
								</p>
							</div>
							<h3>&nbsp;데이터 매핑</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<div class="ds-ui-statusView" data-icon='status'
	data-mapping='exampleData' data-no='1'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
const exampleData = [{
         no: 1,
         company: 'A',
         good: 'tv',
         count: 5,
         price: 250000,
         date: '2019-03-12',
         category: 'plus',
         desc: 'A회사 TV 개당 250000원 5대 수입',
         img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
      }]

    const statusViewOption = [{
            img: '이미지',
            col: 'header'
         },
         {
            good: '상품',
            col: 2
         },
         {
            company: '회사',
            col: 2
         },
         {
            count: '개수',
            col: 2
         },
         {
            price: '가격',
            col: 2
         },
         {
            date: '일자',
            col: 2
         },
         {
            category: '분류',
            col: 2
         },
      {
        desc: '설명',
        col: 1
      }
      ]
								</textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;data-mapping</span>&#9;데이터 매핑 될 JSON 객체명
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-no</span>&#9;JSON 객체 고유
									넘버 선택
								</p>
							</div>
						</div>
						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/statusview"></iframe>
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