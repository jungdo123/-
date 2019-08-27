<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" 
			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" 
			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
			uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계약 해지 하겠습니까?</title>
<link rel="stylesheet" href="assets/css/main.css"/>
<style>
	#Out {text-align:center; margin: auto;}
</style>
</head>
<body>
	<br/>
	<form action = "partnerDelAction" method = "post" name = "partnerDel">
	<input type= "hidden" value = "${pt.partnerId }"  name= "partnerId"/>
	<h2 id = Out>계약 해지 하겠습니까?</h2><br/>
	<div id = "Out">
	<input type ="submit" name = "partnerOut" value = "계약해지" />
	<input type ="button" onclick = "window.close()" value = "창닫기" />
	</form>
	</div>
</body>
</html>