package com.douzone.framework.vo;

public class popup {
	private String html;
	private String Css;
	private String Js;

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public String getCss() {
		return Css;
	}

	public void setCss(String css) {
		Css = css;
	}

	public String getJs() {
		return Js;
	}

	public void setJs(String js) {
		Js = js;
	}

	public String Setting(String html, String css, String js) {
		
		String result = 
						"<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>"+
						"<!DOCTYPE html>"+
						"<html>"+
						"<head>"+
						"    <title>Insert title here</title>"+
						"    <meta http-equiv='content-type' content='text/html; charset=utf-8'>"+
						"    <meta name='viewport' content='width=device-width, initial-scale=1' />"+
						"    <link rel='stylesheet' type='text/css' href='${pageContext.servletContext.contextPath}/assets/css/default.css'>"+
						"    <link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath}/assets/css/dscomponent.css'>"+
						"    <link rel='stylesheet' href='https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css'>"+
						"    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' integrity='sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf' crossorigin='anonymous'>"+
						"    <style type='text/css'>"+
						"        * {}"+
								css +
						"    </style>"+
						"</head>"+
						"<body class='body'>"+
						"    <!-- ########## 컴포넌트 넣는 곳 ########## -->"+
						"    <div class='App'>"+
							html +
						"    </div>"+
						"    <script src='//code.jquery.com/jquery-3.3.1.min.js'></script>"+
						"    <script type='text/javascript'>"+
							js +
						"    </script>"+
						"    <script type='text/javascript' src='${pageContext.request.contextPath}/assets/js/ds.js'></script>"+
						"    <script type='text/javascript' src='${pageContext.request.contextPath}/assets/js/app.js'></script>"+
						"</body>"+
						"</html>";

		System.out.println(result);
		return result;
	}

}
