
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"/>
<script src="../script/jquery-2.1.1.min.js"></script>
<script src="../script/bootstrap.js"></script>


</head>
<% String servlet_url = "../SemiServlet.do"; %>
<body>

	<!-- 상단 메뉴바 기능 -->
	<div class="row">
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle"  data-toggle="dropdown">인사관리
					
				</a>
				<ul class="dropdown-menu">
					
				
					<li class="dropdown-submenu">
						<a href="#">조직관리</a>
						<ul class="dropdown-menu">
							<li><a href="<%= servlet_url+"?num=1" %>">사원등록</a></li>
							<li><a href="<%= servlet_url+"?num=2" %>">담당지역 설정</a></li>
							<li><a href="#">출퇴관리</a></li>
							<li><a href="#">급여관리</a></li>
							<li><a href="#">사원조회</a></li>
						</ul>
					</li>
				</ul>
			
			</div>
		
		
		</div>
		
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">집배관리
					
				</a>
				<ul class="dropdown-menu">
					<li class="dropdown-submenu">
						<a href="#">운송장등록</a>
						<ul class="dropdown-menu">
							<li><a href="#">일반운송장등록</a></li>
							<li><a href="#">배송인수자등록(받는고객)</a></li>
							<li><a href="#">운송장수정요청</a></li>
							<li><a href="#">운송장수정현황</a></li>
						</ul>
					</li>
					<li class="dropdown-submenu">
						<a href="#">집배계획</a>
						<ul class="dropdown-menu">
							<li><a href="#">집하지시출력</a></li>
							<li><a href="#">고객별접수취소</a></li>
							<li><a href="#">반송요청</a></li>
							<li><a href="#">반송확인및승인</a></li>
						</ul>
					</li>
				</ul>
			
			</div>
		
		
		</div>
		
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">고객관리
					
				</a>
				<ul class="dropdown-menu">
				
					<li class="dropdown-submenu">
						<a href="#">사고처리</a>
						<ul class="dropdown-menu">
							<li><a href="#">사고등록</a></li>
							<li><a href="#">사고현황조회</a></li>
						</ul>
					</li>
				</ul>
			
			</div>
		
		
		</div>
		
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">지점관리
					
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">지점현황지점코드번호조회(+ 차량, 담당자)</a></li>
					<li><a href="#">영업시간등록및조회</a></li>
					
					
				</ul>
			
			</div>
		
		
		</div>
		
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">추적관리
					
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">배차조회</a></li>
					<li><a href="#">화물추적</a></li>
					
				</ul>
			
			</div>
		
		
		</div>
		
		<div class="span1">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">매출관리
					
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">일일매출조회</a></li>
					<li><a href="#">월별매출조회</a></li>
					<li><a href="#">연도별매출조회</a></li>
					
				</ul>
			
			</div>
		
		
		</div>
	
	</div>
	<!-- 상단 메뉴바 기능 close-->
	<hr/>
	
	
	
	
	
	<% String url = request.getParameter("url");
	if(url == null){
	%>	
<form method="post" >

	<img src="../img/ama.jpg" width="50%" height="40%" align="middle"/>
</form>	
	<%
	}else{
	
	%>
<jsp:include page="<%= url %>" />
<%} %>
	
	
	

	




</body>
</html>