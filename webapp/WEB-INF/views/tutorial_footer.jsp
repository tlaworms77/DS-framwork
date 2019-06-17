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
					<h1>Layout</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;기본 레이아웃 부분의 Footer로  1~3개의 내부 요소로 구성될 수 있으며 텍스트의 가로, 세로 정렬 지정이 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
						<h3>&nbsp;기본</h3>
<div class="tutorial-component-source">
    <textarea class="tutorial-sourcecode xml" id="codemirror0">
        <div class="footer">
                <div class="ds-ui-footerBox">
                 <div data-color='#00AAF0' data-direction='horizen'>
                     <p>Footer 수평 정렬</p>
                 </div>
                 <div>
                     <p>색상 미지정</p>
                     <p>정렬 미지정</p>
                 </div>
             </div>
             <div class="ds-ui-footerBox">
                 <div data-color='#E74D3A' data-direction='horizen'>
                     <p>Footer 1개 지정</p>
                     <p>색상 지정, 수평 정렬</p>
                 </div>
             </div>
             <div class="ds-ui-footerBox">
                 <div data-color='#00AAF0'>
                     <p>색상 지정</p>
                     <p>정렬 미지정</p>
                 </div>
                 <div data-color='#E74D3A'>
                     <p>색상 지정</p>
                     <p>정렬 미지정</p>
                 </div>
                 <div>
                     <p>색상 미지정</p>
                     <p>정렬 미지정</p>
                 </div>
             </div>
        </div></textarea>
    </div>
    <div class="tutorial-component-description">
        <p><span class="ds-tag-value">&nbsp;ds-ui-footerBox</span>&#9;클래스 명칭</p>
        <p><span class="ds-tag-value">&nbsp;data-color</span>&#9;Footer 색상 지정 (미지정시 Default 색상) </p>
        <p><span class="ds-tag-value">&nbsp;data-direction</span>&#9;Footer 수직, 수평 정렬 방향 지정(미지정시 수직 정렬)</p>
        <p><span class="ds-tag-value">&nbsp;Footer 내부 요소 개수</span>&#9;Footer 내부 요소의 개수는 1~3개를 권장한다.</p>
    </div>

    <h3>&nbsp;disabled Footer</h3>
    <div class="tutorial-component-source">
        <textarea class="tutorial-sourcecode xml" id="codemirror1">
            <div class="footer" data-disabled='true'>
                    <div class="ds-ui-footerBox">
                     <div>
                         <p>비활성화 Footer</p>
                     </div>
                 </div>
            </div></textarea>
        </div>
        <div class="tutorial-component-description">
            <p><span class="ds-tag-value">&nbsp;data-disabled</span>&#9;Footer 활성화 유무 선택</p>
        </div>

        <!-- ----------------------------------------------- -->

        <h3>&nbsp;Footer 데이터 바인딩</h3>
        <div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror2">
 <div class="footer">
     <div class="ds-ui-footerBox">
 	     <div>
    	     <p>A 회사 총 수입 금액</p>
         </div>
     </div>
	 <div class="ds-ui-footerBox">
          <div>
             <p>A 회사 pc 수입 횟수</p>
          </div>
    	  <div>
    	     <p>B 회사 pc 수입 개수</p>
          </div>
      </div>
</div></textarea>
</div>
        <div class="tutorial-component-source">
            <textarea class="tutorial-sourcecode javascript" id="javascript0">
       ds.ui.footer('.ds-ui-footerBox', {
	            dataSource: exampleData,
	            value: [{
	                    dsColor: '#00AAF0',
	                    dsDirection: 'horizen',
	                    dsStandard: 'A plus',
	                    dsCalcDetail: 'mul price count'
	                },
	                {
	                    dsColor: '#FFA500',
	                    dsDirection: 'vertical',
	                    dsStandard: 'A pc plus',
	                    dsCalcDetail: 'count'
	                },
	                {
	                    dsColor: '#E74D3A',
	                    dsDirection: 'horizen',
	                    dsStandard: 'B pc plus',
	                    dsCalcDetail: 'add'
	                }
	            ],
	        })</textarea>
    </div>
            <div class="tutorial-component-description">
                <p><span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 바인딩 될 json 매핑</p>
                <p><span class="ds-tag-value">&nbsp;dsStandard</span>&#9;Column별 value 선택 가능 (제약조건 : 동일한 항목
                    	의 값은 지정 불가능합니다.)</p>
                <p><span class="ds-tag-value">&nbsp;dsCalcDetail</span>&#9;dsStandard 선택 후 횟수(Count),
                    곱(Mul : 'mul column column'), 합(Add) 형식의 데이터 바인딩 선택</p>
                    
                <p>&#8251; 데이터소스에서 항목을 직접 선택하여 데이터를 산출하고 산출될 데이터의 내용을 직접 지정할 수 있다. Value 객체는 ds-ui-footerBox 클래스의 자식 class의  개수만큼 지정할 수 있다.</p>
            </div>
						</div>
						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/footer"></iframe>
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