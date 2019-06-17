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
               <h1>날짜피커</h1>
               <div class="tutorial-content-path">
                  <p>&nbsp;날짜를 선택 할 수 있는 날짜 피커로 today 지정 및 한글과 영어 언어 지정, 레이블 유무를 지정 가능합니다.</p>
               </div>
            </div>
            <div class="tutorial-content-desc">
               <div class="tutorial-component">
                  <div class="tutorial-component-description-box">
                     <h3>&nbsp;기본</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror0">
<!-- default datePicker -->
<input type="text" id="date1" class="ds-ui-datepicker"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;ds-ui-datepicker</span>&#9;클래스 명칭
                        </p>
                     </div>

                     <h3>&nbsp;상태별</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror1">
<input type="text" id="date3" class="ds-ui-datepicker">
<input type="text" id="date4" class="ds-ui-datepicker required">
<input type="text" id="date5" class="ds-ui-datepicker readonly">
<input type="text" id="date6" class="ds-ui-datepicker disabled"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;required</span>&#9;필수(required)
                           <span class="ds-tag-value">&nbsp;readonly</span>&#9;읽기전용(readonly)
                           <span class="ds-tag-value">&nbsp;disabled</span>&#9;비활성화(disabled)
                        </p>
                     </div>

                     <h3>&nbsp;읽기전용 여부 설정/가져오기</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror2">
<input type="text" id="date7" class="ds-ui-datepicker">
<button id="btnSetReadonly" class="ds-ui-button">읽기전용 설정</button>
<button id="btnRemoveReadonly" class="ds-ui-button">읽기전용 해제</button>
<button id="btnReadonlyState" class="ds-ui-button">읽기전용 상태</button></textarea>
                     </div>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript0">
$("#btnSetReadonly").click(function () {
   ds.ui.datepicker('#date7').readonly(true);
});
$("#btnRemoveReadonly").click(function () {
   ds.ui.datepicker('#date7').readonly(false);
});
$("#btnReadonlyState").click(function () {
   ds_msgbox.alert(ds.ui.datepicker('#date7').readonly()).done(()=>{});
});
                        </textarea>
                     </div>
           
                     <h3>&nbsp;비활성화 여부 설정/가져오기</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror3">
<input type="text" id="date8" class="ds-ui-datepicker" value="20190617"></textarea>
                     </div>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript1">
$("#btnDisable").click(function () {
   ds.ui.datepicker('#date8').disabled(true);
});
$("#btnEnable").click(function () {
   ds.ui.datepicker('#date8').disabled(false);
});
$("#btnEnableState").click(function () {
   ds_msgbox.alert(ds.ui.datepicker('#date8').disabled()).done(()=>{});
});
                        </textarea>
                     </div>
                     <h3>&nbsp;값/텍스트 가져오기</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror4">
<input type="text" id="date9" class="ds-ui-datepicker" value="20190520"></textarea>
                     </div>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript2">
$("#btnValue").click(function () {
   ds.ui.datepicker("#date9").value();
});
$("#btnText").click(function () {
   ds.ui.datepicker("#date9").text();
});
                        </textarea>
                     </div>
                     <h3>&nbsp;값 설정하기</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror5">
<input type="text" id="date9" class="ds-ui-datepicker" value="20190520"></textarea>
                     </div>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript3">
$("#btnSetValue").click(function () {
   ds.ui.datepicker("#date10").value("20151212");
});
                        </textarea>
                     </div>
                     <h3>&nbsp;최소, 최대값 설정하기</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror6">
<input type="text" id="date11" class="ds-ui-datepicker" 
   data-ds-min="20190501" data-ds-max="20190728"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;data-ds-min</span>&#9;최소값
                           <span class="ds-tag-value">&nbsp;data-ds-max</span>&#9;최대값
                        </p>
                     </div>
                     <h3>&nbsp;오늘날짜 세팅</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror7">
<input type="text" id="date12" class="ds-ui-datepicker" data-ds-init-date="true"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;data-ds-init-date</span>&#9;오늘 날짜 선택
                        </p>
                     </div>
                     <h3>&nbsp;레이블 추가</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror8">
<input type="text" id="date13" class="ds-ui-datepicker" data-ds-label="날짜"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;data-ds-label</span>&#9;날짜 피커 레이블 유무 선택
                        </p>
                     </div>
                     <h3>&nbsp;다국어 지원</h3>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror9">
<input type="text" id="date14" class="ds-ui-datepicker" data-ds-language="en"></textarea>
                     </div>
                     <div class="tutorial-component-description">
                        <p>
                           <span class="ds-tag-value">&nbsp;data-ds-language</span>&#9;다국어 지원(기본값 : 한국어)
                           <p>설정값 en</p>
                        </p>
                     </div>
                  </div>

                  <!-- 컴포넌트 뷰어 -->
                  <div class="phone2">
                     <div>
                        <iframe class="window2" src="component/datepicker"></iframe>
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