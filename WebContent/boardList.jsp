<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='http://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='http://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='http://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
</head>
<body>

<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<h2>공지사항 목록</h2>
<table class="tb">
	<thead>
		<tr>
			<th>번호</th><th>제목</th><th>작성일</th>
		</tr>
	</thead>
	<tbody>
	<% for(int i=0;i<notiList.size();i++){
	Notice vo = notiList.get(i);
	%>
	<tr>
		<td><%=vo.getNotiNo() %></td>
		<td><a href="BoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></td>
		<td><%=vo.getResDate() %></td>
	</tr>
	 <% } %>
 	</tbody>
 </table>
</body>
</html>