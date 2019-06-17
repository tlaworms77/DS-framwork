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
					<h1>막대 차트</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;데이터 소스에서 선택 항목의 요소들의 수치데이터를 나타낸 막대 그래프로 범례 위치를 지정 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<div class="ds-ui-chart bar" id="bar1"></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
ds.ui.chart('#bar1', {
						dataSource: exampleData,
						option : {
							dsStandard : 'category',
							dsCalcDetail : 'mul price count'
						},
						subOption : {
						}
					})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-class">&nbsp;id</span>&#9; bar 숫자 형식 고유 id 지정</p>
								<br/>
								<p><span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 바인딩 될 JSON 객체명</p>
								<p><span class="ds-tag-value">&nbsp;dsStandard</span>&#9;Column별 분류 기준 선택</p>
								<p><span class="ds-tag-value">&nbsp;dsCalcDetail</span>&#9;상세 비교 기준 선택</p>
								<p>&#9;횟수(Count), 곱(Mul : 'mul column1 column2'), 합(Add) 형식의 비교 조건 설정 </p>

								<br/>
								<p>&#8251;<span class="ds-tag-class">&nbsp;dsStandard&nbsp;</span> 분류 후<span class="ds-tag-class">&nbsp; dsCalcDetail&nbsp;</span> 값으로 비교합니다.</p>
							</div>
						<h3>&nbsp;x축 기준 변경</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<div class="ds-ui-chart bar" id="bar2"></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript1">
ds.ui.chart('#bar2', {
						dataSource: exampleData,
						option : {
							dsStandard : 'category',
							dsCalcDetail : 'mul price count'
						},
						subOption : {
							dsX : 'company'
						}
					})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;dsX</span>&#9;x축 기준 설정</p>
							</div>
							<h3>&nbsp;Column(Value) 값 변경</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror2'>
<div class="ds-ui-chart bar" id="bar3"></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript2">
const option = [
				{
					category : 'etc',
					transname : '미지급'
				},
				{
					category : 'plus',
					transname : '수입'
				},
				{
					category : 'minus',
					transname : '지출'
				}
			   ]
ds.ui.chart('#bar3', {
						dataSource: exampleData,
						option : {
							dsStandard : 'category',
							dsCalcDetail : 'mul price count'
						},
						subOption : {
							dsTransferNaming : option,
							dsX : 'company'
						}
					})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;dsTransferNaming</span>&#9;Column(Value) 값 변경 할 JSON 객체 선택</p>
							</div>
							<h3>&nbsp;범례</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror3'>
<div class="ds-ui-chart bar" id="bar4"></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript3">
ds.ui.chart('#bar4', {
						dataSource: exampleData,
						option : {
							dsStandard : 'company',
							dsCalcDetail : 'mul price count'
						},
						subOption : {
							dsTransferNaming : option,
							dsX : 'category',
							dsLegendPosition: 'top'
						}
					})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;dsLegendPosition</span>&#9;사용자 범례 위치 선택 (기본값 : bottom)</p>
								<p>&nbsp; 설정값  none / bottom / top / right / left </p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/barchart"></iframe>
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