<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="tutorial-navi">
	<ul>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">레이아웃</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="layout">레이아웃</a></li>
				<li class="sub-navi"><a href="header">Header</a></li>
				<li class="sub-navi"><a href="navigator">Navigator</a></li>
				<li class="sub-navi"><a href="footer">Footer</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">텍스트박스</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="input">기본텍스트박스</a></li>
				<li class="sub-navi"><a href="numberinput">숫자텍스트박스</a></li>
				<li class="sub-navi"><a href="textareainput">멀티라인</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">피커</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="picker">드롭다운피커</a></li>
				<li class="sub-navi"><a href="datepicker">날짜피커</a></li>
				<li class="sub-navi"><a href="periodpicker">기간피커</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">버튼</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="button">기본 버튼</a></li>
				<li class="sub-navi"><a href="radiobutton">라디오 버튼</a></li>
				<li class="sub-navi"><a href="togglebutton">스위치 버튼</a></li>
				<li class="sub-navi"><a href="staticbutton">스태틱 버튼</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">리스트</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="cardlist">카드리스트</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">차트</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="chart">원형 차트</a></li>
				<li class="sub-navi"><a href="radarchart">방사형 차트</a></li>
				<li class="sub-navi"><a href="linechart">영역형 차트</a></li>
				<li class="sub-navi"><a href="barchart">막대 차트</a></li>
			</ul>
		</li>
		
		
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">박스</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="checkbox">체크 박스</a></li>
				<li class="sub-navi"><a href="messagebox">메세지 박스</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">슬라이더</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="rangeslider">슬라이더</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">아코디언</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="accordion">아코디언</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">데이터 테이블</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="datatable">데이터 테이블</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">뷰</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="imageview">이미지 뷰</a></li>
				<li class="sub-navi"><a href="statusview">스태틱 뷰</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">아이콘로더</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="iconloader">아이콘로더</a></li>
			</ul>
		</li>
		
		<li class="">
			<a href="tutorial_scenario">
				<div class="tutorial-navi-index">
					<div class="tutorial-navi-icon"><i class="icon far fa-edit"></i></div>
					<div class="tutorial-navi-title">시나리오</div>
					<div class="tutorial-navi-arrow"></div>
				</div>
			</a>
		</li>
		 <li class="">
			<a href="tutorial_exam">
				<div class="tutorial-navi-index">
					<div class="tutorial-navi-icon"><i class="icon far fa-edit"></i></div>
					<div class="tutorial-navi-title">에디터</div>
					<div class="tutorial-navi-arrow"></div>
				</div>
			</a>
		</li>
	</ul>
</div>