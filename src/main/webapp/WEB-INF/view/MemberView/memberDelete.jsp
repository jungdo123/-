<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	if(<%=num%> == 1){$("#ppw").html("비밀번호가 틀렸습니다.")}
	$("#btn").click(function(){
		var result = confirm("정말로 탈퇴하시겠습니까?");
		if(result ==  true){
			$("#frm").submit();
		}else{
			location.href="memberModify";
		}
	});
});
</script>
</head>
<body>
<form action = "memdelAct" method ="post" name="frm" 
	id ="frm">
	비밀번호 : <input type="password" name="pw" id="pw" />
	<input type="button" value="탈퇴" id="btn"/>
	<div id="ppw" style="color:red"></div>
</form>
</body>
</html>