<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("userId");
%>
<!doctype html>
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
		
		<title>JSP 게시판</title>
	</head>
	<body>
		<nav class="navbar navbar-expand-sm navbar-light bg-light">
			<a class="navbar-brand" href="main.jsp">JSP게시판</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="main.jsp">메인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="bbs.jsp">게시판<span class="sr-only">(current)</span></a>
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">접속하기</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<%
	if (id == null) {
%>
							<a class="dropdown-item" href="login.jsp">
								로그인
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="join.jsp">회원가입</a>
<%
	} else {
%>
							<a class="dropdown-item" href="logoutAction.jsp">로그아웃</a>
<%
	}
%>
						</div>
					</li>
				</ul>
			</div>
		</nav>
		<div class="container pt-3">
			<div class="row">
				<table class="table table-striped text-center">
					<thead class="thead-light">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>안녕하세요!</td>
							<td>홍길동</td>
							<td>2018-01-01</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
			
		<!-- Optional JavaScript; -->
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
	</body>
</html>