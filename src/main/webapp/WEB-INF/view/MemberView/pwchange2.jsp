<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
					uri="http://www.springframework.org/tags/form" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#sbm").click(function(){
		/*
		if($("#pw").val()==""){
			alert("현재 비밀번호를 입력하세요.");
			$("#pw").focus();
			return false;
		}
		if($("#newPw").val()==""){
			alert("새 비밀번호를 입력하세요.");
			$("#newPw").focus();
			return false;
		}
		if($("#newPw").val() != $("#reNewPw").val()){
			alert("비밀번호확인이 일치하지 않습니다.");
			$("#reNewPw").focus();
			return false;
		}
		*/
		$("#frm").submit();
	});
});
</script>
<form:form action ="pwChangeAction" method="post" name="frm" 
		id="frm" commandName="pwModifyCommand">
	현재비밀번호 : <input type="password" name = "pw" 
	             id ="pw" /><br />
	             <form:errors path="pw"/><br />
	새 비밀번호 : <input type="password" name = "newPw" 
	             id ="newPw" /><br />
	             <form:errors path="newPw"/><br />
	새 비밀번호 확인 : <input type="password" name = "reNewPw" 
	             id ="reNewPw" /><br />
	             <form:errors path="reNewPw"/><br />
	<input type="button" value = "비밀번호변경" id ="sbm"/>
</form:form>	             
</body>
</html>