<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 목록</title>
<link rel="stylesheet" href="http://unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='http://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='http://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='http://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>

<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<div class="content container" id="content">
<h2>공지사항 목록</h2>
<table class="tb">
	<thead>
		<tr>
			<th>번호</th><th>제목</th><th>작성일</th>
		</tr>
	</thead>
	<tbody>
	<% for(int i=0;i<notiList.size()-i;i++){
	Notice vo = notiList.get(i);
	%>
	<tr>
		<td><%=vo.getNotiNo() %></td>
		<td><a href="GetBoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></a></td>
		<td><%=vo.getResDate() %></td>
	</tr>
	 <% } %>
 	</tbody>
 </table>
 	<div class="btn-group">
		<a href="./notice/insertBoard.jsp" class="btn btn-danger">글 등록</a>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>