<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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

<div class = "page_wrap">
	<div class = "form_fr">
		<form name = "frm1" action = "insertCustom.jsp" method = "post" id = "frm1" class="form_fr" onsubmit = "return joinAlert(this)">
			<table class = "frm_tb">
				<tbody>
					<tr>
						<th><label for = "id">아이디</label></th>
						<td><input type = "text" id = "id" name = "id" placeholder = "아이디 입력" pattern="[a-z0-9]{8,12}" autofocus required>
						<br><br><br>
						<button type = "button" onclick="idCheck()">아이디 중복 확인</button>
						<input type = "hidden" name = "idck" value = "no"></td>
					</tr>
					<tr>
						<th><label for = "pw">비밀번호</label></th>
						<td><input type = "password" id = "pw" name = "pw" placeholder = "비밀번호 입력" pattern = ""^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
						</td>
					</tr>
					<tr>
						<th><label for = "pw">비밀번호 확인</label></th>
						<td><input type = "password" id = "pw2" name = "pw2" placeholder = "비밀번호 입력" pattern = ""^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
						</td>
					</tr>
					<tr>
						<th><label for = "name">이름</label></th>
						<td><input type = "text" id = "name" name = "name" placeholder = "이름 입력" pattern = ""\[^(가-힣)]\" required>
						</td>
					</tr>
					<tr>
						<th><label for = "tel">연락처</label></th>
						<td><input type = "tel" id = "tel" name = "name" placehoder = "전화번호 입력 000-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required></td>
					</tr>
					<tr>
						<th><label for = "address">주소</label></th>
						<td><input type = "address" id = "addr" name = "addr" placeholder = "기본 주소 입력"></td>
						<td><input type = "address" id = "addr2" name = "addr2" placeholder = "상세 주소 입력"></td>
						<td><input type = "postcode" id = "postcode" name = "postcode" placeholder = "우편번호 입력"></td>
					</tr>
					<tr>
						<td colspan="2">
						<br><br>
							<button type="submit">회원가입</button>
							<button type="reset">취소</button>
						</td>
					</tr>
				</tbody>
			</table> 
		</form>
	</div>
</div>

<script>
function joinAlert(f){
	if(f.pw.value!=f.pw2.value){
		alert('비밀번호와 비밀번호 확인이 서로 일치하지 않습니다');
		return false;
	}
	if(f.idck.value!="yes"){
		alert('아이디 중복 확인이 필요합니다')
		return false;
	}
}
function idCheck(){
	var win = window.open("idCheck.jsp", "idCheckWin",
		"width=600, height=400");
}
</script>
<footer class = "ft">
<%@ include file="../footer.jsp" %>
</footer>
</body>
</html>