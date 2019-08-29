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
<form:form action = "emailChangeAction" name="frm" id="frm" commandName="emailChangeCommand">
<form:select path="emailAddr" id="emailAddr" style="width:25%" maxlength="50">
                     <option selected></option>
                     <option>naver.com</option>
                     <option>daum.net</option>s
                     <option>gmail.com</option>
                     <option>nate.com</option>    
                     </form:select>
                     <input type="submit" value="수정">
</form:form>
</body>
</html>