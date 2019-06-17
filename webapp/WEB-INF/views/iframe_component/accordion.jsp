<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-header-link.js"></script>
</head>
<body class="body">

	<!-- ########## 컴포넌트 넣는 곳 ########## -->
	<div class="App">
		    <button class="ds-ui-accordion">아코디언 #1</button>
            <div class="accordion-text">
               <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque illum enim, laudantium dolore
                  vero quam vitae! Culpa iure debitis accusantium, repellendus delectus omnis accusamus eaque
                  rerum obcaecati, excepturi assumenda distinctio.
               </p>
            </div>

            <button class="ds-ui-accordion" data-disabled='true'>아코디언 #1 - 비활성화</button>
            <div class="accordion-text">
               <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, ex incidunt. At debitis
                  aspernatur non perferendis. Ipsa quis, quibusdam cum assumenda, incidunt consectetur nemo omnis
                  obcaecati nihil fugiat, asperiores voluptate.
               </p>
            </div>
            <button class="ds-ui-accordion" data-line='3' data-select='true'>아코디언 #2</button>
            <div class="accordion-text">
               <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                  labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                  laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>
</html>