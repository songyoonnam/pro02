<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*, kr.co.myshop.vo.*" %>    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
<link rel="stylesheet" href="http://unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='http://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='http://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='http://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file = "../header.jsp" %>

<%

	Notice vo = (Notice) request.getAttribute("notice");

%>
<div class="content container" id="content">
	<h2 class="title">공지사항 등록</h2>
	<form name="frm1" id="frm1" action="InsertBoardProCtrl" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" id="title" placehoder="제목 입력" class="form-control" autofocus required></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="title" id="title" placehoder="제목 입력" class="form-control" autofocus required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="30" rows="15" name="title" id="title" placehoder="제목 입력" class="form-control" autofocus required></td>
				</tr>
			</tbody>
		</table>
	
	</form>
</div>
</body>
</html>