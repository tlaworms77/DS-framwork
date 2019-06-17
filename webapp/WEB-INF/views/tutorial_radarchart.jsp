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
					<h1>방사형 차트</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;데이터 소스에서 선택된 3개 이상의 항목의 수치데이터를 각 항목별의 최대 값을 기준으로</p>
						<p>&nbsp;열 개의 등급으로 나타낸 방사형 그래프로 항목 내용 변경 기능, 범례 위치를 지정 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
						<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<div class='ds-ui-chart radar' id='radar1'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
ds.ui.chart('#radar1', {
							dataSource: exampleData,
							option : {
								dsStandard : 'category',
								dsX : 'company',
								dsCalcDetail : 'mul price count'
							},
							subOption : {
				
							}
						})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-class">&nbsp;id</span>&#9; radar 숫자 형식 고유 id 지정</p>
								<br/>
								<p><span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 바인딩 될 JSON 객체명</p>
								<p><span class="ds-tag-value">&nbsp;dsStandard</span>&#9;Column별 분류 기준 선택</p>
								<p><span class="ds-tag-value">&nbsp;dsX</span>&#9;x축 기준 설정</p>
								<p><span class="ds-tag-value">&nbsp;dsCalcDetail</span>&#9;상세 비교 기준 선택</p>
								<p>&#9;횟수(Count), 곱(Mul : 'mul column1 column2'), 합(Add) 형식의 비교 조건 설정 </p>
								<br/>
								<p>&#8251;<span class="ds-tag-class">&nbsp;dsX&nbsp;</span>1차 분류 후 <span class="ds-tag-class">&nbsp;dsStandard&nbsp;</span>2차 재분류 후<span class="ds-tag-class">&nbsp; dsCalcDetail&nbsp;</span> 값으로 비교합니다.</p>
							</div>
							<h3>&nbsp;Column(Value) 값 변경</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror1'>
<div class='ds-ui-chart radar' id='radar2'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript1">
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
ds.ui.chart('#radar2', {
							dataSource: exampleData,
							option : {
								dsStandard : 'category',
								dsX : 'company',
								dsCalcDetail : 'mul price count'
							},
							subOption : {
								dsTransferNaming : option
							}
						})</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;dsTransferNaming</span>&#9;Column(Value) 값 변경 할 JSON 객체 선택</p>
							</div>
						<h3>&nbsp;범례</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror2'>
<div class='ds-ui-chart radar' id='radar3'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript2">
ds.ui.chart('#radar3', {
							dataSource: exampleData,
							option : {
								dsStandard : 'category',
								dsX : 'company',
								dsCalcDetail : 'mul price count'
							},
							subOption : {
								dsTransferNaming : option,
								dsLegendPosition : 'top'
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
								<iframe class="window2" src="component/radarchart"></iframe>
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